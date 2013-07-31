/*!
 * @TMBUSPS.m
 *
 * Execute Choreographies from the Temboo USPS bundle.
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

#import "TMBUSPS.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the TrackConfirmFields Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_Inputs

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the TrackID input for this Choreo.
	*(required, string) The tracking number.  Can be alphanumeric characters.
	 */
	-(void)setTrackID:(NSString*)TrackID {
		[super setInput:@"TrackID" toValue:TrackID];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrackConfirmFields Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Track a package sent via USPS and return tracking information with details in separate XML tags.
 */
@implementation TMBUSPS_DeliveryInformationAPI_TrackConfirmFields

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_DeliveryInformationAPI_TrackConfirmFields Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/DeliveryInformationAPI/TrackConfirmFields"] autorelease];
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
		TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_ResultSet *results = [[[TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TrackConfirmFields Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_Inputs*)newInputSet {
		return [[[TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PriorityMailServiceRequest Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_Inputs

	/*!
	 * Set the value of the DestinationZip input for this Choreo.
	*(required, integer) First 3 digits of a 5-digit zip code
	 */
	-(void)setDestinationZip:(NSString*)DestinationZip {
		[super setInput:@"DestinationZip" toValue:DestinationZip];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the OriginZip input for this Choreo.
	*(required, integer) First 3 digits of a 5-digit zip code
	 */
	-(void)setOriginZip:(NSString*)OriginZip {
		[super setInput:@"OriginZip" toValue:OriginZip];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS.  Required value.
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PriorityMailServiceRequest Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Request USPS Priority Mail shipping information for a given origin and destination.
 */
@implementation TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/DeliveryInformationAPI/PriorityMailServiceRequest"] autorelease];
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
		TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_ResultSet *results = [[[TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PriorityMailServiceRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_Inputs*)newInputSet {
		return [[[TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ExpressMailServiceRequest Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_Inputs

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) Date the package is to be shipped. Must take the form 'MM/DD/YYYY'.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the DestinationZip input for this Choreo.
	*(required, integer) Five digit zip code.
	 */
	-(void)setDestinationZip:(NSString*)DestinationZip {
		[super setInput:@"DestinationZip" toValue:DestinationZip];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the OriginZip input for this Choreo.
	*(required, integer) Three or five digit zip code.
	 */
	-(void)setOriginZip:(NSString*)OriginZip {
		[super setInput:@"OriginZip" toValue:OriginZip];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ExpressMailServiceRequest Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Request USPS Express Mail shipping information for a given origin and destination.
 */
@implementation TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/DeliveryInformationAPI/ExpressMailServiceRequest"] autorelease];
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
		TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_ResultSet *results = [[[TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ExpressMailServiceRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_Inputs*)newInputSet {
		return [[[TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TrackConfirm Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_TrackConfirm_Inputs

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the TrackID input for this Choreo.
	*(required, string) The tracking number.  Can be alphanumeric characters.  Required value.
	 */
	-(void)setTrackID:(NSString*)TrackID {
		[super setInput:@"TrackID" toValue:TrackID];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrackConfirm Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_TrackConfirm_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Request tracking information for a package with a given tracking id.
 */
@implementation TMBUSPS_DeliveryInformationAPI_TrackConfirm

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_DeliveryInformationAPI_TrackConfirm Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/DeliveryInformationAPI/TrackConfirm"] autorelease];
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
		TMBUSPS_DeliveryInformationAPI_TrackConfirm_ResultSet *results = [[[TMBUSPS_DeliveryInformationAPI_TrackConfirm_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TrackConfirm Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_DeliveryInformationAPI_TrackConfirm_Inputs*)newInputSet {
		return [[[TMBUSPS_DeliveryInformationAPI_TrackConfirm_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CityStateLookup Choreo.
 */
@implementation TMBUSPS_AddressInformationAPI_CityStateLookup_Inputs

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, integer) Maximum characters allowed: 5
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CityStateLookup Choreo.
 */
@implementation TMBUSPS_AddressInformationAPI_CityStateLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lookup city and state using incomplete address information.
 */
@implementation TMBUSPS_AddressInformationAPI_CityStateLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_AddressInformationAPI_CityStateLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/AddressInformationAPI/CityStateLookup"] autorelease];
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
		TMBUSPS_AddressInformationAPI_CityStateLookup_ResultSet *results = [[[TMBUSPS_AddressInformationAPI_CityStateLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CityStateLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_AddressInformationAPI_CityStateLookup_Inputs*)newInputSet {
		return [[[TMBUSPS_AddressInformationAPI_CityStateLookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ZipCodeLookup Choreo.
 */
@implementation TMBUSPS_AddressInformationAPI_ZipCodeLookup_Inputs

	/*!
	 * Set the value of the ApyOrSuite input for this Choreo.
	*(optional, string) Used to provide an apartment or suite number, if applicable. Maximum characters allowed: 38.
	 */
	-(void)setApyOrSuite:(NSString*)ApyOrSuite {
		[super setInput:@"ApyOrSuite" toValue:ApyOrSuite];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) Maximum characters allowed: 15.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FirmName input for this Choreo.
	*(optional, string) Maximum characters allowed: 38.
	 */
	-(void)setFirmName:(NSString*)FirmName {
		[super setInput:@"FirmName" toValue:FirmName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) Maximum characters allowed: 2.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the StreetAddress input for this Choreo.
	*(required, string) Street address.  Maximum characters allowed: 38.
	 */
	-(void)setStreetAddress:(NSString*)StreetAddress {
		[super setInput:@"StreetAddress" toValue:StreetAddress];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipCodeLookup Choreo.
 */
@implementation TMBUSPS_AddressInformationAPI_ZipCodeLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lookup zip codes using incomplete address information.
 */
@implementation TMBUSPS_AddressInformationAPI_ZipCodeLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_AddressInformationAPI_ZipCodeLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/AddressInformationAPI/ZipCodeLookup"] autorelease];
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
		TMBUSPS_AddressInformationAPI_ZipCodeLookup_ResultSet *results = [[[TMBUSPS_AddressInformationAPI_ZipCodeLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipCodeLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_AddressInformationAPI_ZipCodeLookup_Inputs*)newInputSet {
		return [[[TMBUSPS_AddressInformationAPI_ZipCodeLookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ValidateAddress Choreo.
 */
@implementation TMBUSPS_AddressInformationAPI_ValidateAddress_Inputs

	/*!
	 * Set the value of the AptOrSuite input for this Choreo.
	*(optional, string) Used to provide an apartment or suite number, if applicable. Maximum characters allowed: 38.
	 */
	-(void)setAptOrSuite:(NSString*)AptOrSuite {
		[super setInput:@"AptOrSuite" toValue:AptOrSuite];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) Maximum characters allowed: 15. Either City and State or Zip are required.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FirmName input for this Choreo.
	*(optional, string) Maximum characters allowed: 38.
	 */
	-(void)setFirmName:(NSString*)FirmName {
		[super setInput:@"FirmName" toValue:FirmName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Maximum characters allowed: 2. Either City and State or Zip are required.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the StreetAddress input for this Choreo.
	*(required, string) Street address. Maximum characters allowed: 38.
	 */
	-(void)setStreetAddress:(NSString*)StreetAddress {
		[super setInput:@"StreetAddress" toValue:StreetAddress];
	}

	/*!
	 * Set the value of the Urbanization input for this Choreo.
	*(optional, string) Maximum characters allowed: 28. For Puerto Rico addresses only.
	 */
	-(void)setUrbanization:(NSString*)Urbanization {
		[super setInput:@"Urbanization" toValue:Urbanization];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}

	/*!
	 * Set the value of the Zip4DigitCode input for this Choreo.
	*(optional, integer) Maximum characters allowed: 4
	 */
	-(void)setZip4DigitCode:(NSString*)Zip4DigitCode {
		[super setInput:@"Zip4DigitCode" toValue:Zip4DigitCode];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, integer) Maximum characters allowed: 5. Either City and State or Zip are required.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ValidateAddress Choreo.
 */
@implementation TMBUSPS_AddressInformationAPI_ValidateAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Validates and supplements incomplete address information.
 */
@implementation TMBUSPS_AddressInformationAPI_ValidateAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_AddressInformationAPI_ValidateAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/AddressInformationAPI/ValidateAddress"] autorelease];
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
		TMBUSPS_AddressInformationAPI_ValidateAddress_ResultSet *results = [[[TMBUSPS_AddressInformationAPI_ValidateAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ValidateAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_AddressInformationAPI_ValidateAddress_Inputs*)newInputSet {
		return [[[TMBUSPS_AddressInformationAPI_ValidateAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PackageServicesRequest Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_Inputs

	/*!
	 * Set the value of the Response input for this Choreo.
	*(required, xml) The response from USPS Web Service
	 */
	-(void)setResponse:(NSString*)Response {
		[super setInput:@"Response" toValue:Response];
	}

	/*!
	 * Set the value of the DestinationZip input for this Choreo.
	*(required, integer) First 3 digits of a 5-digit zip code.
	 */
	-(void)setDestinationZip:(NSString*)DestinationZip {
		[super setInput:@"DestinationZip" toValue:DestinationZip];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) If you are accessing the production server, set to 'production'. Defaults to 'testing' which indicates that you are using the sandbox.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the OriginZip input for this Choreo.
	*(required, integer) First 3 digits of a 5-digit zip code.  Required value.
	 */
	-(void)setOriginZip:(NSString*)OriginZip {
		[super setInput:@"OriginZip" toValue:OriginZip];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password assigned by USPS
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(required, string) Alphanumeric ID assigned by USPS
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PackageServicesRequest Choreo.
 */
@implementation TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (required, xml) The response from USPS Web Service
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Request USPS Parcel Post, Bound Printed Matter, Library Mail, or Media Mail shipping information for a given origin and destination.
 */
@implementation TMBUSPS_DeliveryInformationAPI_PackageServicesRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUSPS_DeliveryInformationAPI_PackageServicesRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/USPS/DeliveryInformationAPI/PackageServicesRequest"] autorelease];
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
		TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_ResultSet *results = [[[TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PackageServicesRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_Inputs*)newInputSet {
		return [[[TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_Inputs alloc] init] autorelease];
	}
@end
	