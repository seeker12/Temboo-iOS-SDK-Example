/*!
 * @header Temboo iOS SDK USPS classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBUSPS.DeliveryInformationAPI.TrackConfirmFields Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TrackConfirmFields Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_Inputs : TMBChoreographyInputSet
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setPassword:(NSString*)Password;
	-(void)setTrackID:(NSString*)TrackID;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrackConfirmFields Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Track a package sent via USPS and return tracking information with details in separate XML tags.
 */
@interface TMBUSPS_DeliveryInformationAPI_TrackConfirmFields : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_DeliveryInformationAPI_TrackConfirmFields_Inputs*)newInputSet;
@end

/*! group TMBUSPS.DeliveryInformationAPI_TrackConfirmFields Choreo */


/*! group TMBUSPS.DeliveryInformationAPI.PriorityMailServiceRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PriorityMailServiceRequest Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_Inputs : TMBChoreographyInputSet
	-(void)setDestinationZip:(NSString*)DestinationZip;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setOriginZip:(NSString*)OriginZip;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PriorityMailServiceRequest Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Request USPS Priority Mail shipping information for a given origin and destination.
 */
@interface TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_DeliveryInformationAPI_PriorityMailServiceRequest_Inputs*)newInputSet;
@end

/*! group TMBUSPS.DeliveryInformationAPI_PriorityMailServiceRequest Choreo */


/*! group TMBUSPS.DeliveryInformationAPI.ExpressMailServiceRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ExpressMailServiceRequest Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_Inputs : TMBChoreographyInputSet
	-(void)setDate:(NSString*)Date;
	-(void)setDestinationZip:(NSString*)DestinationZip;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setOriginZip:(NSString*)OriginZip;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ExpressMailServiceRequest Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Request USPS Express Mail shipping information for a given origin and destination.
 */
@interface TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_DeliveryInformationAPI_ExpressMailServiceRequest_Inputs*)newInputSet;
@end

/*! group TMBUSPS.DeliveryInformationAPI_ExpressMailServiceRequest Choreo */


/*! group TMBUSPS.DeliveryInformationAPI.TrackConfirm Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TrackConfirm Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_TrackConfirm_Inputs : TMBChoreographyInputSet
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setPassword:(NSString*)Password;
	-(void)setTrackID:(NSString*)TrackID;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrackConfirm Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_TrackConfirm_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Request tracking information for a package with a given tracking id.
 */
@interface TMBUSPS_DeliveryInformationAPI_TrackConfirm : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_DeliveryInformationAPI_TrackConfirm_Inputs*)newInputSet;
@end

/*! group TMBUSPS.DeliveryInformationAPI_TrackConfirm Choreo */


/*! group TMBUSPS.AddressInformationAPI.CityStateLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CityStateLookup Choreo.
 */
@interface TMBUSPS_AddressInformationAPI_CityStateLookup_Inputs : TMBChoreographyInputSet
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserId:(NSString*)UserId;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CityStateLookup Choreo.
 */
@interface TMBUSPS_AddressInformationAPI_CityStateLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lookup city and state using incomplete address information.
 */
@interface TMBUSPS_AddressInformationAPI_CityStateLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_AddressInformationAPI_CityStateLookup_Inputs*)newInputSet;
@end

/*! group TMBUSPS.AddressInformationAPI_CityStateLookup Choreo */


/*! group TMBUSPS.AddressInformationAPI.ZipCodeLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipCodeLookup Choreo.
 */
@interface TMBUSPS_AddressInformationAPI_ZipCodeLookup_Inputs : TMBChoreographyInputSet
	-(void)setApyOrSuite:(NSString*)ApyOrSuite;
	-(void)setCity:(NSString*)City;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFirmName:(NSString*)FirmName;
	-(void)setPassword:(NSString*)Password;
	-(void)setState:(NSString*)State;
	-(void)setStreetAddress:(NSString*)StreetAddress;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipCodeLookup Choreo.
 */
@interface TMBUSPS_AddressInformationAPI_ZipCodeLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lookup zip codes using incomplete address information.
 */
@interface TMBUSPS_AddressInformationAPI_ZipCodeLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_AddressInformationAPI_ZipCodeLookup_Inputs*)newInputSet;
@end

/*! group TMBUSPS.AddressInformationAPI_ZipCodeLookup Choreo */


/*! group TMBUSPS.AddressInformationAPI.ValidateAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ValidateAddress Choreo.
 */
@interface TMBUSPS_AddressInformationAPI_ValidateAddress_Inputs : TMBChoreographyInputSet
	-(void)setAptOrSuite:(NSString*)AptOrSuite;
	-(void)setCity:(NSString*)City;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFirmName:(NSString*)FirmName;
	-(void)setPassword:(NSString*)Password;
	-(void)setState:(NSString*)State;
	-(void)setStreetAddress:(NSString*)StreetAddress;
	-(void)setUrbanization:(NSString*)Urbanization;
	-(void)setUserId:(NSString*)UserId;
	-(void)setZip4DigitCode:(NSString*)Zip4DigitCode;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ValidateAddress Choreo.
 */
@interface TMBUSPS_AddressInformationAPI_ValidateAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Validates and supplements incomplete address information.
 */
@interface TMBUSPS_AddressInformationAPI_ValidateAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_AddressInformationAPI_ValidateAddress_Inputs*)newInputSet;
@end

/*! group TMBUSPS.AddressInformationAPI_ValidateAddress Choreo */


/*! group TMBUSPS.DeliveryInformationAPI.PackageServicesRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PackageServicesRequest Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_Inputs : TMBChoreographyInputSet
	-(void)setResponse:(NSString*)Response;
	-(void)setDestinationZip:(NSString*)DestinationZip;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setOriginZip:(NSString*)OriginZip;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PackageServicesRequest Choreo.
 */
@interface TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Request USPS Parcel Post, Bound Printed Matter, Library Mail, or Media Mail shipping information for a given origin and destination.
 */
@interface TMBUSPS_DeliveryInformationAPI_PackageServicesRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUSPS_DeliveryInformationAPI_PackageServicesRequest_Inputs*)newInputSet;
@end

/*! group TMBUSPS.DeliveryInformationAPI_PackageServicesRequest Choreo */
