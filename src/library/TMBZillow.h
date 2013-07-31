/*!
 * @header Temboo iOS SDK Zillow classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBZillow.GetZestimate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetZestimate Choreo.
 */
@interface TMBZillow_GetZestimate_Inputs : TMBChoreographyInputSet
	-(void)setRentEstimate:(NSString*)RentEstimate;
	-(void)setZPID:(NSString*)ZPID;
	-(void)setZWSID:(NSString*)ZWSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetZestimate Choreo.
 */
@interface TMBZillow_GetZestimate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve estimate information for a specified property.
 */
@interface TMBZillow_GetZestimate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZillow_GetZestimate_Inputs*)newInputSet;
@end

/*! group TMBZillow_GetZestimate Choreo */


/*! group TMBZillow.GetRateSummary Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRateSummary Choreo.
 */
@interface TMBZillow_GetRateSummary_Inputs : TMBChoreographyInputSet
	-(void)setOutputFormat:(NSString*)OutputFormat;
	-(void)setState:(NSString*)State;
	-(void)setZWSID:(NSString*)ZWSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRateSummary Choreo.
 */
@interface TMBZillow_GetRateSummary_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve current interest rates for a specified loan type.
 */
@interface TMBZillow_GetRateSummary : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZillow_GetRateSummary_Inputs*)newInputSet;
@end

/*! group TMBZillow_GetRateSummary Choreo */


/*! group TMBZillow.GetDeepSearchResults Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDeepSearchResults Choreo.
 */
@interface TMBZillow_GetDeepSearchResults_Inputs : TMBChoreographyInputSet
	-(void)setAddress:(NSString*)Address;
	-(void)setCity:(NSString*)City;
	-(void)setRentEstimate:(NSString*)RentEstimate;
	-(void)setState:(NSString*)State;
	-(void)setZWSID:(NSString*)ZWSID;
	-(void)setZipcode:(NSString*)Zipcode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDeepSearchResults Choreo.
 */
@interface TMBZillow_GetDeepSearchResults_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve comprehensive property information for a specified address. 
 */
@interface TMBZillow_GetDeepSearchResults : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZillow_GetDeepSearchResults_Inputs*)newInputSet;
@end

/*! group TMBZillow_GetDeepSearchResults Choreo */


/*! group TMBZillow.GetComps Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComps Choreo.
 */
@interface TMBZillow_GetComps_Inputs : TMBChoreographyInputSet
	-(void)setCount:(NSString*)Count;
	-(void)setRentEstimate:(NSString*)RentEstimate;
	-(void)setZPID:(NSString*)ZPID;
	-(void)setZWSID:(NSString*)ZWSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComps Choreo.
 */
@interface TMBZillow_GetComps_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of comparable recent sales for a specified property.
 */
@interface TMBZillow_GetComps : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZillow_GetComps_Inputs*)newInputSet;
@end

/*! group TMBZillow_GetComps Choreo */


/*! group TMBZillow.GetMonthlyPayments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMonthlyPayments Choreo.
 */
@interface TMBZillow_GetMonthlyPayments_Inputs : TMBChoreographyInputSet
	-(void)setDollarsDown:(NSString*)DollarsDown;
	-(void)setDownPaymentAmount:(NSString*)DownPaymentAmount;
	-(void)setOutputFormat:(NSString*)OutputFormat;
	-(void)setPrice:(NSString*)Price;
	-(void)setZWSID:(NSString*)ZWSID;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMonthlyPayments Choreo.
 */
@interface TMBZillow_GetMonthlyPayments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve estimated monthly payments, including principal and interest based on current interest rates.
 */
@interface TMBZillow_GetMonthlyPayments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZillow_GetMonthlyPayments_Inputs*)newInputSet;
@end

/*! group TMBZillow_GetMonthlyPayments Choreo */


/*! group TMBZillow.GetUpdatedPropertyDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUpdatedPropertyDetails Choreo.
 */
@interface TMBZillow_GetUpdatedPropertyDetails_Inputs : TMBChoreographyInputSet
	-(void)setZPID:(NSString*)ZPID;
	-(void)setZWSID:(NSString*)ZWSID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUpdatedPropertyDetails Choreo.
 */
@interface TMBZillow_GetUpdatedPropertyDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve detailed property information that has been edited by the home's owner or agent.
 */
@interface TMBZillow_GetUpdatedPropertyDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZillow_GetUpdatedPropertyDetails_Inputs*)newInputSet;
@end

/*! group TMBZillow_GetUpdatedPropertyDetails Choreo */
