/*!
 * @TMBObadMobileMarketing.m
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

#import "TMBObadMobileMarketing.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ImageCoupon Choreo.
 */
@implementation TMBObadMobileMarketing_ImageCoupon_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the CouponID input for this Choreo.
	*(integer) The ID of the coupon you want to update
	 */
	-(void)setCouponID:(NSString*)CouponID {
		[super setInput:@"CouponID" toValue:CouponID];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Specify the desired image type to update (i.e. coupon or couponburn). Defaults to coupon.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the URLSource input for this Choreo.
	*(string) The URL where you are hosting the JPG file (i.e. http://mybucket.s3.amazonaws.com/my_image.jpg)
	 */
	-(void)setURLSource:(NSString*)URLSource {
		[super setInput:@"URLSource" toValue:URLSource];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ImageCoupon Choreo.
 */
@implementation TMBObadMobileMarketing_ImageCoupon_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The XML response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Transfer an image for updating the coupon or coupon burn.
 */
@implementation TMBObadMobileMarketing_ImageCoupon

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_ImageCoupon Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/ImageCoupon"] autorelease];
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
		TMBObadMobileMarketing_ImageCoupon_ResultSet *results = [[[TMBObadMobileMarketing_ImageCoupon_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ImageCoupon Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_ImageCoupon_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_ImageCoupon_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@implementation TMBObadMobileMarketing_GetList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(optional, integer) Unique ID for an item.  Defaults to 0 which returns ALL.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Specify the desired item list (i.e. camp, coupon, usergroup, shopgroup, or coupongroup). Defaults to coupon.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@implementation TMBObadMobileMarketing_GetList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the list and parameters of a specified list type (i.e. campaigns, coupons, user groups, shop groups, or coupons groups).
 */
@implementation TMBObadMobileMarketing_GetList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_GetList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/GetList"] autorelease];
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
		TMBObadMobileMarketing_GetList_ResultSet *results = [[[TMBObadMobileMarketing_GetList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_GetList_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_GetList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditGroup Choreo.
 */
@implementation TMBObadMobileMarketing_EditGroup_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(string) The description of the group
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the GroupID input for this Choreo.
	*(integer) The id of the group you need to update. In creation mode, leave blank and the id will be returned in the response.
	 */
	-(void)setGroupID:(NSString*)GroupID {
		[super setInput:@"GroupID" toValue:GroupID];
	}

	/*!
	 * Set the value of the Mode input for this Choreo.
	*(optional, boolean) Specify 0 for creating and 1 for updating. Defaults to 0.
	 */
	-(void)setMode:(NSString*)Mode {
		[super setInput:@"Mode" toValue:Mode];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(string) The title of the group
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of group to perform the action on.  Can be usergroup, shopgroup, or coupongroup. Defaults to usergroup.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the CSVData input for this Choreo.
	*
	 */
	-(void)setCSVData:(NSString*)CSVData {
		[super setInput:@"CSVData" toValue:CSVData];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditGroup Choreo.
 */
@implementation TMBObadMobileMarketing_EditGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to create a new group or update an existing one.
 */
@implementation TMBObadMobileMarketing_EditGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_EditGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/EditGroup"] autorelease];
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
		TMBObadMobileMarketing_EditGroup_ResultSet *results = [[[TMBObadMobileMarketing_EditGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_EditGroup_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_EditGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddCSVData Choreo.
 */
@implementation TMBObadMobileMarketing_AddCSVData_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the GroupID input for this Choreo.
	*(integer) Unique ID for the group you want to update
	 */
	-(void)setGroupID:(NSString*)GroupID {
		[super setInput:@"GroupID" toValue:GroupID];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(string) Specify the desired item list (i.e. camp, coupon, usergroup, shopgroup, or coupongroup). Defaults to 'shopgroup'.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the URLSource input for this Choreo.
	*(string) The URL where you are hosting the CSV data (i.e. http://mybucket.s3.amazonaws.com/my_new_users.csv)
	 */
	-(void)setURLSource:(NSString*)URLSource {
		[super setInput:@"URLSource" toValue:URLSource];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCSVData Choreo.
 */
@implementation TMBObadMobileMarketing_AddCSVData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Transfer a csv file to add records to a specified group.
 */
@implementation TMBObadMobileMarketing_AddCSVData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_AddCSVData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/AddCSVData"] autorelease];
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
		TMBObadMobileMarketing_AddCSVData_ResultSet *results = [[[TMBObadMobileMarketing_AddCSVData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddCSVData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_AddCSVData_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_AddCSVData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditCoupon Choreo.
 */
@implementation TMBObadMobileMarketing_EditCoupon_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the CouponId input for this Choreo.
	*(integer) The ID of the coupon you need to update.  In creation mode, leave this blank, and the ID will be returned in the response.
	 */
	-(void)setCouponId:(NSString*)CouponId {
		[super setInput:@"CouponId" toValue:CouponId];
	}

	/*!
	 * Set the value of the Desc1 input for this Choreo.
	*(string) Description at the TOP of the coupon
	 */
	-(void)setDesc1:(NSString*)Desc1 {
		[super setInput:@"Desc1" toValue:Desc1];
	}

	/*!
	 * Set the value of the Desc2 input for this Choreo.
	*(string) Description at the BOTTOM line 1 of the coupon
	 */
	-(void)setDesc2:(NSString*)Desc2 {
		[super setInput:@"Desc2" toValue:Desc2];
	}

	/*!
	 * Set the value of the Desc3 input for this Choreo.
	*(string) Description of the BOTTOM line 2 of the coupon
	 */
	-(void)setDesc3:(NSString*)Desc3 {
		[super setInput:@"Desc3" toValue:Desc3];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the From input for this Choreo.
	*(date) The first date that the coupon is available (formatted like YYYY/MM/DD)
	 */
	-(void)setFrom:(NSString*)From {
		[super setInput:@"From" toValue:From];
	}

	/*!
	 * Set the value of the Mode input for this Choreo.
	*(optional, boolean) Specify the writing mode. Use '0' for creating or '1'  for updating. Defaults to 0.
	 */
	-(void)setMode:(NSString*)Mode {
		[super setInput:@"Mode" toValue:Mode];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(string) The title of the coupon that will be only used for the console
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the To input for this Choreo.
	*(date) The final date that the coupon is available (formatted like YYYY/MM/DD)
	 */
	-(void)setTo:(NSString*)To {
		[super setInput:@"To" toValue:To];
	}

	/*!
	 * Set the value of the UseOnce input for this Choreo.
	*(optional, boolean) Use '1' for use and burn coupon one time only and '0' for unlimited use and burn. Defaults to 0.
	 */
	-(void)setUseOnce:(NSString*)UseOnce {
		[super setInput:@"UseOnce" toValue:UseOnce];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditCoupon Choreo.
 */
@implementation TMBObadMobileMarketing_EditCoupon_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to create a new coupon or update an existing one.
 */
@implementation TMBObadMobileMarketing_EditCoupon

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_EditCoupon Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/EditCoupon"] autorelease];
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
		TMBObadMobileMarketing_EditCoupon_ResultSet *results = [[[TMBObadMobileMarketing_EditCoupon_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditCoupon Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_EditCoupon_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_EditCoupon_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CampaignSend Choreo.
 */
@implementation TMBObadMobileMarketing_CampaignSend_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignID input for this Choreo.
	*(integer) The ID for the campaign you want to send
	 */
	-(void)setCampaignID:(NSString*)CampaignID {
		[super setInput:@"CampaignID" toValue:CampaignID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of campaign you're sending.  Can be sms, mail, or smsmail. Defaults to sms.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignSend Choreo.
 */
@implementation TMBObadMobileMarketing_CampaignSend_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Generate a CSV file for sending a campaign.
 */
@implementation TMBObadMobileMarketing_CampaignSend

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_CampaignSend Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/CampaignSend"] autorelease];
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
		TMBObadMobileMarketing_CampaignSend_ResultSet *results = [[[TMBObadMobileMarketing_CampaignSend_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CampaignSend Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_CampaignSend_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_CampaignSend_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CouponGroupData Choreo.
 */
@implementation TMBObadMobileMarketing_CouponGroupData_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the CouponGroupID input for this Choreo.
	*(integer) The ID of the coupongroup you need to update
	 */
	-(void)setCouponGroupID:(NSString*)CouponGroupID {
		[super setInput:@"CouponGroupID" toValue:CouponGroupID];
	}

	/*!
	 * Set the value of the CouponID input for this Choreo.
	*(integer) The ID of the coupon you need to update
	 */
	-(void)setCouponID:(NSString*)CouponID {
		[super setInput:@"CouponID" toValue:CouponID];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Mode input for this Choreo.
	*(optional, boolean) Specify 0 for removing or 1 for adding. Defaults to 1.
	 */
	-(void)setMode:(NSString*)Mode {
		[super setInput:@"Mode" toValue:Mode];
	}

	/*!
	 * Set the value of the CSVData input for this Choreo.
	*
	 */
	-(void)setCSVData:(NSString*)CSVData {
		[super setInput:@"CSVData" toValue:CSVData];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CouponGroupData Choreo.
 */
@implementation TMBObadMobileMarketing_CouponGroupData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to add or remove a coupon from a coupon group.
 */
@implementation TMBObadMobileMarketing_CouponGroupData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_CouponGroupData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/CouponGroupData"] autorelease];
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
		TMBObadMobileMarketing_CouponGroupData_ResultSet *results = [[[TMBObadMobileMarketing_CouponGroupData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CouponGroupData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_CouponGroupData_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_CouponGroupData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ImageCampaign Choreo.
 */
@implementation TMBObadMobileMarketing_ImageCampaign_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Private Key for 1 unique distributor - provided by Obad Mobile Marketing
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignID input for this Choreo.
	*(integer) The ID of the campaign you want to update
	 */
	-(void)setCampaignID:(NSString*)CampaignID {
		[super setInput:@"CampaignID" toValue:CampaignID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(integer) Private Key for 1 unique customer to connect with - provided by Obad Mobile Marketing
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(string) The base URL for the server you want to access (i.e. http://10.10.10.1). Set this to the appropriate host for the demo sandbox or production.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Specify the desired image type to modify (i.e. mailimage or wapban). Defaults to mailimage.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the URLSource input for this Choreo.
	*(string) The URL where you are hosting the JPG file (i.e. http://mybucket.s3.amazonaws.com/my_image.jpg)
	 */
	-(void)setURLSource:(NSString*)URLSource {
		[super setInput:@"URLSource" toValue:URLSource];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ImageCampaign Choreo.
 */
@implementation TMBObadMobileMarketing_ImageCampaign_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Obad
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Transfer an image for updating the email body image or the wap banner of a campaign.
 */
@implementation TMBObadMobileMarketing_ImageCampaign

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBObadMobileMarketing_ImageCampaign Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ObadMobileMarketing/ImageCampaign"] autorelease];
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
		TMBObadMobileMarketing_ImageCampaign_ResultSet *results = [[[TMBObadMobileMarketing_ImageCampaign_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ImageCampaign Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBObadMobileMarketing_ImageCampaign_Inputs*)newInputSet {
		return [[[TMBObadMobileMarketing_ImageCampaign_Inputs alloc] init] autorelease];
	}
@end
	