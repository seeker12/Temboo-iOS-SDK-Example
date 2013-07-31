/*!
 * @header Temboo iOS SDK ObadMobileMarketing classes
 *
 * Execute Choreographies from the Temboo ObadMobileMarketing bundle.
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

/*! group TMBObadMobileMarketing.ImageCoupon Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ImageCoupon Choreo.
 */
@interface TMBObadMobileMarketing_ImageCoupon_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCouponID:(NSString*)CouponID;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setType:(NSString*)Type;
	-(void)setURLSource:(NSString*)URLSource;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ImageCoupon Choreo.
 */
@interface TMBObadMobileMarketing_ImageCoupon_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Transfer an image for updating the coupon or coupon burn.
 */
@interface TMBObadMobileMarketing_ImageCoupon : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_ImageCoupon_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_ImageCoupon Choreo */


/*! group TMBObadMobileMarketing.GetList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@interface TMBObadMobileMarketing_GetList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setID:(NSString*)ID;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@interface TMBObadMobileMarketing_GetList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the list and parameters of a specified list type (i.e. campaigns, coupons, user groups, shop groups, or coupons groups).
 */
@interface TMBObadMobileMarketing_GetList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_GetList_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_GetList Choreo */


/*! group TMBObadMobileMarketing.EditGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditGroup Choreo.
 */
@interface TMBObadMobileMarketing_EditGroup_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setDescription:(NSString*)Description;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setGroupID:(NSString*)GroupID;
	-(void)setMode:(NSString*)Mode;
	-(void)setTitle:(NSString*)Title;
	-(void)setType:(NSString*)Type;
	-(void)setCSVData:(NSString*)CSVData;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditGroup Choreo.
 */
@interface TMBObadMobileMarketing_EditGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to create a new group or update an existing one.
 */
@interface TMBObadMobileMarketing_EditGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_EditGroup_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_EditGroup Choreo */


/*! group TMBObadMobileMarketing.AddCSVData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddCSVData Choreo.
 */
@interface TMBObadMobileMarketing_AddCSVData_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setGroupID:(NSString*)GroupID;
	-(void)setType:(NSString*)Type;
	-(void)setURLSource:(NSString*)URLSource;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCSVData Choreo.
 */
@interface TMBObadMobileMarketing_AddCSVData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Transfer a csv file to add records to a specified group.
 */
@interface TMBObadMobileMarketing_AddCSVData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_AddCSVData_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_AddCSVData Choreo */


/*! group TMBObadMobileMarketing.EditCoupon Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditCoupon Choreo.
 */
@interface TMBObadMobileMarketing_EditCoupon_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCouponId:(NSString*)CouponId;
	-(void)setDesc1:(NSString*)Desc1;
	-(void)setDesc2:(NSString*)Desc2;
	-(void)setDesc3:(NSString*)Desc3;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFrom:(NSString*)From;
	-(void)setMode:(NSString*)Mode;
	-(void)setTitle:(NSString*)Title;
	-(void)setTo:(NSString*)To;
	-(void)setUseOnce:(NSString*)UseOnce;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditCoupon Choreo.
 */
@interface TMBObadMobileMarketing_EditCoupon_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to create a new coupon or update an existing one.
 */
@interface TMBObadMobileMarketing_EditCoupon : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_EditCoupon_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_EditCoupon Choreo */


/*! group TMBObadMobileMarketing.CampaignSend Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CampaignSend Choreo.
 */
@interface TMBObadMobileMarketing_CampaignSend_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignID:(NSString*)CampaignID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignSend Choreo.
 */
@interface TMBObadMobileMarketing_CampaignSend_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Generate a CSV file for sending a campaign.
 */
@interface TMBObadMobileMarketing_CampaignSend : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_CampaignSend_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_CampaignSend Choreo */


/*! group TMBObadMobileMarketing.CouponGroupData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CouponGroupData Choreo.
 */
@interface TMBObadMobileMarketing_CouponGroupData_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCouponGroupID:(NSString*)CouponGroupID;
	-(void)setCouponID:(NSString*)CouponID;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMode:(NSString*)Mode;
	-(void)setCSVData:(NSString*)CSVData;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CouponGroupData Choreo.
 */
@interface TMBObadMobileMarketing_CouponGroupData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to add or remove a coupon from a coupon group.
 */
@interface TMBObadMobileMarketing_CouponGroupData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_CouponGroupData_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_CouponGroupData Choreo */


/*! group TMBObadMobileMarketing.ImageCampaign Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ImageCampaign Choreo.
 */
@interface TMBObadMobileMarketing_ImageCampaign_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCampaignID:(NSString*)CampaignID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setType:(NSString*)Type;
	-(void)setURLSource:(NSString*)URLSource;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ImageCampaign Choreo.
 */
@interface TMBObadMobileMarketing_ImageCampaign_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Transfer an image for updating the email body image or the wap banner of a campaign.
 */
@interface TMBObadMobileMarketing_ImageCampaign : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBObadMobileMarketing_ImageCampaign_Inputs*)newInputSet;
@end

/*! group TMBObadMobileMarketing_ImageCampaign Choreo */
