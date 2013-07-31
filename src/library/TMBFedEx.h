/*!
 * @header Temboo iOS SDK FedEx classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBFedEx.AddressValidationRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddressValidationRequest Choreo.
 */
@interface TMBFedEx_AddressValidationRequest_Inputs : TMBChoreographyInputSet
	-(void)setAccountNumber:(NSString*)AccountNumber;
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey;
	-(void)setCity:(NSString*)City;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setMeterNumber:(NSString*)MeterNumber;
	-(void)setPassword:(NSString*)Password;
	-(void)setPostalCode:(NSString*)PostalCode;
	-(void)setState:(NSString*)State;
	-(void)setStreet:(NSString*)Street;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddressValidationRequest Choreo.
 */
@interface TMBFedEx_AddressValidationRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getDeliveryPointValidation;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to submit an address for validation to FedEx Web Services.
 */
@interface TMBFedEx_AddressValidationRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedEx_AddressValidationRequest_Inputs*)newInputSet;
@end

/*! group TMBFedEx_AddressValidationRequest Choreo */


/*! group TMBFedEx.ServiceAvailabilityRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ServiceAvailabilityRequest Choreo.
 */
@interface TMBFedEx_ServiceAvailabilityRequest_Inputs : TMBChoreographyInputSet
	-(void)setAccountNumber:(NSString*)AccountNumber;
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey;
	-(void)setDestinationCountryCode:(NSString*)DestinationCountryCode;
	-(void)setDestinationPostalCode:(NSString*)DestinationPostalCode;
	-(void)setMeterNumber:(NSString*)MeterNumber;
	-(void)setOriginCountryCode:(NSString*)OriginCountryCode;
	-(void)setPassword:(NSString*)Password;
	-(void)setShipDate:(NSString*)ShipDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ServiceAvailabilityRequest Choreo.
 */
@interface TMBFedEx_ServiceAvailabilityRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves available shipping options and delivery dates for a specified origin and destination.
 */
@interface TMBFedEx_ServiceAvailabilityRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedEx_ServiceAvailabilityRequest_Inputs*)newInputSet;
@end

/*! group TMBFedEx_ServiceAvailabilityRequest Choreo */


/*! group TMBFedEx.TrackingRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TrackingRequest Choreo.
 */
@interface TMBFedEx_TrackingRequest_Inputs : TMBChoreographyInputSet
	-(void)setAccountNumber:(NSString*)AccountNumber;
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey;
	-(void)setMeterNumber:(NSString*)MeterNumber;
	-(void)setPassword:(NSString*)Password;
	-(void)setTrackingNumber:(NSString*)TrackingNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrackingRequest Choreo.
 */
@interface TMBFedEx_TrackingRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getStatusDescription;	
@end

/*!
 * Retrieves package information for a specified tracking number.
 */
@interface TMBFedEx_TrackingRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedEx_TrackingRequest_Inputs*)newInputSet;
@end

/*! group TMBFedEx_TrackingRequest Choreo */


/*! group TMBFedEx.FedExLocatorRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FedExLocatorRequest Choreo.
 */
@interface TMBFedEx_FedExLocatorRequest_Inputs : TMBChoreographyInputSet
	-(void)setAccountNumber:(NSString*)AccountNumber;
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey;
	-(void)setCity:(NSString*)City;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setMeterNumber:(NSString*)MeterNumber;
	-(void)setPassword:(NSString*)Password;
	-(void)setPostalCode:(NSString*)PostalCode;
	-(void)setStateOrProvinceCode:(NSString*)StateOrProvinceCode;
	-(void)setStreet:(NSString*)Street;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FedExLocatorRequest Choreo.
 */
@interface TMBFedEx_FedExLocatorRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getBusinessAddress;
	-(NSString*)getBusinessName;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the nearest FedEx locations for a specified address.
 */
@interface TMBFedEx_FedExLocatorRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedEx_FedExLocatorRequest_Inputs*)newInputSet;
@end

/*! group TMBFedEx_FedExLocatorRequest Choreo */


/*! group TMBFedEx.PostalCodeInquiryRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PostalCodeInquiryRequest Choreo.
 */
@interface TMBFedEx_PostalCodeInquiryRequest_Inputs : TMBChoreographyInputSet
	-(void)setAccountNumber:(NSString*)AccountNumber;
	-(void)setAuthenticationKey:(NSString*)AuthenticationKey;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setMeterNumber:(NSString*)MeterNumber;
	-(void)setPassword:(NSString*)Password;
	-(void)setPostalCode:(NSString*)PostalCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostalCodeInquiryRequest Choreo.
 */
@interface TMBFedEx_PostalCodeInquiryRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves location information from FedEx Web Services for a specified postal code.
 */
@interface TMBFedEx_PostalCodeInquiryRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFedEx_PostalCodeInquiryRequest_Inputs*)newInputSet;
@end

/*! group TMBFedEx_PostalCodeInquiryRequest Choreo */
