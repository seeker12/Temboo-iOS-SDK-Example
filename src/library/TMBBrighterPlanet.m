/*!
 * @TMBBrighterPlanet.m
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

#import "TMBBrighterPlanet.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Purchase Choreo.
 */
@implementation TMBBrighterPlanet_Purchase_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cost input for this Choreo.
	*(optional, decimal) The cost associated with the purchase.
	 */
	-(void)setCost:(NSString*)Cost {
		[super setInput:@"Cost" toValue:Cost];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the purchase in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Industry input for this Choreo.
	*(optional, integer) An industry code (NAICS CODE) corresponding to the industry to return results for. For example, the id for Audio and Video Equipment Manufacturing is 334310.
	 */
	-(void)setIndustry:(NSString*)Industry {
		[super setInput:@"Industry" toValue:Industry];
	}

	/*!
	 * Set the value of the MerchantCategory input for this Choreo.
	*(optional, string) The id for a merchant category.
	 */
	-(void)setMerchantCategory:(NSString*)MerchantCategory {
		[super setInput:@"MerchantCategory" toValue:MerchantCategory];
	}

	/*!
	 * Set the value of the Merchant input for this Choreo.
	*(optional, integer) An id corresponding to a merchant that you want to return data for.
	 */
	-(void)setMerchant:(NSString*)Merchant {
		[super setInput:@"Merchant" toValue:Merchant];
	}

	/*!
	 * Set the value of the PurchaseAmount input for this Choreo.
	*(optional, decimal) The purchase amount.
	 */
	-(void)setPurchaseAmount:(NSString*)PurchaseAmount {
		[super setInput:@"PurchaseAmount" toValue:PurchaseAmount];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SicIndustry input for this Choreo.
	*(optional, integer) A Sic Industry id (i.e. 0111 is the code for Wheat, 0112 is the code for Rice, etc).
	 */
	-(void)setSicIndustry:(NSString*)SicIndustry {
		[super setInput:@"SicIndustry" toValue:SicIndustry];
	}

	/*!
	 * Set the value of the Tax input for this Choreo.
	*(optional, decimal) The tax amount for the purchase.
	 */
	-(void)setTax:(NSString*)Tax {
		[super setInput:@"Tax" toValue:Tax];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Purchase Choreo.
 */
@implementation TMBBrighterPlanet_Purchase_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns lifecycle emissions for any good or service. 
 */
@implementation TMBBrighterPlanet_Purchase

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Purchase Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Purchase"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Purchase_ResultSet *results = [[[TMBBrighterPlanet_Purchase_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Purchase Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Purchase_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Purchase_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Pet Choreo.
 */
@implementation TMBBrighterPlanet_Pet_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Acquisition input for this Choreo.
	*(optional, string) Enter date the pet was acquired.
	 */
	-(void)setAcquisition:(NSString*)Acquisition {
		[super setInput:@"Acquisition" toValue:Acquisition];
	}

	/*!
	 * Set the value of the Breed input for this Choreo.
	*(optional, string) Enter a cat, dog, or horse breed.
	 */
	-(void)setBreed:(NSString*)Breed {
		[super setInput:@"Breed" toValue:Breed];
	}

	/*!
	 * Set the value of the Gender input for this Choreo.
	*(optional, string) Enter cat, dog, or horse gender.
	 */
	-(void)setGender:(NSString*)Gender {
		[super setInput:@"Gender" toValue:Gender];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Retirement input for this Choreo.
	*(optional, string) Enter date you no longer have the pet.
	 */
	-(void)setRetirement:(NSString*)Retirement {
		[super setInput:@"Retirement" toValue:Retirement];
	}

	/*!
	 * Set the value of the Species input for this Choreo.
	*(optional, string) Enter the species type (e.g. bird, cat, dog, ferret, fish).
	 */
	-(void)setSpecies:(NSString*)Species {
		[super setInput:@"Species" toValue:Species];
	}

	/*!
	 * Set the value of the Weight input for this Choreo.
	*(optional, decimal) Enter pet weight in kilograms.
	 */
	-(void)setWeight:(NSString*)Weight {
		[super setInput:@"Weight" toValue:Weight];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Pet Choreo.
 */
@implementation TMBBrighterPlanet_Pet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns lifecycle food production and veterinary care emissions modeling for domestic animals.
 */
@implementation TMBBrighterPlanet_Pet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Pet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Pet"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Pet_ResultSet *results = [[[TMBBrighterPlanet_Pet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Pet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Pet_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Pet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Diet Choreo.
 */
@implementation TMBBrighterPlanet_Diet_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DietClass input for this Choreo.
	*(optional, string) Enter the type of diet. Acceptable inputs: standard, vegetarian, vegan.
	 */
	-(void)setDietClass:(NSString*)DietClass {
		[super setInput:@"DietClass" toValue:DietClass];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) End date od diet in YYYY-MM-DD format. Defaults to 2013-01-01 when none specified.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Size input for this Choreo.
	*(required, integer) Enter the number of calories consumed per day. See documentation below for a set of national averages for reference.
	 */
	-(void)setSize:(NSString*)Size {
		[super setInput:@"Size" toValue:Size];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) Start date of diet in YYYY-MM-DD format. Defaults to 2012-01-01 when none specified.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Diet Choreo.
 */
@implementation TMBBrighterPlanet_Diet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of an individual's yearly food consumption.
 */
@implementation TMBBrighterPlanet_Diet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Diet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Diet"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Diet_ResultSet *results = [[[TMBBrighterPlanet_Diet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Diet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Diet_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Diet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReferenceData Choreo.
 */
@implementation TMBBrighterPlanet_GetReferenceData_Inputs

	/*!
	 * Set the value of the Resource input for this Choreo.
	*(required, string) The name of the reference data resource you want to retrieve (i.e. airports, airlines, etc). Resource names are formatted using plural, lowercase, and underscores (i.e. automobile_makes).
	 */
	-(void)setResource:(NSString*)Resource {
		[super setInput:@"Resource" toValue:Resource];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The desired response format. Accepted formats are: csv, xml, and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferenceData Choreo.
 */
@implementation TMBBrighterPlanet_GetReferenceData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a wide variety of reference data sets provided by Brighter Planet.
 */
@implementation TMBBrighterPlanet_GetReferenceData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_GetReferenceData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/GetReferenceData"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_GetReferenceData_ResultSet *results = [[[TMBBrighterPlanet_GetReferenceData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReferenceData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_GetReferenceData_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_GetReferenceData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AutomobileTrip Choreo.
 */
@implementation TMBBrighterPlanet_AutomobileTrip_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AutomobileFuel input for this Choreo.
	*(optional, string) Fuel used by automobile (e.g. regular gasoline).
	 */
	-(void)setAutomobileFuel:(NSString*)AutomobileFuel {
		[super setInput:@"AutomobileFuel" toValue:AutomobileFuel];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) ISO code of the country. Defaults to 3166.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) Automobile trip date in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Destination input for this Choreo.
	*(optional, string) Enter the name of a destination.
	 */
	-(void)setDestination:(NSString*)Destination {
		[super setInput:@"Destination" toValue:Destination];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, decimal) Distance traveled in kilometres.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, decimal) Duration of trip in total seconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the FuelEfficiency input for this Choreo.
	*(optional, decimal) The automobile's fuel efficiency in kilometres per litre.
	 */
	-(void)setFuelEfficiency:(NSString*)FuelEfficiency {
		[super setInput:@"FuelEfficiency" toValue:FuelEfficiency];
	}

	/*!
	 * Set the value of the FuelUse input for this Choreo.
	*(optional, decimal) Amount of fuel used in litres.
	 */
	-(void)setFuelUse:(NSString*)FuelUse {
		[super setInput:@"FuelUse" toValue:FuelUse];
	}

	/*!
	 * Set the value of the Hybridity input for this Choreo.
	*(optional, boolean) Enter whether the automobile is a hybrid.
	 */
	-(void)setHybridity:(NSString*)Hybridity {
		[super setInput:@"Hybridity" toValue:Hybridity];
	}

	/*!
	 * Set the value of the Make input for this Choreo.
	*(optional, string) Automobile make (e.g. Honda).
	 */
	-(void)setMake:(NSString*)Make {
		[super setInput:@"Make" toValue:Make];
	}

	/*!
	 * Set the value of the Model input for this Choreo.
	*(optional, string) Model of automobile (e.g. Civic, Accord).
	 */
	-(void)setModel:(NSString*)Model {
		[super setInput:@"Model" toValue:Model];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SizeClass input for this Choreo.
	*(optional, string) Automobile size class (e.g. midsize car, large van).
	 */
	-(void)setSizeClass:(NSString*)SizeClass {
		[super setInput:@"SizeClass" toValue:SizeClass];
	}

	/*!
	 * Set the value of the Speed input for this Choreo.
	*(optional, decimal) Enter the speed during the trip in kilometres per hour.
	 */
	-(void)setSpeed:(NSString*)Speed {
		[super setInput:@"Speed" toValue:Speed];
	}

	/*!
	 * Set the value of the Urbanity input for this Choreo.
	*(optional, boolean) Enter whether the trip is in an urban area.
	 */
	-(void)setUrbanity:(NSString*)Urbanity {
		[super setInput:@"Urbanity" toValue:Urbanity];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) Year that automobile was manufactured.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AutomobileTrip Choreo.
 */
@implementation TMBBrighterPlanet_AutomobileTrip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of driving an automobile.
 */
@implementation TMBBrighterPlanet_AutomobileTrip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_AutomobileTrip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/AutomobileTrip"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_AutomobileTrip_ResultSet *results = [[[TMBBrighterPlanet_AutomobileTrip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AutomobileTrip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_AutomobileTrip_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_AutomobileTrip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Residence Choreo.
 */
@implementation TMBBrighterPlanet_Residence_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Acquisition input for this Choreo.
	*(optional, date) Date of acquisition in YYYY-MM-DD format.
	 */
	-(void)setAcquisition:(NSString*)Acquisition {
		[super setInput:@"Acquisition" toValue:Acquisition];
	}

	/*!
	 * Set the value of the AirConditionerUse input for this Choreo.
	*(optional, string) The frequency of air conditioner use. Accepted values are: "Not used at all", "Turned on just about all summer", "Turned on only a few days or nights when really needed", or "Turned on quite a bit"
	 */
	-(void)setAirConditionerUse:(NSString*)AirConditionerUse {
		[super setInput:@"AirConditionerUse" toValue:AirConditionerUse];
	}

	/*!
	 * Set the value of the AnnualCoalVolumeEstimate input for this Choreo.
	*(optional, decimal) An estimate for amount of coal used annually.
	 */
	-(void)setAnnualCoalVolumeEstimate:(NSString*)AnnualCoalVolumeEstimate {
		[super setInput:@"AnnualCoalVolumeEstimate" toValue:AnnualCoalVolumeEstimate];
	}

	/*!
	 * Set the value of the AnnualFuelOilCost input for this Choreo.
	*(optional, decimal) Annual cost of oil fuel in dollars.
	 */
	-(void)setAnnualFuelOilCost:(NSString*)AnnualFuelOilCost {
		[super setInput:@"AnnualFuelOilCost" toValue:AnnualFuelOilCost];
	}

	/*!
	 * Set the value of the AnnualFuelOilVolumeEstimate input for this Choreo.
	*(optional, decimal) An estimate for the volume oil used annually.
	 */
	-(void)setAnnualFuelOilVolumeEstimate:(NSString*)AnnualFuelOilVolumeEstimate {
		[super setInput:@"AnnualFuelOilVolumeEstimate" toValue:AnnualFuelOilVolumeEstimate];
	}

	/*!
	 * Set the value of the AnnualPropaneCost input for this Choreo.
	*(optional, decimal) The annual cost of propane annually in dollars.
	 */
	-(void)setAnnualPropaneCost:(NSString*)AnnualPropaneCost {
		[super setInput:@"AnnualPropaneCost" toValue:AnnualPropaneCost];
	}

	/*!
	 * Set the value of the AnnualPropaneVolumeEstimate input for this Choreo.
	*(optional, decimal) An estimate of the amount of propane used annually in litres.
	 */
	-(void)setAnnualPropaneVolumeEstimate:(NSString*)AnnualPropaneVolumeEstimate {
		[super setInput:@"AnnualPropaneVolumeEstimate" toValue:AnnualPropaneVolumeEstimate];
	}

	/*!
	 * Set the value of the AnnualWoodVolumeEstimate input for this Choreo.
	*(optional, decimal) An estimate of the amount of wood used for heating annually (in Joulses).
	 */
	-(void)setAnnualWoodVolumeEstimate:(NSString*)AnnualWoodVolumeEstimate {
		[super setInput:@"AnnualWoodVolumeEstimate" toValue:AnnualWoodVolumeEstimate];
	}

	/*!
	 * Set the value of the Bathrooms input for this Choreo.
	*(optional, decimal) The amount of bathrooms in the residence.
	 */
	-(void)setBathrooms:(NSString*)Bathrooms {
		[super setInput:@"Bathrooms" toValue:Bathrooms];
	}

	/*!
	 * Set the value of the Bedrooms input for this Choreo.
	*(optional, decimal) The number of bedrooms in the residence.
	 */
	-(void)setBedrooms:(NSString*)Bedrooms {
		[super setInput:@"Bedrooms" toValue:Bedrooms];
	}

	/*!
	 * Set the value of the ClothesMachineUse input for this Choreo.
	*(optional, string) The number laundry loads per week. Valid values are: "1 load or less each week", "10 to 15 loads", "2 to 4 loads", "5 to 9 loads", "More than 15 loads"
	 */
	-(void)setClothesMachineUse:(NSString*)ClothesMachineUse {
		[super setInput:@"ClothesMachineUse" toValue:ClothesMachineUse];
	}

	/*!
	 * Set the value of the ConstructionYear input for this Choreo.
	*(optional, integer) The year the residence was constructed.
	 */
	-(void)setConstructionYear:(NSString*)ConstructionYear {
		[super setInput:@"ConstructionYear" toValue:ConstructionYear];
	}

	/*!
	 * Set the value of the DishwasherUse input for this Choreo.
	*(optional, string) Number of times the dishwasher is used per week. Valid values: "2 or 3 times a week", "4 to 6 times a week", "At least once each day", "Less than once each week", "Once each week".
	 */
	-(void)setDishwasherUse:(NSString*)DishwasherUse {
		[super setInput:@"DishwasherUse" toValue:DishwasherUse];
	}

	/*!
	 * Set the value of the Floors input for this Choreo.
	*(optional, integer) The number of floors.
	 */
	-(void)setFloors:(NSString*)Floors {
		[super setInput:@"Floors" toValue:Floors];
	}

	/*!
	 * Set the value of the FloorspaceEstimate input for this Choreo.
	*(optional, decimal) An estimate of the amount of floorspace that the residence has.
	 */
	-(void)setFloorspaceEstimate:(NSString*)FloorspaceEstimate {
		[super setInput:@"FloorspaceEstimate" toValue:FloorspaceEstimate];
	}

	/*!
	 * Set the value of the FreezerCount input for this Choreo.
	*(optional, integer) The number of freezers in the residence.
	 */
	-(void)setFreezerCount:(NSString*)FreezerCount {
		[super setInput:@"FreezerCount" toValue:FreezerCount];
	}

	/*!
	 * Set the value of the FullBathrooms input for this Choreo.
	*(optional, integer) The number of full bathrooms in the residence.
	 */
	-(void)setFullBathrooms:(NSString*)FullBathrooms {
		[super setInput:@"FullBathrooms" toValue:FullBathrooms];
	}

	/*!
	 * Set the value of the GreenElectricty input for this Choreo.
	*(optional, decimal) The amount green electricity that the residence uses.
	 */
	-(void)setGreenElectricty:(NSString*)GreenElectricty {
		[super setInput:@"GreenElectricty" toValue:GreenElectricty];
	}

	/*!
	 * Set the value of the HalfBathrooms input for this Choreo.
	*(optional, integer) The number of half bathrooms in the residence.
	 */
	-(void)setHalfBathrooms:(NSString*)HalfBathrooms {
		[super setInput:@"HalfBathrooms" toValue:HalfBathrooms];
	}

	/*!
	 * Set the value of the LightingEfficiency input for this Choreo.
	*(optional, decimal) A numeric value representing the lighting efficiency of the residence.
	 */
	-(void)setLightingEfficiency:(NSString*)LightingEfficiency {
		[super setInput:@"LightingEfficiency" toValue:LightingEfficiency];
	}

	/*!
	 * Set the value of the MonthlyElectricityCost input for this Choreo.
	*(optional, decimal) The montly cost of electricity for the residence.
	 */
	-(void)setMonthlyElectricityCost:(NSString*)MonthlyElectricityCost {
		[super setInput:@"MonthlyElectricityCost" toValue:MonthlyElectricityCost];
	}

	/*!
	 * Set the value of the MonthlyElectricityUseEstimate input for this Choreo.
	*(optional, decimal) An estimate for the amount of electricity used monthly in kilowatt hours.
	 */
	-(void)setMonthlyElectricityUseEstimate:(NSString*)MonthlyElectricityUseEstimate {
		[super setInput:@"MonthlyElectricityUseEstimate" toValue:MonthlyElectricityUseEstimate];
	}

	/*!
	 * Set the value of the MonthlyNaturalGasCost input for this Choreo.
	*(optional, decimal) The monthly cost of natural gas for the residence.
	 */
	-(void)setMonthlyNaturalGasCost:(NSString*)MonthlyNaturalGasCost {
		[super setInput:@"MonthlyNaturalGasCost" toValue:MonthlyNaturalGasCost];
	}

	/*!
	 * Set the value of the MonthlyNaturalGasVolumeEstimate input for this Choreo.
	*(optional, decimal) An estimate of the amount of natural gas used monthly.
	 */
	-(void)setMonthlyNaturalGasVolumeEstimate:(NSString*)MonthlyNaturalGasVolumeEstimate {
		[super setInput:@"MonthlyNaturalGasVolumeEstimate" toValue:MonthlyNaturalGasVolumeEstimate];
	}

	/*!
	 * Set the value of the Occupation input for this Choreo.
	*(optional, decimal) Refers to the percentage of time a residence is occupied during a year. Defaults to 0.937.
	 */
	-(void)setOccupation:(NSString*)Occupation {
		[super setInput:@"Occupation" toValue:Occupation];
	}

	/*!
	 * Set the value of the Ownership input for this Choreo.
	*(optional, boolean) Indicates whether the residence is owned or rented. Set to "true" if you own the residence.
	 */
	-(void)setOwnership:(NSString*)Ownership {
		[super setInput:@"Ownership" toValue:Ownership];
	}

	/*!
	 * Set the value of the RefrigeratorCount input for this Choreo.
	*(optional, integer) The number of refrigerators in the residence.
	 */
	-(void)setRefrigeratorCount:(NSString*)RefrigeratorCount {
		[super setInput:@"RefrigeratorCount" toValue:RefrigeratorCount];
	}

	/*!
	 * Set the value of the ResidentialClass input for this Choreo.
	*(optional, string) Valid values: "Apartment in a building with 5 or more units", "Apartment in a house or a building with 2-4 units", "Mobile home", "Single-family attached house", or "Single-family detached house".
	 */
	-(void)setResidentialClass:(NSString*)ResidentialClass {
		[super setInput:@"ResidentialClass" toValue:ResidentialClass];
	}

	/*!
	 * Set the value of the Residents input for this Choreo.
	*(optional, integer) The number of people living in the residence.
	 */
	-(void)setResidents:(NSString*)Residents {
		[super setInput:@"Residents" toValue:Residents];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Retirement input for this Choreo.
	*(optional, date) A date of retirement.
	 */
	-(void)setRetirement:(NSString*)Retirement {
		[super setInput:@"Retirement" toValue:Retirement];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}

	/*!
	 * Set the value of the Urbanity input for this Choreo.
	*(optional, string) Can be set to: City, Rural, Suburbs, or Town.
	 */
	-(void)setUrbanity:(NSString*)Urbanity {
		[super setInput:@"Urbanity" toValue:Urbanity];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) The postal code of the residence.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Residence Choreo.
 */
@implementation TMBBrighterPlanet_Residence_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the annual carbon footprint of a home.
 */
@implementation TMBBrighterPlanet_Residence

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Residence Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Residence"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Residence_ResultSet *results = [[[TMBBrighterPlanet_Residence_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Residence Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Residence_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Residence_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FuelPurchase Choreo.
 */
@implementation TMBBrighterPlanet_FuelPurchase_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cost input for this Choreo.
	*(optional, decimal) The cost of the fuel purchase.
	 */
	-(void)setCost:(NSString*)Cost {
		[super setInput:@"Cost" toValue:Cost];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the fuel purchase in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the FuelType input for this Choreo.
	*(optional, string) The fuel type purchases (i.e. Asphalt and Road Oil, Aviation Gasoline, Commercial Coal, Commercial Natural Gas, or Motor Gasoline)
	 */
	-(void)setFuelType:(NSString*)FuelType {
		[super setInput:@"FuelType" toValue:FuelType];
	}

	/*!
	 * Set the value of the PADD input for this Choreo.
	*(optional, string) A code for the Petroleum administration for defense districts (1A, 1B, 1C, 2, or 3).
	 */
	-(void)setPADD:(NSString*)PADD {
		[super setInput:@"PADD" toValue:PADD];
	}

	/*!
	 * Set the value of the Price input for this Choreo.
	*(optional, string) The price of the fuel.
	 */
	-(void)setPrice:(NSString*)Price {
		[super setInput:@"Price" toValue:Price];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) A postal abbreviation for the state where the fuel was purchased.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}

	/*!
	 * Set the value of the Volume input for this Choreo.
	*(optional, decimal) The amount of fuel purchased.
	 */
	-(void)setVolume:(NSString*)Volume {
		[super setInput:@"Volume" toValue:Volume];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) The postal code for the area where the fuel was purchased.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FuelPurchase Choreo.
 */
@implementation TMBBrighterPlanet_FuelPurchase_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon emissions from using a wide variety of fuel types.
 */
@implementation TMBBrighterPlanet_FuelPurchase

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_FuelPurchase Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/FuelPurchase"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_FuelPurchase_ResultSet *results = [[[TMBBrighterPlanet_FuelPurchase_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FuelPurchase Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_FuelPurchase_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_FuelPurchase_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ElectricityUse Choreo.
 */
@implementation TMBBrighterPlanet_ElectricityUse_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) An iso_3166 country code.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the electricity use in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Energy input for this Choreo.
	*(optional, decimal) The amount of engery in kilowatt hours.
	 */
	-(void)setEnergy:(NSString*)Energy {
		[super setInput:@"Energy" toValue:Energy];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) A postal abbreviation for the state to return electricity information for.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) The postal code for the area to retrieve electricity information for.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ElectricityUse Choreo.
 */
@implementation TMBBrighterPlanet_ElectricityUse_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of using electricity from the US public grid.
 */
@implementation TMBBrighterPlanet_ElectricityUse

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_ElectricityUse Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/ElectricityUse"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_ElectricityUse_ResultSet *results = [[[TMBBrighterPlanet_ElectricityUse_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ElectricityUse Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_ElectricityUse_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_ElectricityUse_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Flight Choreo.
 */
@implementation TMBBrighterPlanet_Flight_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Aircraft input for this Choreo.
	*(optional, string) The ICAO code associated with the aircraft.
	 */
	-(void)setAircraft:(NSString*)Aircraft {
		[super setInput:@"Aircraft" toValue:Aircraft];
	}

	/*!
	 * Set the value of the Airline input for this Choreo.
	*(optional, string) The name of the airline used (i.e. Continental, Delta, etc).
	 */
	-(void)setAirline:(NSString*)Airline {
		[super setInput:@"Airline" toValue:Airline];
	}

	/*!
	 * Set the value of the Compliance input for this Choreo.
	*(optional, string) Comply with one or more protocols:  Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), ISO 14064-1 (iso), and The Climate Registry (tcr).
	 */
	-(void)setCompliance:(NSString*)Compliance {
		[super setInput:@"Compliance" toValue:Compliance];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the trip in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the DestinationAirport input for this Choreo.
	*(optional, string) The airport code for the destination (i.e. LGA, JFK, etc.).
	 */
	-(void)setDestinationAirport:(NSString*)DestinationAirport {
		[super setInput:@"DestinationAirport" toValue:DestinationAirport];
	}

	/*!
	 * Set the value of the DistanceClass input for this Choreo.
	*(optional, string) The distance class associated it the air travel (i.e. long haul, short haul).
	 */
	-(void)setDistanceClass:(NSString*)DistanceClass {
		[super setInput:@"DistanceClass" toValue:DistanceClass];
	}

	/*!
	 * Set the value of the DistanceEstimate input for this Choreo.
	*(optional, decimal) A estimate of the distance of the travel in kilometres.
	 */
	-(void)setDistanceEstimate:(NSString*)DistanceEstimate {
		[super setInput:@"DistanceEstimate" toValue:DistanceEstimate];
	}

	/*!
	 * Set the value of the Fuel input for this Choreo.
	*(optional, string) The type of fuel used in the aircraft (i.e. Aviation Gasoline, Biodiesel).
	 */
	-(void)setFuel:(NSString*)Fuel {
		[super setInput:@"Fuel" toValue:Fuel];
	}

	/*!
	 * Set the value of the OriginAirport input for this Choreo.
	*(optional, string) The airport code for the origin (i.e. LGA, JFK, etc.).
	 */
	-(void)setOriginAirport:(NSString*)OriginAirport {
		[super setInput:@"OriginAirport" toValue:OriginAirport];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Seats input for this Choreo.
	*(optional, integer) The number of seats.
	 */
	-(void)setSeats:(NSString*)Seats {
		[super setInput:@"Seats" toValue:Seats];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}

	/*!
	 * Set the value of the Trips input for this Choreo.
	*(optional, string) The number of trips to calculate information for.
	 */
	-(void)setTrips:(NSString*)Trips {
		[super setInput:@"Trips" toValue:Trips];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Flight Choreo.
 */
@implementation TMBBrighterPlanet_Flight_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of a passenger's air travel.
 */
@implementation TMBBrighterPlanet_Flight

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Flight Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Flight"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Flight_ResultSet *results = [[[TMBBrighterPlanet_Flight_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Flight Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Flight_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Flight_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Shipment Choreo.
 */
@implementation TMBBrighterPlanet_Shipment_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Carrier input for this Choreo.
	*(optional, string) The carrier used for the shipment. Valid values are: FedEx, UPS, or USPS.
	 */
	-(void)setCarrier:(NSString*)Carrier {
		[super setInput:@"Carrier" toValue:Carrier];
	}

	/*!
	 * Set the value of the DestinationZipCode input for this Choreo.
	*(optional, string) The postal code of the destination address.
	 */
	-(void)setDestinationZipCode:(NSString*)DestinationZipCode {
		[super setInput:@"DestinationZipCode" toValue:DestinationZipCode];
	}

	/*!
	 * Set the value of the Destination input for this Choreo.
	*(optional, string) The destination of the shipment.
	 */
	-(void)setDestination:(NSString*)Destination {
		[super setInput:@"Destination" toValue:Destination];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, decimal) The distance from the shipment origin to the shipment destination.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Mode input for this Choreo.
	*(optional, string) The mode or method of shipment. Valid values are: air, courier, or ground.
	 */
	-(void)setMode:(NSString*)Mode {
		[super setInput:@"Mode" toValue:Mode];
	}

	/*!
	 * Set the value of the OriginZipCode input for this Choreo.
	*(optional, string) The postal code of the origin address.
	 */
	-(void)setOriginZipCode:(NSString*)OriginZipCode {
		[super setInput:@"OriginZipCode" toValue:OriginZipCode];
	}

	/*!
	 * Set the value of the Origin input for this Choreo.
	*(optional, string) The origin of the shipment.
	 */
	-(void)setOrigin:(NSString*)Origin {
		[super setInput:@"Origin" toValue:Origin];
	}

	/*!
	 * Set the value of the PackageCount input for this Choreo.
	*(optional, integer) The number of packages in the shipment.
	 */
	-(void)setPackageCount:(NSString*)PackageCount {
		[super setInput:@"PackageCount" toValue:PackageCount];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Weight input for this Choreo.
	*(optional, decimal) The weight of the shipment in kilograms.
	 */
	-(void)setWeight:(NSString*)Weight {
		[super setInput:@"Weight" toValue:Weight];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Shipment Choreo.
 */
@implementation TMBBrighterPlanet_Shipment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of shipping packages.
 */
@implementation TMBBrighterPlanet_Shipment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Shipment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Shipment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Shipment_ResultSet *results = [[[TMBBrighterPlanet_Shipment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Shipment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Shipment_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Shipment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Meeting Choreo.
 */
@implementation TMBBrighterPlanet_Meeting_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Area input for this Choreo.
	*(optional, integer) Area of event venue in square meters.
	 */
	-(void)setArea:(NSString*)Area {
		[super setInput:@"Area" toValue:Area];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) Date of event in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, integer) Event duration in total seconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Two-letter postal abbreviation for the state in which the meeting takes place (e.g. NY).
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, integer) Five digit zip code in which the meeting takes place.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Meeting Choreo.
 */
@implementation TMBBrighterPlanet_Meeting_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns facility operations emissions analysis for corporate and cultural events.
 */
@implementation TMBBrighterPlanet_Meeting

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Meeting Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Meeting"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Meeting_ResultSet *results = [[[TMBBrighterPlanet_Meeting_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Meeting Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Meeting_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Meeting_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the BusTrip Choreo.
 */
@implementation TMBBrighterPlanet_BusTrip_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BusClass input for this Choreo.
	*(optional, string) The bus class for the trip (i.e. city transit, regional coach).
	 */
	-(void)setBusClass:(NSString*)BusClass {
		[super setInput:@"BusClass" toValue:BusClass];
	}

	/*!
	 * Set the value of the Compliance input for this Choreo.
	*(optional, string) Comply with one or more protocols: Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), and ISO 14064-1 (iso), and The Climate Registry (tcr).
	 */
	-(void)setCompliance:(NSString*)Compliance {
		[super setInput:@"Compliance" toValue:Compliance];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the bus trip in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, decimal) The distance of the bus trip in kilometres.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, decimal) The duration of the bus trip in seconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BusTrip Choreo.
 */
@implementation TMBBrighterPlanet_BusTrip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of passenger bus travel.
 */
@implementation TMBBrighterPlanet_BusTrip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_BusTrip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/BusTrip"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_BusTrip_ResultSet *results = [[[TMBBrighterPlanet_BusTrip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the BusTrip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_BusTrip_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_BusTrip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RailTrip Choreo.
 */
@implementation TMBBrighterPlanet_RailTrip_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Compliance input for this Choreo.
	*(optional, string) Comply with one or more protocols:  Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), ISO 14064-1 (iso), and The Climate Registry (tcr).
	 */
	-(void)setCompliance:(NSString*)Compliance {
		[super setInput:@"Compliance" toValue:Compliance];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) A country code associated with the rail trip (in ISO 3166 format).
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the rail trip in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Destination input for this Choreo.
	*(optional, string) The destination of the rail trip.
	 */
	-(void)setDestination:(NSString*)Destination {
		[super setInput:@"Destination" toValue:Destination];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, decimal) The distance of the rail trip in kilometres.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, decimal) The duration of the rail trip in seconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the Origin input for this Choreo.
	*(optional, string) The origin of the rail trip.
	 */
	-(void)setOrigin:(NSString*)Origin {
		[super setInput:@"Origin" toValue:Origin];
	}

	/*!
	 * Set the value of the RailClass input for this Choreo.
	*(optional, string) The rail class associated with the rail trip (i.e. commuter, heavy, highspeed, intercity, light).
	 */
	-(void)setRailClass:(NSString*)RailClass {
		[super setInput:@"RailClass" toValue:RailClass];
	}

	/*!
	 * Set the value of the RailCompany input for this Choreo.
	*(optional, string) The rail company associated with the rail trip (i.e. AMTRAK).
	 */
	-(void)setRailCompany:(NSString*)RailCompany {
		[super setInput:@"RailCompany" toValue:RailCompany];
	}

	/*!
	 * Set the value of the RailTraction input for this Choreo.
	*(optional, string) The rail traction associated with the rail trip (i.e. diesel, electric).
	 */
	-(void)setRailTraction:(NSString*)RailTraction {
		[super setInput:@"RailTraction" toValue:RailTraction];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RailTrip Choreo.
 */
@implementation TMBBrighterPlanet_RailTrip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the carbon footprint of a passenger's train travel.
 */
@implementation TMBBrighterPlanet_RailTrip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_RailTrip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/RailTrip"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_RailTrip_ResultSet *results = [[[TMBBrighterPlanet_RailTrip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RailTrip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_RailTrip_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_RailTrip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Automobile Choreo.
 */
@implementation TMBBrighterPlanet_Automobile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Acquisition input for this Choreo.
	*(optional, string) Date automobile was acquired in YYYY-MM-DD format.
	 */
	-(void)setAcquisition:(NSString*)Acquisition {
		[super setInput:@"Acquisition" toValue:Acquisition];
	}

	/*!
	 * Set the value of the AnnualDistance input for this Choreo.
	*(optional, decimal) Annual distance traveled in kilometres.
	 */
	-(void)setAnnualDistance:(NSString*)AnnualDistance {
		[super setInput:@"AnnualDistance" toValue:AnnualDistance];
	}

	/*!
	 * Set the value of the AnnualFuelUse input for this Choreo.
	*(optional, decimal) Total fuel used in one year in litres.
	 */
	-(void)setAnnualFuelUse:(NSString*)AnnualFuelUse {
		[super setInput:@"AnnualFuelUse" toValue:AnnualFuelUse];
	}

	/*!
	 * Set the value of the AutomobileFuel input for this Choreo.
	*(optional, string) Fuel used by automobile (e.g. regular gasoline).
	 */
	-(void)setAutomobileFuel:(NSString*)AutomobileFuel {
		[super setInput:@"AutomobileFuel" toValue:AutomobileFuel];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) ISO code of the country. Defaults to 3166.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the DailyDistance input for this Choreo.
	*(optional, decimal) Daily distance traveled on average in kilometres.
	 */
	-(void)setDailyDistance:(NSString*)DailyDistance {
		[super setInput:@"DailyDistance" toValue:DailyDistance];
	}

	/*!
	 * Set the value of the DailyDuration input for this Choreo.
	*(optional, integer) Average amount of time used daily in seconds.
	 */
	-(void)setDailyDuration:(NSString*)DailyDuration {
		[super setInput:@"DailyDuration" toValue:DailyDuration];
	}

	/*!
	 * Set the value of the FuelEfficiency input for this Choreo.
	*(optional, decimal) The automobile's fuel efficiency in kilometres per litre.
	 */
	-(void)setFuelEfficiency:(NSString*)FuelEfficiency {
		[super setInput:@"FuelEfficiency" toValue:FuelEfficiency];
	}

	/*!
	 * Set the value of the FuelUse input for this Choreo.
	*(optional, decimal) Amount of fuel used in litres.
	 */
	-(void)setFuelUse:(NSString*)FuelUse {
		[super setInput:@"FuelUse" toValue:FuelUse];
	}

	/*!
	 * Set the value of the Hybridity input for this Choreo.
	*(optional, boolean) Enter whether the automobile is a hybrid.
	 */
	-(void)setHybridity:(NSString*)Hybridity {
		[super setInput:@"Hybridity" toValue:Hybridity];
	}

	/*!
	 * Set the value of the Make input for this Choreo.
	*(optional, string) Automobile make (e.g. Honda).
	 */
	-(void)setMake:(NSString*)Make {
		[super setInput:@"Make" toValue:Make];
	}

	/*!
	 * Set the value of the Model input for this Choreo.
	*(optional, string) Model of automobile (e.g. Civic, Accord).
	 */
	-(void)setModel:(NSString*)Model {
		[super setInput:@"Model" toValue:Model];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Retirement input for this Choreo.
	*(optional, string) Date automobile is retired from use in YYYY-MM-DD format.
	 */
	-(void)setRetirement:(NSString*)Retirement {
		[super setInput:@"Retirement" toValue:Retirement];
	}

	/*!
	 * Set the value of the SizeClass input for this Choreo.
	*(optional, string) Automobile size class (e.g. midsize car, large van).
	 */
	-(void)setSizeClass:(NSString*)SizeClass {
		[super setInput:@"SizeClass" toValue:SizeClass];
	}

	/*!
	 * Set the value of the Speed input for this Choreo.
	*(optional, decimal) Enter average speed when in use in kilometres per hour.
	 */
	-(void)setSpeed:(NSString*)Speed {
		[super setInput:@"Speed" toValue:Speed];
	}

	/*!
	 * Set the value of the Urbanity input for this Choreo.
	*(optional, boolean) Enter whether the trip is in an urban area.
	 */
	-(void)setUrbanity:(NSString*)Urbanity {
		[super setInput:@"Urbanity" toValue:Urbanity];
	}

	/*!
	 * Set the value of the WeeklyDistance input for this Choreo.
	*(optional, integer) Enter average weekly distance automobile travels in kilometres.
	 */
	-(void)setWeeklyDistance:(NSString*)WeeklyDistance {
		[super setInput:@"WeeklyDistance" toValue:WeeklyDistance];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) Year that automobile was manufactured.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Automobile Choreo.
 */
@implementation TMBBrighterPlanet_Automobile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns greenhouse gas modeling for passenger vehicles operated over periods of time.
 */
@implementation TMBBrighterPlanet_Automobile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Automobile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Automobile"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Automobile_ResultSet *results = [[[TMBBrighterPlanet_Automobile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Automobile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Automobile_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Automobile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Lodging Choreo.
 */
@implementation TMBBrighterPlanet_Lodging_Inputs

	/*!
	 * Set the value of the ACCoverage input for this Choreo.
	*(optional, decimal) A numeric value representing the AC coverage of the lodging establishment.
	 */
	-(void)setACCoverage:(NSString*)ACCoverage {
		[super setInput:@"ACCoverage" toValue:ACCoverage];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Brighter Planet.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The city of the establishment.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Compliance input for this Choreo.
	*(optional, string) Comply with one or more protocols:  Greenhouse Gas Protocol Scope 3 (ghg_protocol_scope_3), ISO 14064-1 (iso), and The Climate Registry (tcr).
	 */
	-(void)setCompliance:(NSString*)Compliance {
		[super setInput:@"Compliance" toValue:Compliance];
	}

	/*!
	 * Set the value of the ConstructionYear input for this Choreo.
	*(optional, integer) The year that the establishment was constructed.
	 */
	-(void)setConstructionYear:(NSString*)ConstructionYear {
		[super setInput:@"ConstructionYear" toValue:ConstructionYear];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) The ISO 3166 country code associated with the establishment.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The date of the stay at the establishment in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, integer) The amount of time spent at the establishment in seconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the Floors input for this Choreo.
	*(optional, integer) The number of floors at the establishment.
	 */
	-(void)setFloors:(NSString*)Floors {
		[super setInput:@"Floors" toValue:Floors];
	}

	/*!
	 * Set the value of the HotTubs input for this Choreo.
	*(optional, integer) The number of hot tubs that the establishment has.
	 */
	-(void)setHotTubs:(NSString*)HotTubs {
		[super setInput:@"HotTubs" toValue:HotTubs];
	}

	/*!
	 * Set the value of the IndoorPools input for this Choreo.
	*(optional, integer) The number of indoor pools that the establishment has.
	 */
	-(void)setIndoorPools:(NSString*)IndoorPools {
		[super setInput:@"IndoorPools" toValue:IndoorPools];
	}

	/*!
	 * Set the value of the LodgingClass input for this Choreo.
	*(optional, string) The lodging class (i.e. Hotel, Inn, or Motel).
	 */
	-(void)setLodgingClass:(NSString*)LodgingClass {
		[super setInput:@"LodgingClass" toValue:LodgingClass];
	}

	/*!
	 * Set the value of the OutdoorPools input for this Choreo.
	*(optional, integer) The number of outdoor pools that the establishment has.
	 */
	-(void)setOutdoorPools:(NSString*)OutdoorPools {
		[super setInput:@"OutdoorPools" toValue:OutdoorPools];
	}

	/*!
	 * Set the value of the PropertyRooms input for this Choreo.
	*(optional, integer) The number of rooms on the property.
	 */
	-(void)setPropertyRooms:(NSString*)PropertyRooms {
		[super setInput:@"PropertyRooms" toValue:PropertyRooms];
	}

	/*!
	 * Set the value of the Property input for this Choreo.
	*(optional, integer) A property id (or northstart_id) associated with the establishment.
	 */
	-(void)setProperty:(NSString*)Property {
		[super setInput:@"Property" toValue:Property];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify your desired response format. Accepted values are xml and json (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Rooms input for this Choreo.
	*(optional, integer) The number of rooms.
	 */
	-(void)setRooms:(NSString*)Rooms {
		[super setInput:@"Rooms" toValue:Rooms];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The postal abbreviation for the state that the establishment is in.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Timeframe input for this Choreo.
	*(optional, string) A date range specified in the following format: 2008-01-01/2008-07-09
	 */
	-(void)setTimeframe:(NSString*)Timeframe {
		[super setInput:@"Timeframe" toValue:Timeframe];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) The postal code associated with the establishment.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Lodging Choreo.
 */
@implementation TMBBrighterPlanet_Lodging_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Brighter Planet.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the the footprint of a guest's hotel stay.
 */
@implementation TMBBrighterPlanet_Lodging

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBrighterPlanet_Lodging Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/BrighterPlanet/Lodging"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBrighterPlanet_Lodging_ResultSet *results = [[[TMBBrighterPlanet_Lodging_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Lodging Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBrighterPlanet_Lodging_Inputs*)newInputSet {
		return [[[TMBBrighterPlanet_Lodging_Inputs alloc] init] autorelease];
	}
@end
	