/*!
 * @TMBFedEx.m
 *
 * Execute Choreographies from the Temboo FedEx bundle.
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

#import "TMBFedEx.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the AddressValidationRequest Choreo.
 */
@implementation TMBFedEx_AddressValidationRequest_Inputs

	/*!
	 * Set the value of the AccountNumber input for this Choreo.
	*(required, string) Your FedEx Account Number
	 */
	-(void)setAccountNumber:(NSString*)AccountNumber {
		[super setInput:@"AccountNumber" toValue:AccountNumber];
	}

	/*!
	 * Set the value of the AuthenticationKey input for this Choreo.
	*(required, string) The Production Authentication Key provided by FedEx Web Services
	 */
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey {
		[super setInput:@"AuthenticationKey" toValue:AuthenticationKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The city to use in the address validation request
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(required, string) The country code to use in the address validation request
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the MeterNumber input for this Choreo.
	*(required, string) The Production Meter Number provided by FedEx Web Services
	 */
	-(void)setMeterNumber:(NSString*)MeterNumber {
		[super setInput:@"MeterNumber" toValue:MeterNumber];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Production Password provided by FedEx Web Services
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(required, string) The postal code to use in the address validation request
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The state to use in the address validation request
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Street input for this Choreo.
	*(required, string) The street to use in the address validation request
	 */
	-(void)setStreet:(NSString*)Street {
		[super setInput:@"Street" toValue:Street];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddressValidationRequest Choreo.
 */
@implementation TMBFedEx_AddressValidationRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "DeliveryPointValidation" output from an execution of this Choreo.
	 * @return - NSString* (string) The Delivery Point Validation parsed from the FedEx response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getDeliveryPointValidation {
		return [super getOutputByName:@"DeliveryPointValidation"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedEx
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to submit an address for validation to FedEx Web Services.
 */
@implementation TMBFedEx_AddressValidationRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedEx_AddressValidationRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedEx/AddressValidationRequest"] autorelease];
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
		TMBFedEx_AddressValidationRequest_ResultSet *results = [[[TMBFedEx_AddressValidationRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddressValidationRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedEx_AddressValidationRequest_Inputs*)newInputSet {
		return [[[TMBFedEx_AddressValidationRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ServiceAvailabilityRequest Choreo.
 */
@implementation TMBFedEx_ServiceAvailabilityRequest_Inputs

	/*!
	 * Set the value of the AccountNumber input for this Choreo.
	*(required, string) Your FedEx Account Number
	 */
	-(void)setAccountNumber:(NSString*)AccountNumber {
		[super setInput:@"AccountNumber" toValue:AccountNumber];
	}

	/*!
	 * Set the value of the AuthenticationKey input for this Choreo.
	*(required, string) The Production Authentication Key provided by FedEx Web Services
	 */
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey {
		[super setInput:@"AuthenticationKey" toValue:AuthenticationKey];
	}

	/*!
	 * Set the value of the DestinationCountryCode input for this Choreo.
	*(required, string) The destination country code to use as an input to the service availability request
	 */
	-(void)setDestinationCountryCode:(NSString*)DestinationCountryCode {
		[super setInput:@"DestinationCountryCode" toValue:DestinationCountryCode];
	}

	/*!
	 * Set the value of the DestinationPostalCode input for this Choreo.
	*(required, string) The destination postal code to use as an input to the service availability request
	 */
	-(void)setDestinationPostalCode:(NSString*)DestinationPostalCode {
		[super setInput:@"DestinationPostalCode" toValue:DestinationPostalCode];
	}

	/*!
	 * Set the value of the MeterNumber input for this Choreo.
	*(required, string) The Production Meter Number provided by FedEx Web Services
	 */
	-(void)setMeterNumber:(NSString*)MeterNumber {
		[super setInput:@"MeterNumber" toValue:MeterNumber];
	}

	/*!
	 * Set the value of the OriginCountryCode input for this Choreo.
	*(required, string) The origin country code to use as an input to the service availability request
	 */
	-(void)setOriginCountryCode:(NSString*)OriginCountryCode {
		[super setInput:@"OriginCountryCode" toValue:OriginCountryCode];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Production Password provided by FedEx Web Services
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ShipDate input for this Choreo.
	*(required, date) The date to use for the service availability request (epoch timestamp in milliseconds or formatted like yyyy-MM-dd)
	 */
	-(void)setShipDate:(NSString*)ShipDate {
		[super setInput:@"ShipDate" toValue:ShipDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ServiceAvailabilityRequest Choreo.
 */
@implementation TMBFedEx_ServiceAvailabilityRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedEx
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves available shipping options and delivery dates for a specified origin and destination.
 */
@implementation TMBFedEx_ServiceAvailabilityRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedEx_ServiceAvailabilityRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedEx/ServiceAvailabilityRequest"] autorelease];
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
		TMBFedEx_ServiceAvailabilityRequest_ResultSet *results = [[[TMBFedEx_ServiceAvailabilityRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ServiceAvailabilityRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedEx_ServiceAvailabilityRequest_Inputs*)newInputSet {
		return [[[TMBFedEx_ServiceAvailabilityRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TrackingRequest Choreo.
 */
@implementation TMBFedEx_TrackingRequest_Inputs

	/*!
	 * Set the value of the AccountNumber input for this Choreo.
	*(required, string) Your FedEx Account Number
	 */
	-(void)setAccountNumber:(NSString*)AccountNumber {
		[super setInput:@"AccountNumber" toValue:AccountNumber];
	}

	/*!
	 * Set the value of the AuthenticationKey input for this Choreo.
	*(required, string) The Production Authentication Key provided by FedEx Web Services
	 */
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey {
		[super setInput:@"AuthenticationKey" toValue:AuthenticationKey];
	}

	/*!
	 * Set the value of the MeterNumber input for this Choreo.
	*(required, string) The Production Meter Number provided by FedEx Web Services
	 */
	-(void)setMeterNumber:(NSString*)MeterNumber {
		[super setInput:@"MeterNumber" toValue:MeterNumber];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Production Password provided by FedEx Web Services
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the TrackingNumber input for this Choreo.
	*(required, string) The package tracking number to use in the request
	 */
	-(void)setTrackingNumber:(NSString*)TrackingNumber {
		[super setInput:@"TrackingNumber" toValue:TrackingNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrackingRequest Choreo.
 */
@implementation TMBFedEx_TrackingRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedEx
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "StatusDescription" output from an execution of this Choreo.
	 * @return - NSString* (string) The status description for the package which is parsed from the FedEx response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getStatusDescription {
		return [super getOutputByName:@"StatusDescription"];
	}
	
@end

/*!
 * Retrieves package information for a specified tracking number.
 */
@implementation TMBFedEx_TrackingRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedEx_TrackingRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedEx/TrackingRequest"] autorelease];
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
		TMBFedEx_TrackingRequest_ResultSet *results = [[[TMBFedEx_TrackingRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TrackingRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedEx_TrackingRequest_Inputs*)newInputSet {
		return [[[TMBFedEx_TrackingRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FedExLocatorRequest Choreo.
 */
@implementation TMBFedEx_FedExLocatorRequest_Inputs

	/*!
	 * Set the value of the AccountNumber input for this Choreo.
	*(required, string) Your FedEx Account Number
	 */
	-(void)setAccountNumber:(NSString*)AccountNumber {
		[super setInput:@"AccountNumber" toValue:AccountNumber];
	}

	/*!
	 * Set the value of the AuthenticationKey input for this Choreo.
	*(required, string) The Production Authentication Key provided by FedEx Web Services
	 */
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey {
		[super setInput:@"AuthenticationKey" toValue:AuthenticationKey];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The city to use in the locator request
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(required, string) The country code to use in the locator request
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the MeterNumber input for this Choreo.
	*(required, string) The Production Meter Number provided by FedEx Web Services
	 */
	-(void)setMeterNumber:(NSString*)MeterNumber {
		[super setInput:@"MeterNumber" toValue:MeterNumber];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Production Password provided by FedEx Web Services
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(required, string) The postal code to use in the locator request
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}

	/*!
	 * Set the value of the StateOrProvinceCode input for this Choreo.
	*(required, string) The state or province code to use in the locator request
	 */
	-(void)setStateOrProvinceCode:(NSString*)StateOrProvinceCode {
		[super setInput:@"StateOrProvinceCode" toValue:StateOrProvinceCode];
	}

	/*!
	 * Set the value of the Street input for this Choreo.
	*(required, string) The street to use in the locator request
	 */
	-(void)setStreet:(NSString*)Street {
		[super setInput:@"Street" toValue:Street];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FedExLocatorRequest Choreo.
 */
@implementation TMBFedEx_FedExLocatorRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "BusinessAddress" output from an execution of this Choreo.
	 * @return - NSString* (string) The Business Address parsed from the FedEx response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getBusinessAddress {
		return [super getOutputByName:@"BusinessAddress"];
	}

	/*!
	 * Retrieve the value of the "BusinessName" output from an execution of this Choreo.
	 * @return - NSString* (string) The Business Name parsed from the FedEx response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getBusinessName {
		return [super getOutputByName:@"BusinessName"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedEx
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the nearest FedEx locations for a specified address.
 */
@implementation TMBFedEx_FedExLocatorRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedEx_FedExLocatorRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedEx/FedExLocatorRequest"] autorelease];
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
		TMBFedEx_FedExLocatorRequest_ResultSet *results = [[[TMBFedEx_FedExLocatorRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FedExLocatorRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedEx_FedExLocatorRequest_Inputs*)newInputSet {
		return [[[TMBFedEx_FedExLocatorRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PostalCodeInquiryRequest Choreo.
 */
@implementation TMBFedEx_PostalCodeInquiryRequest_Inputs

	/*!
	 * Set the value of the AccountNumber input for this Choreo.
	*(required, string) Your FedEx Account Number
	 */
	-(void)setAccountNumber:(NSString*)AccountNumber {
		[super setInput:@"AccountNumber" toValue:AccountNumber];
	}

	/*!
	 * Set the value of the AuthenticationKey input for this Choreo.
	*(required, string) The Production Authentication Key provided by FedEx Web Services
	 */
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey {
		[super setInput:@"AuthenticationKey" toValue:AuthenticationKey];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(required, string) The country code to use in the inquiry request
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the MeterNumber input for this Choreo.
	*(required, string) The Production Meter Number provided by FedEx Web Services
	 */
	-(void)setMeterNumber:(NSString*)MeterNumber {
		[super setInput:@"MeterNumber" toValue:MeterNumber];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The Production Password provided by FedEx Web Services
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(required, string) The postal code to use in the inquiry request
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostalCodeInquiryRequest Choreo.
 */
@implementation TMBFedEx_PostalCodeInquiryRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FedEx
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves location information from FedEx Web Services for a specified postal code.
 */
@implementation TMBFedEx_PostalCodeInquiryRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFedEx_PostalCodeInquiryRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FedEx/PostalCodeInquiryRequest"] autorelease];
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
		TMBFedEx_PostalCodeInquiryRequest_ResultSet *results = [[[TMBFedEx_PostalCodeInquiryRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PostalCodeInquiryRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFedEx_PostalCodeInquiryRequest_Inputs*)newInputSet {
		return [[[TMBFedEx_PostalCodeInquiryRequest_Inputs alloc] init] autorelease];
	}
@end
	