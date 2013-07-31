/*!
 * @TMBZillow.m
 *
 * Execute Choreographies from the Temboo Zillow bundle.
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

#import "TMBZillow.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetZestimate Choreo.
 */
@implementation TMBZillow_GetZestimate_Inputs

	/*!
	 * Set the value of the RentEstimate input for this Choreo.
	*(optional, boolean) Set to 1 (true) to enable. Defaults to 0 (false).
	 */
	-(void)setRentEstimate:(NSString*)RentEstimate {
		[super setInput:@"RentEstimate" toValue:RentEstimate];
	}

	/*!
	 * Set the value of the ZPID input for this Choreo.
	*(required, integer) Enter a Zillow Property ID for the property being queried.
	 */
	-(void)setZPID:(NSString*)ZPID {
		[super setInput:@"ZPID" toValue:ZPID];
	}

	/*!
	 * Set the value of the ZWSID input for this Choreo.
	*(required, string) Enter a Zillow Web Service Identifier (ZWS ID).
	 */
	-(void)setZWSID:(NSString*)ZWSID {
		[super setInput:@"ZWSID" toValue:ZWSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetZestimate Choreo.
 */
@implementation TMBZillow_GetZestimate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Zillow.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve estimate information for a specified property.
 */
@implementation TMBZillow_GetZestimate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZillow_GetZestimate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zillow/GetZestimate"] autorelease];
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
		TMBZillow_GetZestimate_ResultSet *results = [[[TMBZillow_GetZestimate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetZestimate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZillow_GetZestimate_Inputs*)newInputSet {
		return [[[TMBZillow_GetZestimate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRateSummary Choreo.
 */
@implementation TMBZillow_GetRateSummary_Inputs

	/*!
	 * Set the value of the OutputFormat input for this Choreo.
	*(optional, string) Enter the desired query output format.  Enter: xml, or json.  Default output is set to: xml.
	 */
	-(void)setOutputFormat:(NSString*)OutputFormat {
		[super setInput:@"OutputFormat" toValue:OutputFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Enter a U.S. state abbreviation for which to retrieve mortgage rates.  If null, the national average rate is returned.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the ZWSID input for this Choreo.
	*(required, string) Enter a Zillow Web Service Identifier (ZWS ID).
	 */
	-(void)setZWSID:(NSString*)ZWSID {
		[super setInput:@"ZWSID" toValue:ZWSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRateSummary Choreo.
 */
@implementation TMBZillow_GetRateSummary_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Zillow.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve current interest rates for a specified loan type.
 */
@implementation TMBZillow_GetRateSummary

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZillow_GetRateSummary Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zillow/GetRateSummary"] autorelease];
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
		TMBZillow_GetRateSummary_ResultSet *results = [[[TMBZillow_GetRateSummary_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRateSummary Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZillow_GetRateSummary_Inputs*)newInputSet {
		return [[[TMBZillow_GetRateSummary_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDeepSearchResults Choreo.
 */
@implementation TMBZillow_GetDeepSearchResults_Inputs

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) Enter the address of the property to search.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) Enter a city name.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the RentEstimate input for this Choreo.
	*(optional, boolean) Set to 1 (true) to enable. Defaults to 0 (false).
	 */
	-(void)setRentEstimate:(NSString*)RentEstimate {
		[super setInput:@"RentEstimate" toValue:RentEstimate];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) Enter a State abbreviation. If State is set, an entry for City must also be entered.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the ZWSID input for this Choreo.
	*(required, string) Enter a Zillow Web Service Identifier (ZWS ID).
	 */
	-(void)setZWSID:(NSString*)ZWSID {
		[super setInput:@"ZWSID" toValue:ZWSID];
	}

	/*!
	 * Set the value of the Zipcode input for this Choreo.
	*(required, integer) Enter a zipcode. Can be combined with or without the  City and State input variables.
	 */
	-(void)setZipcode:(NSString*)Zipcode {
		[super setInput:@"Zipcode" toValue:Zipcode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDeepSearchResults Choreo.
 */
@implementation TMBZillow_GetDeepSearchResults_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Zillow.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve comprehensive property information for a specified address. 
 */
@implementation TMBZillow_GetDeepSearchResults

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZillow_GetDeepSearchResults Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zillow/GetDeepSearchResults"] autorelease];
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
		TMBZillow_GetDeepSearchResults_ResultSet *results = [[[TMBZillow_GetDeepSearchResults_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDeepSearchResults Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZillow_GetDeepSearchResults_Inputs*)newInputSet {
		return [[[TMBZillow_GetDeepSearchResults_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetComps Choreo.
 */
@implementation TMBZillow_GetComps_Inputs

	/*!
	 * Set the value of the Count input for this Choreo.
	*(required, integer) Enter the number of comparable recent sales to retrieve. Choose a value between 1 and 25.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the RentEstimate input for this Choreo.
	*(optional, boolean) Set to 1 (true) to enable. Defaults to 0 (false).
	 */
	-(void)setRentEstimate:(NSString*)RentEstimate {
		[super setInput:@"RentEstimate" toValue:RentEstimate];
	}

	/*!
	 * Set the value of the ZPID input for this Choreo.
	*(required, integer) Enter a Zillow Property ID for the property being queried.
	 */
	-(void)setZPID:(NSString*)ZPID {
		[super setInput:@"ZPID" toValue:ZPID];
	}

	/*!
	 * Set the value of the ZWSID input for this Choreo.
	*(required, string) Enter a Zillow Web Service Identifier (ZWS ID).
	 */
	-(void)setZWSID:(NSString*)ZWSID {
		[super setInput:@"ZWSID" toValue:ZWSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComps Choreo.
 */
@implementation TMBZillow_GetComps_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Zillow.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of comparable recent sales for a specified property.
 */
@implementation TMBZillow_GetComps

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZillow_GetComps Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zillow/GetComps"] autorelease];
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
		TMBZillow_GetComps_ResultSet *results = [[[TMBZillow_GetComps_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComps Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZillow_GetComps_Inputs*)newInputSet {
		return [[[TMBZillow_GetComps_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMonthlyPayments Choreo.
 */
@implementation TMBZillow_GetMonthlyPayments_Inputs

	/*!
	 * Set the value of the DollarsDown input for this Choreo.
	*(optional, integer) Specify the dollar amount that is placed for a down payment. This variable can be used in place of DownPaymentAmount.
	 */
	-(void)setDollarsDown:(NSString*)DollarsDown {
		[super setInput:@"DollarsDown" toValue:DollarsDown];
	}

	/*!
	 * Set the value of the DownPaymentAmount input for this Choreo.
	*(optional, integer) Enter the percentage of the total properly price that will be used as a down payment. If < 20%, mortage insurance info is also returned.
	 */
	-(void)setDownPaymentAmount:(NSString*)DownPaymentAmount {
		[super setInput:@"DownPaymentAmount" toValue:DownPaymentAmount];
	}

	/*!
	 * Set the value of the OutputFormat input for this Choreo.
	*(optional, string) Enter the desired query output format.  Enter: xml, or json.  Default output is set to: xml.
	 */
	-(void)setOutputFormat:(NSString*)OutputFormat {
		[super setInput:@"OutputFormat" toValue:OutputFormat];
	}

	/*!
	 * Set the value of the Price input for this Choreo.
	*(required, integer) Enter the price for which the monthly payment is to be calculated.
	 */
	-(void)setPrice:(NSString*)Price {
		[super setInput:@"Price" toValue:Price];
	}

	/*!
	 * Set the value of the ZWSID input for this Choreo.
	*(required, string) Enter a Zillow Web Service Identifier (ZWS ID).
	 */
	-(void)setZWSID:(NSString*)ZWSID {
		[super setInput:@"ZWSID" toValue:ZWSID];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, integer) Enter the zip code of the property.  If null, no property tax, or hazard insurance data will be returned.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMonthlyPayments Choreo.
 */
@implementation TMBZillow_GetMonthlyPayments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Zillow.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve estimated monthly payments, including principal and interest based on current interest rates.
 */
@implementation TMBZillow_GetMonthlyPayments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZillow_GetMonthlyPayments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zillow/GetMonthlyPayments"] autorelease];
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
		TMBZillow_GetMonthlyPayments_ResultSet *results = [[[TMBZillow_GetMonthlyPayments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMonthlyPayments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZillow_GetMonthlyPayments_Inputs*)newInputSet {
		return [[[TMBZillow_GetMonthlyPayments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUpdatedPropertyDetails Choreo.
 */
@implementation TMBZillow_GetUpdatedPropertyDetails_Inputs

	/*!
	 * Set the value of the ZPID input for this Choreo.
	*(required, integer) Enter a Zillow Property ID for the property being queried.
	 */
	-(void)setZPID:(NSString*)ZPID {
		[super setInput:@"ZPID" toValue:ZPID];
	}

	/*!
	 * Set the value of the ZWSID input for this Choreo.
	*(required, string) Enter a Zillow Web Service Identifier (ZWS ID).
	 */
	-(void)setZWSID:(NSString*)ZWSID {
		[super setInput:@"ZWSID" toValue:ZWSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUpdatedPropertyDetails Choreo.
 */
@implementation TMBZillow_GetUpdatedPropertyDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Zillow.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve detailed property information that has been edited by the home's owner or agent.
 */
@implementation TMBZillow_GetUpdatedPropertyDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZillow_GetUpdatedPropertyDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zillow/GetUpdatedPropertyDetails"] autorelease];
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
		TMBZillow_GetUpdatedPropertyDetails_ResultSet *results = [[[TMBZillow_GetUpdatedPropertyDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUpdatedPropertyDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZillow_GetUpdatedPropertyDetails_Inputs*)newInputSet {
		return [[[TMBZillow_GetUpdatedPropertyDetails_Inputs alloc] init] autorelease];
	}
@end
	