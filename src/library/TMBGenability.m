/*!
 * @TMBGenability.m
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

#import "TMBGenability.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetZipCodeDetails Choreo.
 */
@implementation TMBGenability_TariffData_GetZipCodeDetails_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) A zip code to search with.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetZipCodeDetails Choreo.
 */
@implementation TMBGenability_TariffData_GetZipCodeDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the details for a given zip code.
 */
@implementation TMBGenability_TariffData_GetZipCodeDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetZipCodeDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetZipCodeDetails"] autorelease];
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
		TMBGenability_TariffData_GetZipCodeDetails_ResultSet *results = [[[TMBGenability_TariffData_GetZipCodeDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetZipCodeDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetZipCodeDetails_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetZipCodeDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeOfUseGroup Choreo.
 */
@implementation TMBGenability_TariffData_GetTimeOfUseGroup_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the EndsWith input for this Choreo.
	*(optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setEndsWith:(NSString*)EndsWith {
		[super setInput:@"EndsWith" toValue:EndsWith];
	}

	/*!
	 * Set the value of the IsRegex input for this Choreo.
	*(optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
	 */
	-(void)setIsRegex:(NSString*)IsRegex {
		[super setInput:@"IsRegex" toValue:IsRegex];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(conditional, integer) Used to retrieve a TOU Group for a specific LSE.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the SearchOn input for this Choreo.
	*(optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
	 */
	-(void)setSearchOn:(NSString*)SearchOn {
		[super setInput:@"SearchOn" toValue:SearchOn];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the SortOn input for this Choreo.
	*(optional, string) Comma separated list of fields to sort on.
	 */
	-(void)setSortOn:(NSString*)SortOn {
		[super setInput:@"SortOn" toValue:SortOn];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartsWith input for this Choreo.
	*(optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setStartsWith:(NSString*)StartsWith {
		[super setInput:@"StartsWith" toValue:StartsWith];
	}

	/*!
	 * Set the value of the TOUGroupID input for this Choreo.
	*(conditional, integer) Used to retrieve a TOU Group by its ID (required when LSE ID is provided).
	 */
	-(void)setTOUGroupID:(NSString*)TOUGroupID {
		[super setInput:@"TOUGroupID" toValue:TOUGroupID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeOfUseGroup Choreo.
 */
@implementation TMBGenability_TariffData_GetTimeOfUseGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a particular Time of Use Group with a given touGroupId and lseId.
 */
@implementation TMBGenability_TariffData_GetTimeOfUseGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetTimeOfUseGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetTimeOfUseGroup"] autorelease];
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
		TMBGenability_TariffData_GetTimeOfUseGroup_ResultSet *results = [[[TMBGenability_TariffData_GetTimeOfUseGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTimeOfUseGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetTimeOfUseGroup_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetTimeOfUseGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTerritoryIDFromZipcode Choreo.
 */
@implementation TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(required, string) An LSE ID.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(required, string) A Genability tariff ID.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}

	/*!
	 * Set the value of the Zipcode input for this Choreo.
	*(required, integer) A zip code for which a territory ID is to be retrieved.
	 */
	-(void)setZipcode:(NSString*)Zipcode {
		[super setInput:@"Zipcode" toValue:Zipcode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTerritoryIDFromZipcode Choreo.
 */
@implementation TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a territoryID, by using a consumer's zipcode, LSE ID and master tariff ID.
 */
@implementation TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/PricingAndCalc/GetTerritoryIDFromZipcode"] autorelease];
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
		TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_ResultSet *results = [[[TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTerritoryIDFromZipcode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_Inputs*)newInputSet {
		return [[[TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTariffs Choreo.
 */
@implementation TMBGenability_TariffData_GetTariffs_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(optional, string) The unique ID of the Account to find tariffs for. Values passed in will override those from the Account.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the CustomerClasses input for this Choreo.
	*(optional, string) Returns only these customer classes. Valid values are: RESIDENTIAL, GENERAL.
	 */
	-(void)setCustomerClasses:(NSString*)CustomerClasses {
		[super setInput:@"CustomerClasses" toValue:CustomerClasses];
	}

	/*!
	 * Set the value of the EffectiveOn input for this Choreo.
	*(optional, date) Returns only tariffs that are effective on this date.
	 */
	-(void)setEffectiveOn:(NSString*)EffectiveOn {
		[super setInput:@"EffectiveOn" toValue:EffectiveOn];
	}

	/*!
	 * Set the value of the EndsWith input for this Choreo.
	*(optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setEndsWith:(NSString*)EndsWith {
		[super setInput:@"EndsWith" toValue:EndsWith];
	}

	/*!
	 * Set the value of the FromDateTime input for this Choreo.
	*(optional, date) Returns only tariffs that are effective on or after this date.
	 */
	-(void)setFromDateTime:(NSString*)FromDateTime {
		[super setInput:@"FromDateTime" toValue:FromDateTime];
	}

	/*!
	 * Set the value of the IsRegex input for this Choreo.
	*(optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
	 */
	-(void)setIsRegex:(NSString*)IsRegex {
		[super setInput:@"IsRegex" toValue:IsRegex];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(optional, integer) Filter tariffs for a specific LSE.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the PopulateProperties input for this Choreo.
	*(optional, boolean) Set to "true" to populate the properties for the returned Tariffs.
	 */
	-(void)setPopulateProperties:(NSString*)PopulateProperties {
		[super setInput:@"PopulateProperties" toValue:PopulateProperties];
	}

	/*!
	 * Set the value of the PopulateRates input for this Choreo.
	*(optional, boolean) Set to "true" to populate the rate details for the returned Tariffs.
	 */
	-(void)setPopulateRates:(NSString*)PopulateRates {
		[super setInput:@"PopulateRates" toValue:PopulateRates];
	}

	/*!
	 * Set the value of the SearchOn input for this Choreo.
	*(optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
	 */
	-(void)setSearchOn:(NSString*)SearchOn {
		[super setInput:@"SearchOn" toValue:SearchOn];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the SortOn input for this Choreo.
	*(optional, string) Comma separated list of fields to sort on.
	 */
	-(void)setSortOn:(NSString*)SortOn {
		[super setInput:@"SortOn" toValue:SortOn];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartsWith input for this Choreo.
	*(optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setStartsWith:(NSString*)StartsWith {
		[super setInput:@"StartsWith" toValue:StartsWith];
	}

	/*!
	 * Set the value of the TariffTypes input for this Choreo.
	*(optional, string) Returns only these tariff types. Valid values are: DEFAULT, ALTERNATIVE, OPTIONAL_EXTRA, RIDER.
	 */
	-(void)setTariffTypes:(NSString*)TariffTypes {
		[super setInput:@"TariffTypes" toValue:TariffTypes];
	}

	/*!
	 * Set the value of the ToDateTime input for this Choreo.
	*(optional, date) Returns only tariffs that are effective on or before this date.
	 */
	-(void)setToDateTime:(NSString*)ToDateTime {
		[super setInput:@"ToDateTime" toValue:ToDateTime];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) Return tariffs for a given zip or post code.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTariffs Choreo.
 */
@implementation TMBGenability_TariffData_GetTariffs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Tariff objects based a specified search criteria.
 */
@implementation TMBGenability_TariffData_GetTariffs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetTariffs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetTariffs"] autorelease];
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
		TMBGenability_TariffData_GetTariffs_ResultSet *results = [[[TMBGenability_TariffData_GetTariffs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTariffs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetTariffs_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetTariffs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMetricsForZipCode Choreo.
 */
@implementation TMBGenability_TariffData_GetMetricsForZipCode_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, string) The zip code for the place object you want to return.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMetricsForZipCode Choreo.
 */
@implementation TMBGenability_TariffData_GetMetricsForZipCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a place object and associated facts and metrics with a given zip code.
 */
@implementation TMBGenability_TariffData_GetMetricsForZipCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetMetricsForZipCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetMetricsForZipCode"] autorelease];
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
		TMBGenability_TariffData_GetMetricsForZipCode_ResultSet *results = [[[TMBGenability_TariffData_GetMetricsForZipCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMetricsForZipCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetMetricsForZipCode_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetMetricsForZipCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTariffPrice Choreo.
 */
@implementation TMBGenability_PricingAndCalc_GetTariffPrice_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(optional, string) The Genability ID for an account. This is optional if MasterTariffID is set.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the ConsumptionAmount input for this Choreo.
	*(optional, decimal) Specify a monthly consumption in kWh. By default the highest banded level of consumption is used.
	 */
	-(void)setConsumptionAmount:(NSString*)ConsumptionAmount {
		[super setInput:@"ConsumptionAmount" toValue:ConsumptionAmount];
	}

	/*!
	 * Set the value of the DemandAmount input for this Choreo.
	*(optional, decimal) Specify a monthly demand in kWh. By default the highest banded level of demand is used.
	 */
	-(void)setDemandAmount:(NSString*)DemandAmount {
		[super setInput:@"DemandAmount" toValue:DemandAmount];
	}

	/*!
	 * Set the value of the FromDateTime input for this Choreo.
	*(required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
	 */
	-(void)setFromDateTime:(NSString*)FromDateTime {
		[super setInput:@"FromDateTime" toValue:FromDateTime];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(optional, string) A Genability tariff ID. This variable is not required, if AccountID is set.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to be returned. Defailt is set to: 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to start to display results from. If unspecified, the first page of results will be returned.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the TerritoryID input for this Choreo.
	*(optional, string) Return rate changes for the specified Territory.
	 */
	-(void)setTerritoryID:(NSString*)TerritoryID {
		[super setInput:@"TerritoryID" toValue:TerritoryID];
	}

	/*!
	 * Set the value of the ToDateTime input for this Choreo.
	*(optional, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
	 */
	-(void)setToDateTime:(NSString*)ToDateTime {
		[super setInput:@"ToDateTime" toValue:ToDateTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTariffPrice Choreo.
 */
@implementation TMBGenability_PricingAndCalc_GetTariffPrice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve summarized rates of a specified electricity tariff, in addition to changes in rates over a specified time span.
 */
@implementation TMBGenability_PricingAndCalc_GetTariffPrice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_PricingAndCalc_GetTariffPrice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/PricingAndCalc/GetTariffPrice"] autorelease];
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
		TMBGenability_PricingAndCalc_GetTariffPrice_ResultSet *results = [[[TMBGenability_PricingAndCalc_GetTariffPrice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTariffPrice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_PricingAndCalc_GetTariffPrice_Inputs*)newInputSet {
		return [[[TMBGenability_PricingAndCalc_GetTariffPrice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPropertyKey Choreo.
 */
@implementation TMBGenability_TariffData_GetPropertyKey_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(required, string) The key name for the property key you want to return.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPropertyKey Choreo.
 */
@implementation TMBGenability_TariffData_GetPropertyKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns an individual Property Key using a given key name.
 */
@implementation TMBGenability_TariffData_GetPropertyKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetPropertyKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetPropertyKey"] autorelease];
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
		TMBGenability_TariffData_GetPropertyKey_ResultSet *results = [[[TMBGenability_TariffData_GetPropertyKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPropertyKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetPropertyKey_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetPropertyKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RunNewPriceCalculation Choreo.
 */
@implementation TMBGenability_PricingAndCalc_RunNewPriceCalculation_Inputs

	/*!
	 * Set the value of the POSTData input for this Choreo.
	*(required, json) The POST payload in JSON format.
	 */
	-(void)setPOSTData:(NSString*)POSTData {
		[super setInput:@"POSTData" toValue:POSTData];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(required, string) A Genability tariff ID.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunNewPriceCalculation Choreo.
 */
@implementation TMBGenability_PricingAndCalc_RunNewPriceCalculation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Calculate electricity costs based on a POSTed calculation criteria. 
 */
@implementation TMBGenability_PricingAndCalc_RunNewPriceCalculation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_PricingAndCalc_RunNewPriceCalculation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/PricingAndCalc/RunNewPriceCalculation"] autorelease];
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
		TMBGenability_PricingAndCalc_RunNewPriceCalculation_ResultSet *results = [[[TMBGenability_PricingAndCalc_RunNewPriceCalculation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RunNewPriceCalculation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_PricingAndCalc_RunNewPriceCalculation_Inputs*)newInputSet {
		return [[[TMBGenability_PricingAndCalc_RunNewPriceCalculation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPropertyKeys Choreo.
 */
@implementation TMBGenability_TariffData_GetPropertyKeys_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(optional, string) Filters the result so that only Properties that belong to this EntityID are returned. When specified, EntityType must also be specified.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the EntityType input for this Choreo.
	*(optional, string) Filters the result so that only Properties that belong to this EntityType are returned. When specified, EntityID must also be specified.
	 */
	-(void)setEntityType:(NSString*)EntityType {
		[super setInput:@"EntityType" toValue:EntityType];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPropertyKeys Choreo.
 */
@implementation TMBGenability_TariffData_GetPropertyKeys_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Property Keys based on a specified search criteria.
 */
@implementation TMBGenability_TariffData_GetPropertyKeys

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetPropertyKeys Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetPropertyKeys"] autorelease];
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
		TMBGenability_TariffData_GetPropertyKeys_ResultSet *results = [[[TMBGenability_TariffData_GetPropertyKeys_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPropertyKeys Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetPropertyKeys_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetPropertyKeys_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTariff Choreo.
 */
@implementation TMBGenability_TariffData_GetTariff_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(required, integer) The master tariff id. This can be retrieved in the output of the GetTariffs Choreo.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}

	/*!
	 * Set the value of the PopulateProperties input for this Choreo.
	*(optional, boolean) Set to "true" to populate the properties for the returned Tariffs.
	 */
	-(void)setPopulateProperties:(NSString*)PopulateProperties {
		[super setInput:@"PopulateProperties" toValue:PopulateProperties];
	}

	/*!
	 * Set the value of the PopulateRates input for this Choreo.
	*(optional, boolean) Set to "true" to populate the rate details for the returned Tariffs.
	 */
	-(void)setPopulateRates:(NSString*)PopulateRates {
		[super setInput:@"PopulateRates" toValue:PopulateRates];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTariff Choreo.
 */
@implementation TMBGenability_TariffData_GetTariff_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns an individual Tariff object with a given id.
 */
@implementation TMBGenability_TariffData_GetTariff

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetTariff Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetTariff"] autorelease];
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
		TMBGenability_TariffData_GetTariff_ResultSet *results = [[[TMBGenability_TariffData_GetTariff_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTariff Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetTariff_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetTariff_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTerritory Choreo.
 */
@implementation TMBGenability_TariffData_GetTerritory_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the PopulateItems input for this Choreo.
	*(optional, boolean) If set to "true", returns a list of territory items for each territory in the result set.
	 */
	-(void)setPopulateItems:(NSString*)PopulateItems {
		[super setInput:@"PopulateItems" toValue:PopulateItems];
	}

	/*!
	 * Set the value of the TerritoryID input for this Choreo.
	*(required, integer) The id for the territory to retrieve. This can be retrieved in the output of the GetTerritories Choreo.
	 */
	-(void)setTerritoryID:(NSString*)TerritoryID {
		[super setInput:@"TerritoryID" toValue:TerritoryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTerritory Choreo.
 */
@implementation TMBGenability_TariffData_GetTerritory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a an individual Territory objects with a given id.
 */
@implementation TMBGenability_TariffData_GetTerritory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetTerritory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetTerritory"] autorelease];
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
		TMBGenability_TariffData_GetTerritory_ResultSet *results = [[[TMBGenability_TariffData_GetTerritory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTerritory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetTerritory_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetTerritory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLoadServingEntity Choreo.
 */
@implementation TMBGenability_TariffData_GetLoadServingEntity_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(required, integer) The id of a particular Load Serving Entity to return.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoadServingEntity Choreo.
 */
@implementation TMBGenability_TariffData_GetLoadServingEntity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a Load Serving Entity with a given ID.
 */
@implementation TMBGenability_TariffData_GetLoadServingEntity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetLoadServingEntity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetLoadServingEntity"] autorelease];
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
		TMBGenability_TariffData_GetLoadServingEntity_ResultSet *results = [[[TMBGenability_TariffData_GetLoadServingEntity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLoadServingEntity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetLoadServingEntity_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetLoadServingEntity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLoadServingEntities Choreo.
 */
@implementation TMBGenability_TariffData_GetLoadServingEntities_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(optional, string) The unique ID of the Account to find LSEs for. When passed in, the search will look for a territoryId on the Account and use that to find all LSEs that provide service within that territory.
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the EndsWith input for this Choreo.
	*(optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setEndsWith:(NSString*)EndsWith {
		[super setInput:@"EndsWith" toValue:EndsWith];
	}

	/*!
	 * Set the value of the IsRegex input for this Choreo.
	*(optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
	 */
	-(void)setIsRegex:(NSString*)IsRegex {
		[super setInput:@"IsRegex" toValue:IsRegex];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the SearchOn input for this Choreo.
	*(optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
	 */
	-(void)setSearchOn:(NSString*)SearchOn {
		[super setInput:@"SearchOn" toValue:SearchOn];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the SortOn input for this Choreo.
	*(optional, string) Comma separated list of fields to sort on.
	 */
	-(void)setSortOn:(NSString*)SortOn {
		[super setInput:@"SortOn" toValue:SortOn];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartsWith input for this Choreo.
	*(optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setStartsWith:(NSString*)StartsWith {
		[super setInput:@"StartsWith" toValue:StartsWith];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoadServingEntities Choreo.
 */
@implementation TMBGenability_TariffData_GetLoadServingEntities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of LoadServingEntity objects based a specified search criteria.
 */
@implementation TMBGenability_TariffData_GetLoadServingEntities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetLoadServingEntities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetLoadServingEntities"] autorelease];
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
		TMBGenability_TariffData_GetLoadServingEntities_ResultSet *results = [[[TMBGenability_TariffData_GetLoadServingEntities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLoadServingEntities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetLoadServingEntities_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetLoadServingEntities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPrice Choreo.
 */
@implementation TMBGenability_PricingAndCalc_GetPrice_Inputs

	/*!
	 * Set the value of the AccountID input for this Choreo.
	*(optional, string) A Genability ID for an account. More info on Accounts is available here: http://developer.genability.com/documentation/api-reference/account-api/account
	 */
	-(void)setAccountID:(NSString*)AccountID {
		[super setInput:@"AccountID" toValue:AccountID];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the ConsumptionAmount input for this Choreo.
	*(optional, decimal) Specify a monthly consumption in kWh. By default the highest banded level of consumption is used.
	 */
	-(void)setConsumptionAmount:(NSString*)ConsumptionAmount {
		[super setInput:@"ConsumptionAmount" toValue:ConsumptionAmount];
	}

	/*!
	 * Set the value of the DemandAmount input for this Choreo.
	*(optional, decimal) Specify a monthly demand in kWh. By default the highest banded level of demand is used.
	 */
	-(void)setDemandAmount:(NSString*)DemandAmount {
		[super setInput:@"DemandAmount" toValue:DemandAmount];
	}

	/*!
	 * Set the value of the FromDateTime input for this Choreo.
	*(required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
	 */
	-(void)setFromDateTime:(NSString*)FromDateTime {
		[super setInput:@"FromDateTime" toValue:FromDateTime];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(optional, string) A Genability tariff ID. Not required, if AccountID is specified.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to be returned. Defailt is set to: 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to start to display results from. If unspecified, the first page of results will be returned.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The Genability ID of a profile. This ID can be passed instead of consumptionAmount or demandAmount.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ProviderAccountID input for this Choreo.
	*(optional, string) A unique ID for an Account. Same as AccountId, however your unique ID can be used instead of the Genability Account ID.
	 */
	-(void)setProviderAccountID:(NSString*)ProviderAccountID {
		[super setInput:@"ProviderAccountID" toValue:ProviderAccountID];
	}

	/*!
	 * Set the value of the TerritoryID input for this Choreo.
	*(optional, string) Return rate changes for the specified Territory.
	 */
	-(void)setTerritoryID:(NSString*)TerritoryID {
		[super setInput:@"TerritoryID" toValue:TerritoryID];
	}

	/*!
	 * Set the value of the ToDateTime input for this Choreo.
	*(optional, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
	 */
	-(void)setToDateTime:(NSString*)ToDateTime {
		[super setInput:@"ToDateTime" toValue:ToDateTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPrice Choreo.
 */
@implementation TMBGenability_PricingAndCalc_GetPrice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the consumption price of a specified Tariff over a given date range.
 */
@implementation TMBGenability_PricingAndCalc_GetPrice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_PricingAndCalc_GetPrice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/PricingAndCalc/GetPrice"] autorelease];
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
		TMBGenability_PricingAndCalc_GetPrice_ResultSet *results = [[[TMBGenability_PricingAndCalc_GetPrice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPrice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_PricingAndCalc_GetPrice_Inputs*)newInputSet {
		return [[[TMBGenability_PricingAndCalc_GetPrice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CalculateTariffInputMetaData Choreo.
 */
@implementation TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the BillingPeriod input for this Choreo.
	*(optional, string) Specify whether results retireved should be based on a billing period, or not.  Default is set to: false.
	 */
	-(void)setBillingPeriod:(NSString*)BillingPeriod {
		[super setInput:@"BillingPeriod" toValue:BillingPeriod];
	}

	/*!
	 * Set the value of the CityLimits input for this Choreo.
	*(optional, string) Specify whether electricity pricing information should be restricted to city limits, or not.  Example input value: Inside.
	 */
	-(void)setCityLimits:(NSString*)CityLimits {
		[super setInput:@"CityLimits" toValue:CityLimits];
	}

	/*!
	 * Set the value of the ConnectionType input for this Choreo.
	*(optional, string) The connection type.  For example: Primary.
	 */
	-(void)setConnectionType:(NSString*)ConnectionType {
		[super setInput:@"ConnectionType" toValue:ConnectionType];
	}

	/*!
	 * Set the value of the FromDateTime input for this Choreo.
	*(required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
	 */
	-(void)setFromDateTime:(NSString*)FromDateTime {
		[super setInput:@"FromDateTime" toValue:FromDateTime];
	}

	/*!
	 * Set the value of the GroupBy input for this Choreo.
	*(optional, string) Specify how calculation details are displayed.  For example retrieved details can be grouped by month, or year. Options include: Daily, Weekly, Month, Year.
	 */
	-(void)setGroupBy:(NSString*)GroupBy {
		[super setInput:@"GroupBy" toValue:GroupBy];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(optional, string) An applicability value.  If an error is returned, indicating the need for an extra applicability parameter, use this variable to set the parameter name.  For example: territoryID.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}

	/*!
	 * Set the value of the KeyValue input for this Choreo.
	*(conditional, string) The value for the specified KeyName variable. For example if KeyName is set to territoryID, you could provide 3385 for the KeyValue input.
	 */
	-(void)setKeyValue:(NSString*)KeyValue {
		[super setInput:@"KeyValue" toValue:KeyValue];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(required, string) A Genability tariff ID.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}

	/*!
	 * Set the value of the ToDateTime input for this Choreo.
	*(required, string) The date and time of the requested start of the price query. Must be in ISO 8601 format.  Example: 2012-06-12T00:00:00.0-0700
	 */
	-(void)setToDateTime:(NSString*)ToDateTime {
		[super setInput:@"ToDateTime" toValue:ToDateTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CalculateTariffInputMetaData Choreo.
 */
@implementation TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve inputs required to run a calculation for the specified tariff, within a specified period of time.
 */
@implementation TMBGenability_PricingAndCalc_CalculateTariffInputMetaData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_PricingAndCalc_CalculateTariffInputMetaData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/PricingAndCalc/CalculateTariffInputMetaData"] autorelease];
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
		TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_ResultSet *results = [[[TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CalculateTariffInputMetaData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_Inputs*)newInputSet {
		return [[[TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeOfUseGroupIntervals Choreo.
 */
@implementation TMBGenability_TariffData_GetTimeOfUseGroupIntervals_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the FromDateTime input for this Choreo.
	*(optional, date) The starting date and time of the requested Intervals (in ISO 8601 format). Defaults to current date if not specified.
	 */
	-(void)setFromDateTime:(NSString*)FromDateTime {
		[super setInput:@"FromDateTime" toValue:FromDateTime];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(required, integer) Used to retrieve a TOU Group for a specific LSE.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the TOUGroupID input for this Choreo.
	*(required, integer) Used to retrieve a TOU Group by its ID.
	 */
	-(void)setTOUGroupID:(NSString*)TOUGroupID {
		[super setInput:@"TOUGroupID" toValue:TOUGroupID];
	}

	/*!
	 * Set the value of the ToDateTime input for this Choreo.
	*(optional, date) The ending date and time of the requested Intervals (in ISO 8601 format). If not specified, defaults to one week ahead of the current date.
	 */
	-(void)setToDateTime:(NSString*)ToDateTime {
		[super setInput:@"ToDateTime" toValue:ToDateTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeOfUseGroupIntervals Choreo.
 */
@implementation TMBGenability_TariffData_GetTimeOfUseGroupIntervals_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all the Intervals for a Time of Use Group within a given date range.
 */
@implementation TMBGenability_TariffData_GetTimeOfUseGroupIntervals

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetTimeOfUseGroupIntervals Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetTimeOfUseGroupIntervals"] autorelease];
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
		TMBGenability_TariffData_GetTimeOfUseGroupIntervals_ResultSet *results = [[[TMBGenability_TariffData_GetTimeOfUseGroupIntervals_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTimeOfUseGroupIntervals Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetTimeOfUseGroupIntervals_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetTimeOfUseGroupIntervals_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTerritories Choreo.
 */
@implementation TMBGenability_TariffData_GetTerritories_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the ContainsItemType input for this Choreo.
	*(optional, string) Filters the result set to include a particular type of territory. Valid values are: CITY, ZIPCODE, STATE, COUNTY.
	 */
	-(void)setContainsItemType:(NSString*)ContainsItemType {
		[super setInput:@"ContainsItemType" toValue:ContainsItemType];
	}

	/*!
	 * Set the value of the ContainsItemValue input for this Choreo.
	*(optional, string) Used in combination with the ContainsItemType value. Filters the Types by this value.
	 */
	-(void)setContainsItemValue:(NSString*)ContainsItemValue {
		[super setInput:@"ContainsItemValue" toValue:ContainsItemValue];
	}

	/*!
	 * Set the value of the EndsWith input for this Choreo.
	*(optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setEndsWith:(NSString*)EndsWith {
		[super setInput:@"EndsWith" toValue:EndsWith];
	}

	/*!
	 * Set the value of the IsRegex input for this Choreo.
	*(optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
	 */
	-(void)setIsRegex:(NSString*)IsRegex {
		[super setInput:@"IsRegex" toValue:IsRegex];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(optional, integer) Filters the result set to only include territories within this LSE ID.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}

	/*!
	 * Set the value of the MasterTariffID input for this Choreo.
	*(optional, integer) For tariffs with prices varying by geographic location, this will return the list of those territories covered by this tariff.
	 */
	-(void)setMasterTariffID:(NSString*)MasterTariffID {
		[super setInput:@"MasterTariffID" toValue:MasterTariffID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the PopulateItems input for this Choreo.
	*(optional, boolean) If set to "true", returns a list of territory items for each territory in the result set.
	 */
	-(void)setPopulateItems:(NSString*)PopulateItems {
		[super setInput:@"PopulateItems" toValue:PopulateItems];
	}

	/*!
	 * Set the value of the PopulateLSES input for this Choreo.
	*(optional, string) If set to "true", the response includes a list of TerritoryLses which are all the LSEs providing service in this territory.
	 */
	-(void)setPopulateLSES:(NSString*)PopulateLSES {
		[super setInput:@"PopulateLSES" toValue:PopulateLSES];
	}

	/*!
	 * Set the value of the SearchOn input for this Choreo.
	*(optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
	 */
	-(void)setSearchOn:(NSString*)SearchOn {
		[super setInput:@"SearchOn" toValue:SearchOn];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the SortOn input for this Choreo.
	*(optional, string) Comma separated list of fields to sort on.
	 */
	-(void)setSortOn:(NSString*)SortOn {
		[super setInput:@"SortOn" toValue:SortOn];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartsWith input for this Choreo.
	*(optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setStartsWith:(NSString*)StartsWith {
		[super setInput:@"StartsWith" toValue:StartsWith];
	}

	/*!
	 * Set the value of the UsageTypes input for this Choreo.
	*(optional, string) Filters the result set to only include territories of the specified usageType. valid values are: SERVICE, TARIFF.
	 */
	-(void)setUsageTypes:(NSString*)UsageTypes {
		[super setInput:@"UsageTypes" toValue:UsageTypes];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTerritories Choreo.
 */
@implementation TMBGenability_TariffData_GetTerritories_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Territory objects based a specified search criteria.
 */
@implementation TMBGenability_TariffData_GetTerritories

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetTerritories Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetTerritories"] autorelease];
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
		TMBGenability_TariffData_GetTerritories_ResultSet *results = [[[TMBGenability_TariffData_GetTerritories_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTerritories Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetTerritories_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetTerritories_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSeasonGroups Choreo.
 */
@implementation TMBGenability_TariffData_GetSeasonGroups_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) The App ID provided by Genability.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Genability.
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the EndsWith input for this Choreo.
	*(optional, string) When true, the search will only return results that end with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setEndsWith:(NSString*)EndsWith {
		[super setInput:@"EndsWith" toValue:EndsWith];
	}

	/*!
	 * Set the value of the IsRegex input for this Choreo.
	*(optional, boolean) When true, the provided search string will be regarded as a regular expression and the search will return results matching the regular expression.
	 */
	-(void)setIsRegex:(NSString*)IsRegex {
		[super setInput:@"IsRegex" toValue:IsRegex];
	}

	/*!
	 * Set the value of the LSEID input for this Choreo.
	*(required, integer) The LSE Id whose Seasons to return.
	 */
	-(void)setLSEID:(NSString*)LSEID {
		[super setInput:@"LSEID" toValue:LSEID];
	}

	/*!
	 * Set the value of the PageCount input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 25.
	 */
	-(void)setPageCount:(NSString*)PageCount {
		[super setInput:@"PageCount" toValue:PageCount];
	}

	/*!
	 * Set the value of the PageStart input for this Choreo.
	*(optional, integer) The page number to begin the result set from. Defaults to 1.
	 */
	-(void)setPageStart:(NSString*)PageStart {
		[super setInput:@"PageStart" toValue:PageStart];
	}

	/*!
	 * Set the value of the SearchOn input for this Choreo.
	*(optional, string) Comma separated list of fields to query on. When searchOn is specified, the text provided in the search string field will be searched within these fields.
	 */
	-(void)setSearchOn:(NSString*)SearchOn {
		[super setInput:@"SearchOn" toValue:SearchOn];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) The string of text to search on. This can also be a regular expression, in which case you should set the 'isRegex' flag to true.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the SortOn input for this Choreo.
	*(optional, string) Comma separated list of fields to sort on.
	 */
	-(void)setSortOn:(NSString*)SortOn {
		[super setInput:@"SortOn" toValue:SortOn];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Comma separated list of ordering. Possible values are 'ASC' and 'DESC'. Default is 'ASC'. This list corresponds to the field list used in the SortOn input.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartsWith input for this Choreo.
	*(optional, boolean) When true, the search will only return results that begin with the specified search string. Otherwise, any match of the search string will be returned as a result.
	 */
	-(void)setStartsWith:(NSString*)StartsWith {
		[super setInput:@"StartsWith" toValue:StartsWith];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSeasonGroups Choreo.
 */
@implementation TMBGenability_TariffData_GetSeasonGroups_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Genability.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Season Groups for a given Load Serving Entity.
 */
@implementation TMBGenability_TariffData_GetSeasonGroups

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGenability_TariffData_GetSeasonGroups Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Genability/TariffData/GetSeasonGroups"] autorelease];
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
		TMBGenability_TariffData_GetSeasonGroups_ResultSet *results = [[[TMBGenability_TariffData_GetSeasonGroups_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSeasonGroups Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGenability_TariffData_GetSeasonGroups_Inputs*)newInputSet {
		return [[[TMBGenability_TariffData_GetSeasonGroups_Inputs alloc] init] autorelease];
	}
@end
	