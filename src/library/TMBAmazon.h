/*!
 * @header Temboo iOS SDK Amazon classes
 *
 * Execute Choreographies from the Temboo Amazon bundle.
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

/*! group TMBAmazon.SNS.CreateTopic Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTopic Choreo.
 */
@interface TMBAmazon_SNS_CreateTopic_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setName:(NSString*)Name;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTopic Choreo.
 */
@interface TMBAmazon_SNS_CreateTopic_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new topic that notifications can be published to.
 */
@interface TMBAmazon_SNS_CreateTopic : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_CreateTopic_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_CreateTopic Choreo */


/*! group TMBAmazon.IAM.GetServerCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_GetServerCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setServerCertificateName:(NSString*)ServerCertificateName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_GetServerCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about the specified server certificate.
 */
@interface TMBAmazon_IAM_GetServerCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetServerCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetServerCertificate Choreo */


/*! group TMBAmazon.Marketplace.Products.ListMatchingProducts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMatchingProducts Choreo.
 */
@interface TMBAmazon_Marketplace_Products_ListMatchingProducts_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMatchingProducts Choreo.
 */
@interface TMBAmazon_Marketplace_Products_ListMatchingProducts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of products and their attributes, ordered by relevancy, based on a search query that you specify.
 */
@interface TMBAmazon_Marketplace_Products_ListMatchingProducts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_ListMatchingProducts_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_ListMatchingProducts Choreo */


/*! group TMBAmazon.IAM.DeleteUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@interface TMBAmazon_IAM_DeleteUser_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@interface TMBAmazon_IAM_DeleteUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified user. The user must not belong to any groups, have any keys or signing certificates, or have any attached policies.
 */
@interface TMBAmazon_IAM_DeleteUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteUser_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteUser Choreo */


/*! group TMBAmazon.Marketplace.Reports.ListInventoryReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListInventoryReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_ListInventoryReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInventoryReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_ListInventoryReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getReport;	
@end

/*!
 * Returns a tab-delimited report of open listings. The report contains the SKU, ASIN, Price, and Quantity fields for inventory listings.
 */
@interface TMBAmazon_Marketplace_Reports_ListInventoryReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_ListInventoryReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_ListInventoryReport Choreo */


/*! group TMBAmazon.S3.PutBucketPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketPolicy Choreo.
 */
@interface TMBAmazon_S3_PutBucketPolicy_Inputs : TMBChoreographyInputSet
	-(void)setPolicy:(NSString*)Policy;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketPolicy Choreo.
 */
@interface TMBAmazon_S3_PutBucketPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to add to or replace a policy on a bucket.
 */
@interface TMBAmazon_S3_PutBucketPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketPolicy Choreo */


/*! group TMBAmazon.IAM.GetGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetGroup Choreo.
 */
@interface TMBAmazon_IAM_GetGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGroup Choreo.
 */
@interface TMBAmazon_IAM_GetGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of users that are in the specified group.
 */
@interface TMBAmazon_IAM_GetGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetGroup Choreo */


/*! group TMBAmazon.S3.GetBucketVersioning Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketVersioning Choreo.
 */
@interface TMBAmazon_S3_GetBucketVersioning_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketVersioning Choreo.
 */
@interface TMBAmazon_S3_GetBucketVersioning_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the versioning state of a specified bucket.
 */
@interface TMBAmazon_S3_GetBucketVersioning : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketVersioning_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketVersioning Choreo */


/*! group TMBAmazon.EC2.DescribeAddresses Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeAddresses Choreo.
 */
@interface TMBAmazon_EC2_DescribeAddresses_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllocationId:(NSString*)AllocationId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setPublicIp:(NSString*)PublicIp;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeAddresses Choreo.
 */
@interface TMBAmazon_EC2_DescribeAddresses_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Describes one or more of your Elastic IP addresses.
 */
@interface TMBAmazon_EC2_DescribeAddresses : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeAddresses_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeAddresses Choreo */


/*! group TMBAmazon.SNS.ListSubscriptions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptions Choreo.
 */
@interface TMBAmazon_SNS_ListSubscriptions_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setNextToken:(NSString*)NextToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptions Choreo.
 */
@interface TMBAmazon_SNS_ListSubscriptions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the user's subscriptions. Each call returns a limited list of subscriptions, up to 100.
 */
@interface TMBAmazon_SNS_ListSubscriptions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_ListSubscriptions_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_ListSubscriptions Choreo */


/*! group TMBAmazon.S3.GetBase64EncodedObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBase64EncodedObject Choreo.
 */
@interface TMBAmazon_S3_GetBase64EncodedObject_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setFileName:(NSString*)FileName;
	-(void)setIfMatch:(NSString*)IfMatch;
	-(void)setIfModifiedSince:(NSString*)IfModifiedSince;
	-(void)setIfNoneMatch:(NSString*)IfNoneMatch;
	-(void)setIfUnmodifiedSince:(NSString*)IfUnmodifiedSince;
	-(void)setRange:(NSString*)Range;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBase64EncodedObject Choreo.
 */
@interface TMBAmazon_S3_GetBase64EncodedObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getDeleteMarker;
	-(NSString*)getExpiration;
	-(NSString*)getResponse;
	-(NSString*)getRestore;
	-(NSString*)getServerSideEncryption;
	-(NSString*)getVersionID;
	-(NSString*)getWebsiteRedirectLocation;	
@end

/*!
 * Retrieves a specified item from an Amazon S3 bucket, returns the file content as base64-encoded data, and returns the values of key response headers as output variables if available.
 */
@interface TMBAmazon_S3_GetBase64EncodedObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBase64EncodedObject_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBase64EncodedObject Choreo */


/*! group TMBAmazon.EC2.RunInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RunInstances Choreo.
 */
@interface TMBAmazon_EC2_RunInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDeleteOnTermination:(NSString*)DeleteOnTermination;
	-(void)setDeviceName:(NSString*)DeviceName;
	-(void)setImageId:(NSString*)ImageId;
	-(void)setInstanceType:(NSString*)InstanceType;
	-(void)setIops:(NSString*)Iops;
	-(void)setKernelId:(NSString*)KernelId;
	-(void)setKeyName:(NSString*)KeyName;
	-(void)setMaxCount:(NSString*)MaxCount;
	-(void)setMinCount:(NSString*)MinCount;
	-(void)setMonitoringEnabled:(NSString*)MonitoringEnabled;
	-(void)setNoDevice:(NSString*)NoDevice;
	-(void)setPlacementAvailabilityZone:(NSString*)PlacementAvailabilityZone;
	-(void)setPlacementGroupName:(NSString*)PlacementGroupName;
	-(void)setPlacementTenancy:(NSString*)PlacementTenancy;
	-(void)setRamdiskId:(NSString*)RamdiskId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecurityGroupId:(NSString*)SecurityGroupId;
	-(void)setSecurityGroup:(NSString*)SecurityGroup;
	-(void)setShutdownBehavior:(NSString*)ShutdownBehavior;
	-(void)setSnapshotId:(NSString*)SnapshotId;
	-(void)setSubnetId:(NSString*)SubnetId;
	-(void)setUserData:(NSString*)UserData;
	-(void)setVirtualName:(NSString*)VirtualName;
	-(void)setVolumeSize:(NSString*)VolumeSize;
	-(void)setVolumeType:(NSString*)VolumeType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunInstances Choreo.
 */
@interface TMBAmazon_EC2_RunInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Launches the specified number of instances of an AMI for which you have permissions.
 */
@interface TMBAmazon_EC2_RunInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_RunInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_RunInstances Choreo */


/*! group TMBAmazon.IAM.DeleteUserPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUserPolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteUserPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setPolicyName:(NSString*)PolicyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUserPolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteUserPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified policy associated with the specified user.
 */
@interface TMBAmazon_IAM_DeleteUserPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteUserPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteUserPolicy Choreo */


/*! group TMBAmazon.EC2.CreateSecurityGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateSecurityGroup Choreo.
 */
@interface TMBAmazon_EC2_CreateSecurityGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupDescription:(NSString*)GroupDescription;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVpcId:(NSString*)VpcId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSecurityGroup Choreo.
 */
@interface TMBAmazon_EC2_CreateSecurityGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new EC2 security group.
 */
@interface TMBAmazon_EC2_CreateSecurityGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_CreateSecurityGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_CreateSecurityGroup Choreo */


/*! group TMBAmazon.Marketplace.Products.GetServiceStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetServiceStatus Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetServiceStatus_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetServiceStatus Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetServiceStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getStatus;	
@end

/*!
 * This is the standard method following MWS API GetServiceStatus standard. It can return a GREEN, GREEN_I, YELLOW or RED status.
 */
@interface TMBAmazon_Marketplace_Products_GetServiceStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetServiceStatus_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetServiceStatus Choreo */


/*! group TMBAmazon.IAM.ListGroups Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGroups Choreo.
 */
@interface TMBAmazon_IAM_ListGroups_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setPathPrefix:(NSString*)PathPrefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGroups Choreo.
 */
@interface TMBAmazon_IAM_ListGroups_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of groups and allows you to filter the results with a specific path prefix.
 */
@interface TMBAmazon_IAM_ListGroups : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListGroups_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListGroups Choreo */


/*! group TMBAmazon.Marketplace.Feeds.AddOrUpdateInventoryItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddOrUpdateInventoryItem Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setExpeditedShipping:(NSString*)ExpeditedShipping;
	-(void)setFulfillmentCenterId:(NSString*)FulfillmentCenterId;
	-(void)setItemCondition:(NSString*)ItemCondition;
	-(void)setItemNote:(NSString*)ItemNote;
	-(void)setPrice:(NSString*)Price;
	-(void)setProductIdType:(NSString*)ProductIdType;
	-(void)setProductId:(NSString*)ProductId;
	-(void)setQuantity:(NSString*)Quantity;
	-(void)setSKU:(NSString*)SKU;
	-(void)setTimeToWait:(NSString*)TimeToWait;
	-(void)setWillShipInternationally:(NSString*)WillShipInternationally;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddOrUpdateInventoryItem Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Add or update an individual inventory listing.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_AddOrUpdateInventoryItem Choreo */


/*! group TMBAmazon.FPS.GetAccountActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountActivity Choreo.
 */
@interface TMBAmazon_FPS_GetAccountActivity_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setStartDate:(NSString*)StartDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountActivity Choreo.
 */
@interface TMBAmazon_FPS_GetAccountActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns account transactions from a specified start date.
 */
@interface TMBAmazon_FPS_GetAccountActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_FPS_GetAccountActivity_Inputs*)newInputSet;
@end

/*! group TMBAmazon.FPS_GetAccountActivity Choreo */


/*! group TMBAmazon.S3.DeleteObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@interface TMBAmazon_S3_DeleteObject_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setFileName:(NSString*)FileName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@interface TMBAmazon_S3_DeleteObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified item from an Amazon S3 bucket.
 */
@interface TMBAmazon_S3_DeleteObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteObject_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteObject Choreo */


/*! group TMBAmazon.S3.GetBucketList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketList Choreo.
 */
@interface TMBAmazon_S3_GetBucketList_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setDelimiter:(NSString*)Delimiter;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxKeys:(NSString*)MaxKeys;
	-(void)setPrefix:(NSString*)Prefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketList Choreo.
 */
@interface TMBAmazon_S3_GetBucketList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the items that are in a specified Amazon S3 storage bucket.
 */
@interface TMBAmazon_S3_GetBucketList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketList_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketList Choreo */


/*! group TMBAmazon.IAM.CreateAccountAlias Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccountAlias Choreo.
 */
@interface TMBAmazon_IAM_CreateAccountAlias_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAccountAlias:(NSString*)AccountAlias;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccountAlias Choreo.
 */
@interface TMBAmazon_IAM_CreateAccountAlias_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an alias for your AWS account.
 */
@interface TMBAmazon_IAM_CreateAccountAlias : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateAccountAlias_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateAccountAlias Choreo */


/*! group TMBAmazon.RDS.DescribeDBInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeDBInstances Choreo.
 */
@interface TMBAmazon_RDS_DescribeDBInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxRecords:(NSString*)MaxRecords;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeDBInstances Choreo.
 */
@interface TMBAmazon_RDS_DescribeDBInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about privisioned database instances.
 */
@interface TMBAmazon_RDS_DescribeDBInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DescribeDBInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DescribeDBInstances Choreo */


/*! group TMBAmazon.SQS.SetQueueAttributes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SetQueueAttributes Choreo.
 */
@interface TMBAmazon_SQS_SetQueueAttributes_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAttributeName:(NSString*)AttributeName;
	-(void)setAttributeValue:(NSString*)AttributeValue;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetQueueAttributes Choreo.
 */
@interface TMBAmazon_SQS_SetQueueAttributes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets an attribute of a specified queue.
 */
@interface TMBAmazon_SQS_SetQueueAttributes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_SetQueueAttributes_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_SetQueueAttributes Choreo */


/*! group TMBAmazon.Marketplace.Feeds.GetFeedSubmissionResult Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFeedSubmissionResult Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFeedSubmissionId:(NSString*)FeedSubmissionId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFeedSubmissionResult Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getContentMD5Header;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed processing report and the Content-MD5 header.
 */
@interface TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_GetFeedSubmissionResult Choreo */


/*! group TMBAmazon.Marketplace.Feeds.SubmitFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SubmitFeed Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_SubmitFeed_Inputs : TMBChoreographyInputSet
	-(void)setFeedData:(NSString*)FeedData;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFeedType:(NSString*)FeedType;
	-(void)setTimeToWait:(NSString*)TimeToWait;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SubmitFeed Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_SubmitFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Submits a feed, of the specified type, to Amazon Marketplace.
 */
@interface TMBAmazon_Marketplace_Feeds_SubmitFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_SubmitFeed_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_SubmitFeed Choreo */


/*! group TMBAmazon.S3.GetBucketACL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketACL Choreo.
 */
@interface TMBAmazon_S3_GetBucketACL_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketACL Choreo.
 */
@interface TMBAmazon_S3_GetBucketACL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the access control list (ACL) of a bucket.
 */
@interface TMBAmazon_S3_GetBucketACL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketACL_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketACL Choreo */


/*! group TMBAmazon.SQS.DeleteQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteQueue Choreo.
 */
@interface TMBAmazon_SQS_DeleteQueue_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteQueue Choreo.
 */
@interface TMBAmazon_SQS_DeleteQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a queue with a specified queue URL.
 */
@interface TMBAmazon_SQS_DeleteQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_DeleteQueue_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_DeleteQueue Choreo */


/*! group TMBAmazon.Marketplace.Feeds.DeleteInventoryItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInventoryItem Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_Inputs : TMBChoreographyInputSet
	-(void)setSKU:(NSString*)SKU;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDeleteOptions:(NSString*)DeleteOptions;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInventoryItem Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Deletes an individual inventory listings from a Seller Central account with a given SKU.
 */
@interface TMBAmazon_Marketplace_Feeds_DeleteInventoryItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_DeleteInventoryItem Choreo */


/*! group TMBAmazon.IAM.UploadSigningCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadSigningCertificate Choreo.
 */
@interface TMBAmazon_IAM_UploadSigningCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCertificateBody:(NSString*)CertificateBody;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadSigningCertificate Choreo.
 */
@interface TMBAmazon_IAM_UploadSigningCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads an X.509 signing certificate and associates it with the specified user.
 */
@interface TMBAmazon_IAM_UploadSigningCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UploadSigningCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UploadSigningCertificate Choreo */


/*! group TMBAmazon.Marketplace.Feeds.GetFeedSubmissionList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFeedSubmissionList Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFeedProcessingStatusList:(NSString*)FeedProcessingStatusList;
	-(void)setFeedSubmissionIdList:(NSString*)FeedSubmissionIdList;
	-(void)setFeedTypeList:(NSString*)FeedTypeList;
	-(void)setMaxCount:(NSString*)MaxCount;
	-(void)setSubmittedFromDate:(NSString*)SubmittedFromDate;
	-(void)setSubmittedToDate:(NSString*)SubmittedToDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFeedSubmissionList Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFeedProcessingStatus;
	-(NSString*)getFeedSubmissionId;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of all feed submissions submitted in the previous 90 days.
 */
@interface TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_GetFeedSubmissionList Choreo */


/*! group TMBAmazon.Marketplace.Products.GetProductCategoriesForASIN Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetProductCategoriesForASIN Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_Inputs : TMBChoreographyInputSet
	-(void)setASIN:(NSString*)ASIN;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProductCategoriesForASIN Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the product categories that a product belongs to, including parent categories back to the root for the marketplace. This method uses a MarketplaceId and an ASIN to uniquely identify a product.
 */
@interface TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetProductCategoriesForASIN Choreo */


/*! group TMBAmazon.IAM.GetInstanceProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_GetInstanceProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_GetInstanceProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about the specified instance profile, including the instance profile's path, ARN, and RoleId.
 */
@interface TMBAmazon_IAM_GetInstanceProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetInstanceProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetInstanceProfile Choreo */


/*! group TMBAmazon.Marketplace.Reports.MerchantListingsReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MerchantListingsReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_MerchantListingsReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MerchantListingsReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_MerchantListingsReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getReport;	
@end

/*!
 * Returns a tab-delimited report of active listings.
 */
@interface TMBAmazon_Marketplace_Reports_MerchantListingsReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_MerchantListingsReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_MerchantListingsReport Choreo */


/*! group TMBAmazon.IAM.UpdateAccessKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccessKey Choreo.
 */
@interface TMBAmazon_IAM_UpdateAccessKey_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAccessKeyId:(NSString*)AccessKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStatus:(NSString*)Status;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccessKey Choreo.
 */
@interface TMBAmazon_IAM_UpdateAccessKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Changes the status of the specified access key from Active to Inactive, or vice versa. This action can be used to disable a user's key as part of a key rotation workflow.
 */
@interface TMBAmazon_IAM_UpdateAccessKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateAccessKey_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateAccessKey Choreo */


/*! group TMBAmazon.EC2.CreateKeyPair Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateKeyPair Choreo.
 */
@interface TMBAmazon_EC2_CreateKeyPair_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setKeyName:(NSString*)KeyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateKeyPair Choreo.
 */
@interface TMBAmazon_EC2_CreateKeyPair_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new 2048-bit RSA key pair with the specified name. 
 */
@interface TMBAmazon_EC2_CreateKeyPair : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_CreateKeyPair_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_CreateKeyPair Choreo */


/*! group TMBAmazon.IAM.UpdateServerCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_UpdateServerCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setNewPath:(NSString*)NewPath;
	-(void)setNewServerCertificateName:(NSString*)NewServerCertificateName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setServerCertificateName:(NSString*)ServerCertificateName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_UpdateServerCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the name and/or the path of the specified server certificate.
 */
@interface TMBAmazon_IAM_UpdateServerCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateServerCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateServerCertificate Choreo */


/*! group TMBAmazon.S3.PutBucketVersioning Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketVersioning Choreo.
 */
@interface TMBAmazon_S3_PutBucketVersioning_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setStatus:(NSString*)Status;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketVersioning Choreo.
 */
@interface TMBAmazon_S3_PutBucketVersioning_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the versioning state of an existing bucket.
 */
@interface TMBAmazon_S3_PutBucketVersioning : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketVersioning_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketVersioning Choreo */


/*! group TMBAmazon.EC2.DescribeInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeInstances Choreo.
 */
@interface TMBAmazon_EC2_DescribeInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeInstances Choreo.
 */
@interface TMBAmazon_EC2_DescribeInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information on EC2 instances associated with your AWS account.
 */
@interface TMBAmazon_EC2_DescribeInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeInstances Choreo */


/*! group TMBAmazon.Marketplace.OutboundShipments.CancelFulfillmentOrder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CancelFulfillmentOrder Choreo.
 */
@interface TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSellerFulfillmentOrderId:(NSString*)SellerFulfillmentOrderId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelFulfillmentOrder Choreo.
 */
@interface TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Makes a requests to Amazon to cancel an existing fulfillment order.
 */
@interface TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.OutboundShipments_CancelFulfillmentOrder Choreo */


/*! group TMBAmazon.EC2.ModifyImageAttribute Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ModifyImageAttribute Choreo.
 */
@interface TMBAmazon_EC2_ModifyImageAttribute_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAddGroup:(NSString*)AddGroup;
	-(void)setAddUserId:(NSString*)AddUserId;
	-(void)setDescription:(NSString*)Description;
	-(void)setImageId:(NSString*)ImageId;
	-(void)setProductCode:(NSString*)ProductCode;
	-(void)setRemoveGroup:(NSString*)RemoveGroup;
	-(void)setRemoveUserId:(NSString*)RemoveUserId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ModifyImageAttribute Choreo.
 */
@interface TMBAmazon_EC2_ModifyImageAttribute_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Modifies an attribute of an AMI.
 */
@interface TMBAmazon_EC2_ModifyImageAttribute : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_ModifyImageAttribute_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_ModifyImageAttribute Choreo */


/*! group TMBAmazon.IAM.ListUserPolicies Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUserPolicies Choreo.
 */
@interface TMBAmazon_IAM_ListUserPolicies_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserPolicies Choreo.
 */
@interface TMBAmazon_IAM_ListUserPolicies_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the names of the policies associated with the specified user.
 */
@interface TMBAmazon_IAM_ListUserPolicies : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListUserPolicies_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListUserPolicies Choreo */


/*! group TMBAmazon.IAM.UpdateAccountPasswordPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccountPasswordPolicy Choreo.
 */
@interface TMBAmazon_IAM_UpdateAccountPasswordPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllowUsersToChangePassword:(NSString*)AllowUsersToChangePassword;
	-(void)setExpirePasswords:(NSString*)ExpirePasswords;
	-(void)setMaxPasswordsAge:(NSString*)MaxPasswordsAge;
	-(void)setMinimumPasswordLength:(NSString*)MinimumPasswordLength;
	-(void)setRequireLowercaseCharacters:(NSString*)RequireLowercaseCharacters;
	-(void)setRequireNumbers:(NSString*)RequireNumbers;
	-(void)setRequireSymbols:(NSString*)RequireSymbols;
	-(void)setRequireUppercaseCharacters:(NSString*)RequireUppercaseCharacters;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccountPasswordPolicy Choreo.
 */
@interface TMBAmazon_IAM_UpdateAccountPasswordPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the password policy settings for the account.
 */
@interface TMBAmazon_IAM_UpdateAccountPasswordPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateAccountPasswordPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateAccountPasswordPolicy Choreo */


/*! group TMBAmazon.Marketplace.Reports.RequestReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RequestReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_RequestReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setReportOptions:(NSString*)ReportOptions;
	-(void)setReportType:(NSString*)ReportType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RequestReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_RequestReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a report request and submits the request to Amazon MWS.
 */
@interface TMBAmazon_Marketplace_Reports_RequestReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_RequestReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_RequestReport Choreo */


/*! group TMBAmazon.EC2.DetachVolume Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DetachVolume Choreo.
 */
@interface TMBAmazon_EC2_DetachVolume_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDevice:(NSString*)Device;
	-(void)setForce:(NSString*)Force;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVolumeId:(NSString*)VolumeId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DetachVolume Choreo.
 */
@interface TMBAmazon_EC2_DetachVolume_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Detaches an Amazon EBS volume from an instance.
 */
@interface TMBAmazon_EC2_DetachVolume : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DetachVolume_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DetachVolume Choreo */


/*! group TMBAmazon.S3.GetBucketRequestPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketRequestPayment Choreo.
 */
@interface TMBAmazon_S3_GetBucketRequestPayment_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketRequestPayment Choreo.
 */
@interface TMBAmazon_S3_GetBucketRequestPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the request payment configuration of a specified bucket.
 */
@interface TMBAmazon_S3_GetBucketRequestPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketRequestPayment_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketRequestPayment Choreo */


/*! group TMBAmazon.Marketplace.Reports.GetReportCount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReportCount Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportCount_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAcknowledged:(NSString*)Acknowledged;
	-(void)setAvailableFromDate:(NSString*)AvailableFromDate;
	-(void)setAvailableToDate:(NSString*)AvailableToDate;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setReportType:(NSString*)ReportType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportCount Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportCount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCount;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the number of your available Amazon Marketplace reports, ready for download, that were generated in the last 90 days.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportCount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_GetReportCount_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_GetReportCount Choreo */


/*! group TMBAmazon.SQS.ReceiveMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReceiveMessage Choreo.
 */
@interface TMBAmazon_SQS_ReceiveMessage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAttributeName:(NSString*)AttributeName;
	-(void)setMaxNumberOfMessages:(NSString*)MaxNumberOfMessages;
	-(void)setQueueName:(NSString*)QueueName;
	-(void)setVisibilityTimeout:(NSString*)VisibilityTimeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReceiveMessage Choreo.
 */
@interface TMBAmazon_SQS_ReceiveMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns one or more messages from the specified queue.
 */
@interface TMBAmazon_SQS_ReceiveMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_ReceiveMessage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_ReceiveMessage Choreo */


/*! group TMBAmazon.EC2.AttachVolume Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AttachVolume Choreo.
 */
@interface TMBAmazon_EC2_AttachVolume_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDevice:(NSString*)Device;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVolumeId:(NSString*)VolumeId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AttachVolume Choreo.
 */
@interface TMBAmazon_EC2_AttachVolume_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Attaches an Amazon EBS volume to a running instance and exposes it as the specified device.
 */
@interface TMBAmazon_EC2_AttachVolume : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_AttachVolume_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_AttachVolume Choreo */


/*! group TMBAmazon.IAM.GetRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRole Choreo.
 */
@interface TMBAmazon_IAM_GetRole_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRole Choreo.
 */
@interface TMBAmazon_IAM_GetRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about the specified role, including the role's path, ARN, RoleId, and the policy granting permission to EC2 to assume the role.
 */
@interface TMBAmazon_IAM_GetRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetRole_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetRole Choreo */


/*! group TMBAmazon.S3.GetBucketNotification Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketNotification Choreo.
 */
@interface TMBAmazon_S3_GetBucketNotification_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketNotification Choreo.
 */
@interface TMBAmazon_S3_GetBucketNotification_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the notification configuration of a specified bucket.
 */
@interface TMBAmazon_S3_GetBucketNotification : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketNotification_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketNotification Choreo */


/*! group TMBAmazon.EC2.DeregisterImage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeregisterImage Choreo.
 */
@interface TMBAmazon_EC2_DeregisterImage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setImageId:(NSString*)ImageId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeregisterImage Choreo.
 */
@interface TMBAmazon_EC2_DeregisterImage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deregisters the specified AMI.
 */
@interface TMBAmazon_EC2_DeregisterImage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DeregisterImage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DeregisterImage Choreo */


/*! group TMBAmazon.IAM.GetAccountSummary Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountSummary Choreo.
 */
@interface TMBAmazon_IAM_GetAccountSummary_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountSummary Choreo.
 */
@interface TMBAmazon_IAM_GetAccountSummary_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves account level information about account entity usage and IAM quotas.
 */
@interface TMBAmazon_IAM_GetAccountSummary : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetAccountSummary_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetAccountSummary Choreo */


/*! group TMBAmazon.RDS.DescribeEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeEvents Choreo.
 */
@interface TMBAmazon_RDS_DescribeEvents_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDuration:(NSString*)Duration;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxRecords:(NSString*)MaxRecords;
	-(void)setSourceIdentifier:(NSString*)SourceIdentifier;
	-(void)setSourceType:(NSString*)SourceType;
	-(void)setStartTime:(NSString*)StartTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeEvents Choreo.
 */
@interface TMBAmazon_RDS_DescribeEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns events related to DB Instances, DB Security Groups, DB Snapshots and DB Parameter Groups for the past 14 days.
 */
@interface TMBAmazon_RDS_DescribeEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DescribeEvents_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DescribeEvents Choreo */


/*! group TMBAmazon.S3.DeleteBucketTagging Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketTagging Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketTagging_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketTagging Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketTagging_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a billing tag set from the specified bucket.
 */
@interface TMBAmazon_S3_DeleteBucketTagging : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteBucketTagging_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteBucketTagging Choreo */


/*! group TMBAmazon.EC2.ImportKeyPair Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ImportKeyPair Choreo.
 */
@interface TMBAmazon_EC2_ImportKeyPair_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setKeyName:(NSString*)KeyName;
	-(void)setPublicKeyMaterial:(NSString*)PublicKeyMaterial;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ImportKeyPair Choreo.
 */
@interface TMBAmazon_EC2_ImportKeyPair_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Imports the public key from an RSA key pair that you created with a third-party tool.
 */
@interface TMBAmazon_EC2_ImportKeyPair : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_ImportKeyPair_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_ImportKeyPair Choreo */


/*! group TMBAmazon.S3.PutBucketACL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketACL Choreo.
 */
@interface TMBAmazon_S3_PutBucketACL_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAccessControlList:(NSString*)AccessControlList;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setOwnerEmailAddress:(NSString*)OwnerEmailAddress;
	-(void)setOwnerId:(NSString*)OwnerId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketACL Choreo.
 */
@interface TMBAmazon_S3_PutBucketACL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the access control list (ACL) permissions for an existing bucket.
 */
@interface TMBAmazon_S3_PutBucketACL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketACL_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketACL Choreo */


/*! group TMBAmazon.Marketplace.Products.GetLowestOfferListingsForSKU Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLowestOfferListingsForSKU Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setExcludeMe:(NSString*)ExcludeMe;
	-(void)setItemCondition:(NSString*)ItemCondition;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSellerSKU:(NSString*)SellerSKU;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLowestOfferListingsForSKU Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the lowest price offer listings for specific products by item condition. This method uses a MarketplaceId and SellerSKU values to uniquely identify products.
 */
@interface TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetLowestOfferListingsForSKU Choreo */


/*! group TMBAmazon.IAM.DeleteInstanceProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_DeleteInstanceProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_DeleteInstanceProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified instance profile. 
 */
@interface TMBAmazon_IAM_DeleteInstanceProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteInstanceProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteInstanceProfile Choreo */


/*! group TMBAmazon.RDS.DeleteDBSnapshot Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_DeleteDBSnapshot_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_DeleteDBSnapshot_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified database snapshot.
 */
@interface TMBAmazon_RDS_DeleteDBSnapshot : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DeleteDBSnapshot_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DeleteDBSnapshot Choreo */


/*! group TMBAmazon.Marketplace.Products.GetProductCategoriesForSKU Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetProductCategoriesForSKU Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSellerSKU:(NSString*)SellerSKU;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProductCategoriesForSKU Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the product categories that a product belongs to, including parent categories back to the root for the marketplace. This method uses a MarketplaceId and a SellerSKU to uniquely identify a product.
 */
@interface TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetProductCategoriesForSKU Choreo */


/*! group TMBAmazon.IAM.ListInstanceProfilesForRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListInstanceProfilesForRole Choreo.
 */
@interface TMBAmazon_IAM_ListInstanceProfilesForRole_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInstanceProfilesForRole Choreo.
 */
@interface TMBAmazon_IAM_ListInstanceProfilesForRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the names of the policies associated with the specified role. 
 */
@interface TMBAmazon_IAM_ListInstanceProfilesForRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListInstanceProfilesForRole_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListInstanceProfilesForRole Choreo */


/*! group TMBAmazon.S3.GetObjectACL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetObjectACL Choreo.
 */
@interface TMBAmazon_S3_GetObjectACL_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setFileName:(NSString*)FileName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetObjectACL Choreo.
 */
@interface TMBAmazon_S3_GetObjectACL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the access control list (ACL) of a file or object.
 */
@interface TMBAmazon_S3_GetObjectACL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetObjectACL_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetObjectACL Choreo */


/*! group TMBAmazon.SNS.DeleteTopic Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTopic Choreo.
 */
@interface TMBAmazon_SNS_DeleteTopic_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTopic Choreo.
 */
@interface TMBAmazon_SNS_DeleteTopic_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified topic and all its subscriptions.
 */
@interface TMBAmazon_SNS_DeleteTopic : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_DeleteTopic_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_DeleteTopic Choreo */


/*! group TMBAmazon.RDS.RestoreDBInstanceFromDBSnapshot Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RestoreDBInstanceFromDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade;
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone;
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
	-(void)setDBName:(NSString*)DBName;
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier;
	-(void)setEngine:(NSString*)Engine;
	-(void)setLicenseModel:(NSString*)LicenseModel;
	-(void)setMultiAZ:(NSString*)MultiAZ;
	-(void)setPort:(NSString*)Port;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreDBInstanceFromDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new DB Instance from a DB snapshot.
 */
@interface TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_RestoreDBInstanceFromDBSnapshot Choreo */


/*! group TMBAmazon.S3.PutBucket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucket Choreo.
 */
@interface TMBAmazon_S3_PutBucket_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setLocationConstraint:(NSString*)LocationConstraint;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucket Choreo.
 */
@interface TMBAmazon_S3_PutBucket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new bucket in your Amazon S3 account.
 */
@interface TMBAmazon_S3_PutBucket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucket_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucket Choreo */


/*! group TMBAmazon.EC2.StopInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StopInstances Choreo.
 */
@interface TMBAmazon_EC2_StopInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StopInstances Choreo.
 */
@interface TMBAmazon_EC2_StopInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Stops an Amazon EBS-backed instance.
 */
@interface TMBAmazon_EC2_StopInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_StopInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_StopInstances Choreo */


/*! group TMBAmazon.Marketplace.Reports.GetReportRequestList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReportRequestList Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportRequestList_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMaxCount:(NSString*)MaxCount;
	-(void)setReportProcessingStatusList:(NSString*)ReportProcessingStatusList;
	-(void)setReportRequestIdList:(NSString*)ReportRequestIdList;
	-(void)setReportTypeList:(NSString*)ReportTypeList;
	-(void)setRequestedFromDate:(NSString*)RequestedFromDate;
	-(void)setRequestedToDate:(NSString*)RequestedToDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportRequestList Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportRequestList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of report requests that you can use to get the ReportProcessingStatus and ReportId in order to retrieve a report.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportRequestList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_GetReportRequestList_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_GetReportRequestList Choreo */


/*! group TMBAmazon.S3.ZipBucket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipBucket Choreo.
 */
@interface TMBAmazon_S3_ZipBucket_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setDelimiter:(NSString*)Delimiter;
	-(void)setPrefix:(NSString*)Prefix;
	-(void)setZipFileLocation:(NSString*)ZipFileLocation;
	-(void)setZipFileName:(NSString*)ZipFileName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipBucket Choreo.
 */
@interface TMBAmazon_S3_ZipBucket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getURL;	
@end

/*!
 * Creates a zip file containing all objects within the specified bucket and returns a download link for the new compressed file.
 */
@interface TMBAmazon_S3_ZipBucket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_ZipBucket_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_ZipBucket Choreo */


/*! group TMBAmazon.IAM.ListMFADevices Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMFADevices Choreo.
 */
@interface TMBAmazon_IAM_ListMFADevices_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMFADevices Choreo.
 */
@interface TMBAmazon_IAM_ListMFADevices_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the MFA devices. If the request includes the user name, then this action lists all the MFA devices associated with the specified user name. If you do not specify a user name, IAM determines the user name implicitly based on the AWS Access Key ID signing the request.
 */
@interface TMBAmazon_IAM_ListMFADevices : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListMFADevices_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListMFADevices Choreo */


/*! group TMBAmazon.EC2.DescribeTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeTags Choreo.
 */
@interface TMBAmazon_EC2_DescribeTags_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeTags Choreo.
 */
@interface TMBAmazon_EC2_DescribeTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Describes one or more of the tags for your EC2 resources. 
 */
@interface TMBAmazon_EC2_DescribeTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeTags_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeTags Choreo */


/*! group TMBAmazon.RDS.RestoreDBInstanceToPointInTime Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RestoreDBInstanceToPointInTime Choreo.
 */
@interface TMBAmazon_RDS_RestoreDBInstanceToPointInTime_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade;
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone;
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass;
	-(void)setDBName:(NSString*)DBName;
	-(void)setEngine:(NSString*)Engine;
	-(void)setLicenseModel:(NSString*)LicenseModel;
	-(void)setMultiAZ:(NSString*)MultiAZ;
	-(void)setPort:(NSString*)Port;
	-(void)setRestoreTime:(NSString*)RestoreTime;
	-(void)setSourceDBInstanceIdentifier:(NSString*)SourceDBInstanceIdentifier;
	-(void)setTargetDBInstanceIdentifier:(NSString*)TargetDBInstanceIdentifier;
	-(void)setUseLatestRestorableTime:(NSString*)UseLatestRestorableTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreDBInstanceToPointInTime Choreo.
 */
@interface TMBAmazon_RDS_RestoreDBInstanceToPointInTime_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Restores a DB Instance to an specified point-in-time.
 */
@interface TMBAmazon_RDS_RestoreDBInstanceToPointInTime : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_RestoreDBInstanceToPointInTime_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_RestoreDBInstanceToPointInTime Choreo */


/*! group TMBAmazon.S3.CopyObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CopyObject Choreo.
 */
@interface TMBAmazon_S3_CopyObject_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setFileToCopy:(NSString*)FileToCopy;
	-(void)setIfMatch:(NSString*)IfMatch;
	-(void)setIfModifiedSince:(NSString*)IfModifiedSince;
	-(void)setIfNoneMatch:(NSString*)IfNoneMatch;
	-(void)setIfUnmodifiedSince:(NSString*)IfUnmodifiedSince;
	-(void)setNewFileName:(NSString*)NewFileName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setServerSideEncryption:(NSString*)ServerSideEncryption;
	-(void)setStorageClass:(NSString*)StorageClass;
	-(void)setWebsiteRedirectLocation:(NSString*)WebsiteRedirectLocation;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyObject Choreo.
 */
@interface TMBAmazon_S3_CopyObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Makes a copy of an existing object in S3 Storage.
 */
@interface TMBAmazon_S3_CopyObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_CopyObject_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_CopyObject Choreo */


/*! group TMBAmazon.SNS.Subscribe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Subscribe Choreo.
 */
@interface TMBAmazon_SNS_Subscribe_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setProtocol:(NSString*)Protocol;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Subscribe Choreo.
 */
@interface TMBAmazon_SNS_Subscribe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sends the endpoint a confirmation message in preparation for subscribing an endpoint.
 */
@interface TMBAmazon_SNS_Subscribe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_Subscribe_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_Subscribe Choreo */


/*! group TMBAmazon.Marketplace.Inventory.ListInventorySupplyByDateRange Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListInventorySupplyByDateRange Choreo.
 */
@interface TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setQueryStartDateTime:(NSString*)QueryStartDateTime;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setResponseGroup:(NSString*)ResponseGroup;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInventorySupplyByDateRange Choreo.
 */
@interface TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNextPageToken;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the availability of a seller's inventory using a given date range.
 */
@interface TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Inventory_ListInventorySupplyByDateRange Choreo */


/*! group TMBAmazon.S3.ZipObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipObject Choreo.
 */
@interface TMBAmazon_S3_ZipObject_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setFileName:(NSString*)FileName;
	-(void)setZipFileLocation:(NSString*)ZipFileLocation;
	-(void)setZipFileName:(NSString*)ZipFileName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipObject Choreo.
 */
@interface TMBAmazon_S3_ZipObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getURL;	
@end

/*!
 * Creates a zipped version of the specified S3 file and returns a download link for the new compressed file.
 */
@interface TMBAmazon_S3_ZipObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_ZipObject_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_ZipObject Choreo */


/*! group TMBAmazon.EC2.DisassociateAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DisassociateAddress Choreo.
 */
@interface TMBAmazon_EC2_DisassociateAddress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAssociationId:(NSString*)AssociationId;
	-(void)setPublicIp:(NSString*)PublicIp;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DisassociateAddress Choreo.
 */
@interface TMBAmazon_EC2_DisassociateAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Disassociates an Elastic IP address from the instance or network interface it's associated with.
 */
@interface TMBAmazon_EC2_DisassociateAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DisassociateAddress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DisassociateAddress Choreo */


/*! group TMBAmazon.IAM.DeleteRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRole Choreo.
 */
@interface TMBAmazon_IAM_DeleteRole_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRole Choreo.
 */
@interface TMBAmazon_IAM_DeleteRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified role.
 */
@interface TMBAmazon_IAM_DeleteRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteRole_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteRole Choreo */


/*! group TMBAmazon.S3.GetBucketTagging Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketTagging Choreo.
 */
@interface TMBAmazon_S3_GetBucketTagging_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketTagging Choreo.
 */
@interface TMBAmazon_S3_GetBucketTagging_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the billing tag set associated with the specified bucket.
 */
@interface TMBAmazon_S3_GetBucketTagging : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketTagging_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketTagging Choreo */


/*! group TMBAmazon.IAM.CreateInstanceProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_CreateInstanceProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_CreateInstanceProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new instance profile.
 */
@interface TMBAmazon_IAM_CreateInstanceProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateInstanceProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateInstanceProfile Choreo */


/*! group TMBAmazon.IAM.DeleteAccessKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAccessKey Choreo.
 */
@interface TMBAmazon_IAM_DeleteAccessKey_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAccessKeyId:(NSString*)AccessKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAccessKey Choreo.
 */
@interface TMBAmazon_IAM_DeleteAccessKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the access key associated with the specified user.
 */
@interface TMBAmazon_IAM_DeleteAccessKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteAccessKey_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteAccessKey Choreo */


/*! group TMBAmazon.EC2.CreateTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTags Choreo.
 */
@interface TMBAmazon_EC2_CreateTags_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResourceId:(NSString*)ResourceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTagKey:(NSString*)TagKey;
	-(void)setTagValue:(NSString*)TagValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTags Choreo.
 */
@interface TMBAmazon_EC2_CreateTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds or overwrites one or more tags for the specified EC2 resource or resources.
 */
@interface TMBAmazon_EC2_CreateTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_CreateTags_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_CreateTags Choreo */


/*! group TMBAmazon.IAM.GetLoginProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_GetLoginProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_GetLoginProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the user name and password create date for the specified user.
 */
@interface TMBAmazon_IAM_GetLoginProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetLoginProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetLoginProfile Choreo */


/*! group TMBAmazon.Marketplace.Feeds.AddOrUpdateInventoryItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddOrUpdateInventoryItems Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_Inputs : TMBChoreographyInputSet
	-(void)setFeedData:(NSString*)FeedData;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddOrUpdateInventoryItems Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Adds or updates one or more inventory listings in your Seller Central account with a given flat flile.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_AddOrUpdateInventoryItems Choreo */


/*! group TMBAmazon.IAM.CreateAccessKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccessKey Choreo.
 */
@interface TMBAmazon_IAM_CreateAccessKey_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccessKey Choreo.
 */
@interface TMBAmazon_IAM_CreateAccessKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new AWS Secret Access Key and corresponding AWS Access Key ID for a specified user.
 */
@interface TMBAmazon_IAM_CreateAccessKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateAccessKey_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateAccessKey Choreo */


/*! group TMBAmazon.EC2.RevokeSecurityGroupIngress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RevokeSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_EC2_RevokeSecurityGroupIngress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupId:(NSString*)GroupId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setIpPermissionsCidrIp:(NSString*)IpPermissionsCidrIp;
	-(void)setIpPermissionsFromPort:(NSString*)IpPermissionsFromPort;
	-(void)setIpPermissionsGroupId:(NSString*)IpPermissionsGroupId;
	-(void)setIpPermissionsGroupName:(NSString*)IpPermissionsGroupName;
	-(void)setIpPermissionsIpProtocol:(NSString*)IpPermissionsIpProtocol;
	-(void)setIpPermissionsToPort:(NSString*)IpPermissionsToPort;
	-(void)setIpPermissionsUserId:(NSString*)IpPermissionsUserId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RevokeSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_EC2_RevokeSecurityGroupIngress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes one or more ingress rules from a security group.
 */
@interface TMBAmazon_EC2_RevokeSecurityGroupIngress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_RevokeSecurityGroupIngress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_RevokeSecurityGroupIngress Choreo */


/*! group TMBAmazon.EC2.DescribeKeyPairs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeKeyPairs Choreo.
 */
@interface TMBAmazon_EC2_DescribeKeyPairs_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setKeyName:(NSString*)KeyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeKeyPairs Choreo.
 */
@interface TMBAmazon_EC2_DescribeKeyPairs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Describes one or more of your key pairs.
 */
@interface TMBAmazon_EC2_DescribeKeyPairs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeKeyPairs_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeKeyPairs Choreo */


/*! group TMBAmazon.Marketplace.Reports.GetReportList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReportList Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportList_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAcknowledged:(NSString*)Acknowledged;
	-(void)setAvailableFromDate:(NSString*)AvailableFromDate;
	-(void)setAvailableToDate:(NSString*)AvailableToDate;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMaxCount:(NSString*)MaxCount;
	-(void)setReportRequestId:(NSString*)ReportRequestId;
	-(void)setReportType:(NSString*)ReportType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportList Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getReportId;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of reports that were created in the previous 90 days.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_GetReportList_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_GetReportList Choreo */


/*! group TMBAmazon.IAM.ListGroupPolicies Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGroupPolicies Choreo.
 */
@interface TMBAmazon_IAM_ListGroupPolicies_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGroupPolicies Choreo.
 */
@interface TMBAmazon_IAM_ListGroupPolicies_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the names of the policies associated with the specified group.
 */
@interface TMBAmazon_IAM_ListGroupPolicies : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListGroupPolicies_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListGroupPolicies Choreo */


/*! group TMBAmazon.EC2.StartInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StartInstances Choreo.
 */
@interface TMBAmazon_EC2_StartInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StartInstances Choreo.
 */
@interface TMBAmazon_EC2_StartInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to start an Amazon Machine Image by specifying its Instance ID.
 */
@interface TMBAmazon_EC2_StartInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_StartInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_StartInstances Choreo */


/*! group TMBAmazon.S3.DeleteBucketLifecycle Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketLifecycle Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketLifecycle_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketLifecycle Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketLifecycle_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the lifecycle configuration from the specified bucket.
 */
@interface TMBAmazon_S3_DeleteBucketLifecycle : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteBucketLifecycle_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteBucketLifecycle Choreo */


/*! group TMBAmazon.S3.PutObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutObject Choreo.
 */
@interface TMBAmazon_S3_PutObject_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setFileName:(NSString*)FileName;
	-(void)setServerSideEncryption:(NSString*)ServerSideEncryption;
	-(void)setStorageClass:(NSString*)StorageClass;
	-(void)setWebsiteRedirectLocation:(NSString*)WebsiteRedirectLocation;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutObject Choreo.
 */
@interface TMBAmazon_S3_PutObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads a file to your Amazon S3 storage bucket.
 */
@interface TMBAmazon_S3_PutObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutObject_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutObject Choreo */


/*! group TMBAmazon.S3.GetBucketPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketPolicy Choreo.
 */
@interface TMBAmazon_S3_GetBucketPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketPolicy Choreo.
 */
@interface TMBAmazon_S3_GetBucketPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the policy of a specified bucket.
 */
@interface TMBAmazon_S3_GetBucketPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketPolicy Choreo */


/*! group TMBAmazon.IAM.ResyncMFADevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ResyncMFADevice Choreo.
 */
@interface TMBAmazon_IAM_ResyncMFADevice_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAuthenticationCode1:(NSString*)AuthenticationCode1;
	-(void)setAuthenticationCode2:(NSString*)AuthenticationCode2;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSerialNumber:(NSString*)SerialNumber;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ResyncMFADevice Choreo.
 */
@interface TMBAmazon_IAM_ResyncMFADevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Synchronizes the specified MFA device with AWS servers.
 */
@interface TMBAmazon_IAM_ResyncMFADevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ResyncMFADevice_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ResyncMFADevice Choreo */


/*! group TMBAmazon.Marketplace.Orders.ListOrdersWithSellerOrderId Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListOrdersWithSellerOrderId Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCreatedAfter:(NSString*)CreatedAfter;
	-(void)setCreatedBefore:(NSString*)CreatedBefore;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMaxResultsPerPage:(NSString*)MaxResultsPerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSellerOrderId:(NSString*)SellerOrderId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListOrdersWithSellerOrderId Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns orders associated with a seller order id that you specify.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Orders_ListOrdersWithSellerOrderId Choreo */


/*! group TMBAmazon.EC2.DescribeVolumes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeVolumes Choreo.
 */
@interface TMBAmazon_EC2_DescribeVolumes_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVolumeId:(NSString*)VolumeId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeVolumes Choreo.
 */
@interface TMBAmazon_EC2_DescribeVolumes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information for one or more of your Amazon EBS volumes.
 */
@interface TMBAmazon_EC2_DescribeVolumes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeVolumes_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeVolumes Choreo */


/*! group TMBAmazon.S3.PutObjectACL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutObjectACL Choreo.
 */
@interface TMBAmazon_S3_PutObjectACL_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAccessControlList:(NSString*)AccessControlList;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCannedACL:(NSString*)CannedACL;
	-(void)setFileName:(NSString*)FileName;
	-(void)setOwnerEmailAddress:(NSString*)OwnerEmailAddress;
	-(void)setOwnerId:(NSString*)OwnerId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutObjectACL Choreo.
 */
@interface TMBAmazon_S3_PutObjectACL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the access control list (ACL) permissions for an existing object.
 */
@interface TMBAmazon_S3_PutObjectACL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutObjectACL_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutObjectACL Choreo */


/*! group TMBAmazon.S3.DeleteBucket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucket Choreo.
 */
@interface TMBAmazon_S3_DeleteBucket_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucket Choreo.
 */
@interface TMBAmazon_S3_DeleteBucket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a bucket from your Amazon S3 account.
 */
@interface TMBAmazon_S3_DeleteBucket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteBucket_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteBucket Choreo */


/*! group TMBAmazon.S3.PutBucketRequestPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketRequestPayment Choreo.
 */
@interface TMBAmazon_S3_PutBucketRequestPayment_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setPayer:(NSString*)Payer;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketRequestPayment Choreo.
 */
@interface TMBAmazon_S3_PutBucketRequestPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the request payment configuration of a bucket. 
 */
@interface TMBAmazon_S3_PutBucketRequestPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketRequestPayment_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketRequestPayment Choreo */


/*! group TMBAmazon.EC2.RegisterImage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RegisterImage Choreo.
 */
@interface TMBAmazon_EC2_RegisterImage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setArchitecture:(NSString*)Architecture;
	-(void)setDeleteOnTermination:(NSString*)DeleteOnTermination;
	-(void)setDescription:(NSString*)Description;
	-(void)setDeviceName:(NSString*)DeviceName;
	-(void)setImageLocation:(NSString*)ImageLocation;
	-(void)setIops:(NSString*)Iops;
	-(void)setKernelId:(NSString*)KernelId;
	-(void)setName:(NSString*)Name;
	-(void)setNoDevice:(NSString*)NoDevice;
	-(void)setRamdiskId:(NSString*)RamdiskId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRootDeviceName:(NSString*)RootDeviceName;
	-(void)setSnapshotId:(NSString*)SnapshotId;
	-(void)setVirtualName:(NSString*)VirtualName;
	-(void)setVolumeSize:(NSString*)VolumeSize;
	-(void)setVolumeType:(NSString*)VolumeType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RegisterImage Choreo.
 */
@interface TMBAmazon_EC2_RegisterImage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Registers a new AMI with Amazon EC2.
 */
@interface TMBAmazon_EC2_RegisterImage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_RegisterImage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_RegisterImage Choreo */


/*! group TMBAmazon.IAM.AddUserToGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddUserToGroup Choreo.
 */
@interface TMBAmazon_IAM_AddUserToGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddUserToGroup Choreo.
 */
@interface TMBAmazon_IAM_AddUserToGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a specified user to a specified group.
 */
@interface TMBAmazon_IAM_AddUserToGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_AddUserToGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_AddUserToGroup Choreo */


/*! group TMBAmazon.SNS.ListSubscriptionsByTopic Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptionsByTopic Choreo.
 */
@interface TMBAmazon_SNS_ListSubscriptionsByTopic_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setNextToken:(NSString*)NextToken;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptionsByTopic Choreo.
 */
@interface TMBAmazon_SNS_ListSubscriptionsByTopic_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the subscriptions for a specified topic.
 */
@interface TMBAmazon_SNS_ListSubscriptionsByTopic : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_ListSubscriptionsByTopic_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_ListSubscriptionsByTopic Choreo */


/*! group TMBAmazon.IAM.GetRolePolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRolePolicy Choreo.
 */
@interface TMBAmazon_IAM_GetRolePolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setPolicyName:(NSString*)PolicyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRolePolicy Choreo.
 */
@interface TMBAmazon_IAM_GetRolePolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the specified policy document for the specified role.
 */
@interface TMBAmazon_IAM_GetRolePolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetRolePolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetRolePolicy Choreo */


/*! group TMBAmazon.Marketplace.Orders.ListOrders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListOrders Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrders_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCreatedAfter:(NSString*)CreatedAfter;
	-(void)setCreatedBefore:(NSString*)CreatedBefore;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFullfillmentChannel:(NSString*)FullfillmentChannel;
	-(void)setMaxResultsPerPage:(NSString*)MaxResultsPerPage;
	-(void)setOrderStatus:(NSString*)OrderStatus;
	-(void)setPaymentMethod:(NSString*)PaymentMethod;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListOrders Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns orders created during a time frame that you specify.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Orders_ListOrders_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Orders_ListOrders Choreo */


/*! group TMBAmazon.SQS.AddPermission Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddPermission Choreo.
 */
@interface TMBAmazon_SQS_AddPermission_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId1:(NSString*)AWSAccountId1;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setActionName:(NSString*)ActionName;
	-(void)setLabel:(NSString*)Label;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPermission Choreo.
 */
@interface TMBAmazon_SQS_AddPermission_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a permission to a queue for a specific principal user.
 */
@interface TMBAmazon_SQS_AddPermission : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_AddPermission_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_AddPermission Choreo */


/*! group TMBAmazon.RDS.DeleteDBInstance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDBInstance Choreo.
 */
@interface TMBAmazon_RDS_DeleteDBInstance_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDBInstance Choreo.
 */
@interface TMBAmazon_RDS_DeleteDBInstance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified database instance.
 */
@interface TMBAmazon_RDS_DeleteDBInstance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DeleteDBInstance_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DeleteDBInstance Choreo */


/*! group TMBAmazon.S3.PutBucketWebsiteRedirectAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketWebsiteRedirectAll Choreo.
 */
@interface TMBAmazon_S3_PutBucketWebsiteRedirectAll_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setHostName:(NSString*)HostName;
	-(void)setProtocol:(NSString*)Protocol;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketWebsiteRedirectAll Choreo.
 */
@interface TMBAmazon_S3_PutBucketWebsiteRedirectAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Configures the specified bucket as a website and redirects all web requests to the designated hostname.
 */
@interface TMBAmazon_S3_PutBucketWebsiteRedirectAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketWebsiteRedirectAll_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketWebsiteRedirectAll Choreo */


/*! group TMBAmazon.EC2.RebootInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RebootInstances Choreo.
 */
@interface TMBAmazon_EC2_RebootInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RebootInstances Choreo.
 */
@interface TMBAmazon_EC2_RebootInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Reboot an instance by specifying the instance id.
 */
@interface TMBAmazon_EC2_RebootInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_RebootInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_RebootInstances Choreo */


/*! group TMBAmazon.Marketplace.Reports.GetReportById Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReportById Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportById_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setReportId:(NSString*)ReportId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportById Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportById_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getContentMD5Header;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the contents of a report with a given report id.
 */
@interface TMBAmazon_Marketplace_Reports_GetReportById : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_GetReportById_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_GetReportById Choreo */


/*! group TMBAmazon.SNS.ConfirmSubscription Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ConfirmSubscription Choreo.
 */
@interface TMBAmazon_SNS_ConfirmSubscription_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAuthenticateOnUnsubscribed:(NSString*)AuthenticateOnUnsubscribed;
	-(void)setToken:(NSString*)Token;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ConfirmSubscription Choreo.
 */
@interface TMBAmazon_SNS_ConfirmSubscription_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Verifies that the endpoint owner wishes to receive messages by verifying the token sent during the Subscribe action.
 */
@interface TMBAmazon_SNS_ConfirmSubscription : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_ConfirmSubscription_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_ConfirmSubscription Choreo */


/*! group TMBAmazon.Marketplace.Products.GetCompetitivePricingForASIN Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompetitivePricingForASIN Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_Inputs : TMBChoreographyInputSet
	-(void)setASIN:(NSString*)ASIN;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompetitivePricingForASIN Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the current competitive pricing of products, based on  ASIN values and the MarketplaceId that you specify.
 */
@interface TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetCompetitivePricingForASIN Choreo */


/*! group TMBAmazon.FPS.GetTransaction Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTransaction Choreo.
 */
@interface TMBAmazon_FPS_GetTransaction_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setSubscriptionId:(NSString*)SubscriptionId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransaction Choreo.
 */
@interface TMBAmazon_FPS_GetTransaction_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns transactions for a specified subscription id.
 */
@interface TMBAmazon_FPS_GetTransaction : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_FPS_GetTransaction_Inputs*)newInputSet;
@end

/*! group TMBAmazon.FPS_GetTransaction Choreo */


/*! group TMBAmazon.Marketplace.Reports.CancelReportRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CancelReportRequest Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_CancelReportRequest_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setReportProcessingStatus:(NSString*)ReportProcessingStatus;
	-(void)setReportRequestId:(NSString*)ReportRequestId;
	-(void)setReportType:(NSString*)ReportType;
	-(void)setRequestedFromDate:(NSString*)RequestedFromDate;
	-(void)setRequestedToDate:(NSString*)RequestedToDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelReportRequest Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_CancelReportRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCount;
	-(NSString*)getResponse;	
@end

/*!
 * Cancels one or more report requests.
 */
@interface TMBAmazon_Marketplace_Reports_CancelReportRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_CancelReportRequest_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_CancelReportRequest Choreo */


/*! group TMBAmazon.EC2.CreateImage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateImage Choreo.
 */
@interface TMBAmazon_EC2_CreateImage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDeleteOnTermination:(NSString*)DeleteOnTermination;
	-(void)setDescription:(NSString*)Description;
	-(void)setDeviceName:(NSString*)DeviceName;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setIops:(NSString*)Iops;
	-(void)setName:(NSString*)Name;
	-(void)setNoDevice:(NSString*)NoDevice;
	-(void)setNoReboot:(NSString*)NoReboot;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSnapshotId:(NSString*)SnapshotId;
	-(void)setVirtualName:(NSString*)VirtualName;
	-(void)setVolumeSize:(NSString*)VolumeSize;
	-(void)setVolumeType:(NSString*)VolumeType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateImage Choreo.
 */
@interface TMBAmazon_EC2_CreateImage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an Amazon Machine Image from an Amazon EBS-backed instance. The image can be used later to launch other identical servers.
 */
@interface TMBAmazon_EC2_CreateImage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_CreateImage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_CreateImage Choreo */


/*! group TMBAmazon.SQS.CreateQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateQueue Choreo.
 */
@interface TMBAmazon_SQS_CreateQueue_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDefaultVisibilityTimeout:(NSString*)DefaultVisibilityTimeout;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQueue Choreo.
 */
@interface TMBAmazon_SQS_CreateQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new queue with a specified queue name.
 */
@interface TMBAmazon_SQS_CreateQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_CreateQueue_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_CreateQueue Choreo */


/*! group TMBAmazon.S3.GetBucketLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketLocation Choreo.
 */
@interface TMBAmazon_S3_GetBucketLocation_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketLocation Choreo.
 */
@interface TMBAmazon_S3_GetBucketLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLocationConstraint;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the Region where the bucket is stored. 
 */
@interface TMBAmazon_S3_GetBucketLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketLocation_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketLocation Choreo */


/*! group TMBAmazon.EC2.DescribeSnapshots Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeSnapshots Choreo.
 */
@interface TMBAmazon_EC2_DescribeSnapshots_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setOwner:(NSString*)Owner;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRestorableBy:(NSString*)RestorableBy;
	-(void)setSnapshotId:(NSString*)SnapshotId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeSnapshots Choreo.
 */
@interface TMBAmazon_EC2_DescribeSnapshots_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information on available Amazon EBS snapshots.
 */
@interface TMBAmazon_EC2_DescribeSnapshots : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeSnapshots_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeSnapshots Choreo */


/*! group TMBAmazon.RDS.DescribeDBSnapshot Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_DescribeDBSnapshot_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier;
	-(void)setMaxRecords:(NSString*)MaxRecords;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_DescribeDBSnapshot_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about DB Snapshots.
 */
@interface TMBAmazon_RDS_DescribeDBSnapshot : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DescribeDBSnapshot_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DescribeDBSnapshot Choreo */


/*! group TMBAmazon.Marketplace.Reports.UpdateReportAcknowledgements Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateReportAcknowledgements Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAcknowledged:(NSString*)Acknowledged;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setReportId:(NSString*)ReportId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateReportAcknowledgements Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the acknowledged status of a report.
 */
@interface TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_UpdateReportAcknowledgements Choreo */


/*! group TMBAmazon.Marketplace.Feeds.DeleteInventoryItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInventoryItems Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_Inputs : TMBChoreographyInputSet
	-(void)setSKUs:(NSString*)SKUs;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDeleteOptions:(NSString*)DeleteOptions;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInventoryItems Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Deletes inventory listings from a Seller Central account with a given flat file of SKUs.
 */
@interface TMBAmazon_Marketplace_Feeds_DeleteInventoryItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_DeleteInventoryItems Choreo */


/*! group TMBAmazon.IAM.UpdateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@interface TMBAmazon_IAM_UpdateUser_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setNewPath:(NSString*)NewPath;
	-(void)setNewUserName:(NSString*)NewUserName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@interface TMBAmazon_IAM_UpdateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the name and/or the path of a specified user.
 */
@interface TMBAmazon_IAM_UpdateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateUser_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateUser Choreo */


/*! group TMBAmazon.Marketplace.Reports.MerchantListingsLiteReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MerchantListingsLiteReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MerchantListingsLiteReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getReport;	
@end

/*!
 * Returns a tab-delimited flat file active listings report that contains only the SKU, ASIN, Price, and Quantity fields for items that have a quantity greater than zero.
 */
@interface TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_MerchantListingsLiteReport Choreo */


/*! group TMBAmazon.EC2.DescribeImages Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeImages Choreo.
 */
@interface TMBAmazon_EC2_DescribeImages_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setExecutableBy:(NSString*)ExecutableBy;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setImageId:(NSString*)ImageId;
	-(void)setOwner:(NSString*)Owner;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeImages Choreo.
 */
@interface TMBAmazon_EC2_DescribeImages_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about Amazon Machine Image(s) that are available to you.
 */
@interface TMBAmazon_EC2_DescribeImages : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeImages_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeImages Choreo */


/*! group TMBAmazon.EC2.AuthorizeSecurityGroupIngress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AuthorizeSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_EC2_AuthorizeSecurityGroupIngress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupId:(NSString*)GroupId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setIpPermissionsCidrIp:(NSString*)IpPermissionsCidrIp;
	-(void)setIpPermissionsFromPort:(NSString*)IpPermissionsFromPort;
	-(void)setIpPermissionsGroupId:(NSString*)IpPermissionsGroupId;
	-(void)setIpPermissionsGroupName:(NSString*)IpPermissionsGroupName;
	-(void)setIpPermissionsIpProtocol:(NSString*)IpPermissionsIpProtocol;
	-(void)setIpPermissionsToPort:(NSString*)IpPermissionsToPort;
	-(void)setIpPermissionsUserId:(NSString*)IpPermissionsUserId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AuthorizeSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_EC2_AuthorizeSecurityGroupIngress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds an ingress rule to a security group.
 */
@interface TMBAmazon_EC2_AuthorizeSecurityGroupIngress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_AuthorizeSecurityGroupIngress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_AuthorizeSecurityGroupIngress Choreo */


/*! group TMBAmazon.RDS.RebootDBInstance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RebootDBInstance Choreo.
 */
@interface TMBAmazon_RDS_RebootDBInstance_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RebootDBInstance Choreo.
 */
@interface TMBAmazon_RDS_RebootDBInstance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Reboots a specified database instance.
 */
@interface TMBAmazon_RDS_RebootDBInstance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_RebootDBInstance_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_RebootDBInstance Choreo */


/*! group TMBAmazon.RDS.RevokeDBSecurityGroupIngress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RevokeDBSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_RDS_RevokeDBSecurityGroupIngress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCIDRIP:(NSString*)CIDRIP;
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName;
	-(void)setEC2SecurityGroupName:(NSString*)EC2SecurityGroupName;
	-(void)setEC2SecurityGroupOwnerId:(NSString*)EC2SecurityGroupOwnerId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RevokeDBSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_RDS_RevokeDBSecurityGroupIngress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Revokes access from a DBSecurityGroup for previously authorized IP ranges or EC2 Security Groups.
 */
@interface TMBAmazon_RDS_RevokeDBSecurityGroupIngress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_RevokeDBSecurityGroupIngress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_RevokeDBSecurityGroupIngress Choreo */


/*! group TMBAmazon.IAM.DeleteAccountAlias Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAccountAlias Choreo.
 */
@interface TMBAmazon_IAM_DeleteAccountAlias_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAccountAlias:(NSString*)AccountAlias;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAccountAlias Choreo.
 */
@interface TMBAmazon_IAM_DeleteAccountAlias_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified AWS account alias.
 */
@interface TMBAmazon_IAM_DeleteAccountAlias : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteAccountAlias_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteAccountAlias Choreo */


/*! group TMBAmazon.IAM.DeactivateMFADevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeactivateMFADevice Choreo.
 */
@interface TMBAmazon_IAM_DeactivateMFADevice_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSerialNumber:(NSString*)SerialNumber;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeactivateMFADevice Choreo.
 */
@interface TMBAmazon_IAM_DeactivateMFADevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.
 */
@interface TMBAmazon_IAM_DeactivateMFADevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeactivateMFADevice_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeactivateMFADevice Choreo */


/*! group TMBAmazon.IAM.CreateVirtualMFADevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateVirtualMFADevice Choreo.
 */
@interface TMBAmazon_IAM_CreateVirtualMFADevice_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVirtualMFADeviceName:(NSString*)VirtualMFADeviceName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateVirtualMFADevice Choreo.
 */
@interface TMBAmazon_IAM_CreateVirtualMFADevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new virtual MFA device for the AWS account.
 */
@interface TMBAmazon_IAM_CreateVirtualMFADevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateVirtualMFADevice_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateVirtualMFADevice Choreo */


/*! group TMBAmazon.RDS.DescribeDBSecurityGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeDBSecurityGroup Choreo.
 */
@interface TMBAmazon_RDS_DescribeDBSecurityGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxRecords:(NSString*)MaxRecords;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeDBSecurityGroup Choreo.
 */
@interface TMBAmazon_RDS_DescribeDBSecurityGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of DBSecurityGroup descriptions. The list will can be filtered by specifying a DBSecurityGroupName.
 */
@interface TMBAmazon_RDS_DescribeDBSecurityGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DescribeDBSecurityGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DescribeDBSecurityGroup Choreo */


/*! group TMBAmazon.IAM.ListUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUsers Choreo.
 */
@interface TMBAmazon_IAM_ListUsers_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setPathPrefix:(NSString*)PathPrefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUsers Choreo.
 */
@interface TMBAmazon_IAM_ListUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the users that have the specified path prefix. If there are none, the action returns an empty list.
 */
@interface TMBAmazon_IAM_ListUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListUsers_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListUsers Choreo */


/*! group TMBAmazon.IAM.GetUserPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserPolicy Choreo.
 */
@interface TMBAmazon_IAM_GetUserPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setPolicyName:(NSString*)PolicyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserPolicy Choreo.
 */
@interface TMBAmazon_IAM_GetUserPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the specified policy document for the specified user.
 */
@interface TMBAmazon_IAM_GetUserPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetUserPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetUserPolicy Choreo */


/*! group TMBAmazon.IAM.ListVirtualMFADevices Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListVirtualMFADevices Choreo.
 */
@interface TMBAmazon_IAM_ListVirtualMFADevices_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAssignmentStatus:(NSString*)AssignmentStatus;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListVirtualMFADevices Choreo.
 */
@interface TMBAmazon_IAM_ListVirtualMFADevices_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the virtual MFA devices under the AWS account.
 */
@interface TMBAmazon_IAM_ListVirtualMFADevices : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListVirtualMFADevices_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListVirtualMFADevices Choreo */


/*! group TMBAmazon.RDS.ModifyDBInstance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ModifyDBInstance Choreo.
 */
@interface TMBAmazon_RDS_ModifyDBInstance_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllocatedStorage:(NSString*)AllocatedStorage;
	-(void)setAllowMajorVersionUpgrade:(NSString*)AllowMajorVersionUpgrade;
	-(void)setApplyImmediately:(NSString*)ApplyImmediately;
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade;
	-(void)setBackupRetentionPeriod:(NSString*)BackupRetentionPeriod;
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
	-(void)setDBParameterGroupName:(NSString*)DBParameterGroupName;
	-(void)setDBSecurityGroup:(NSString*)DBSecurityGroup;
	-(void)setEngineVersion:(NSString*)EngineVersion;
	-(void)setMasterUserPassword:(NSString*)MasterUserPassword;
	-(void)setMultiAZ:(NSString*)MultiAZ;
	-(void)setPreferredBackupWindow:(NSString*)PreferredBackupWindow;
	-(void)setPreferredMaintenanceWindow:(NSString*)PreferredMaintenanceWindow;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ModifyDBInstance Choreo.
 */
@interface TMBAmazon_RDS_ModifyDBInstance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Modify settings for a DB Instance. You can change one or more database configuration parameters by specifying values for the Choreo inputs.
 */
@interface TMBAmazon_RDS_ModifyDBInstance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_ModifyDBInstance_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_ModifyDBInstance Choreo */


/*! group TMBAmazon.EC2.CreateSnapshot Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateSnapshot Choreo.
 */
@interface TMBAmazon_EC2_CreateSnapshot_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDescription:(NSString*)Description;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVolumeId:(NSString*)VolumeId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSnapshot Choreo.
 */
@interface TMBAmazon_EC2_CreateSnapshot_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create a snapshot from a specified EBS volume.
 */
@interface TMBAmazon_EC2_CreateSnapshot : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_CreateSnapshot_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_CreateSnapshot Choreo */


/*! group TMBAmazon.EC2.AllocateAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AllocateAddress Choreo.
 */
@interface TMBAmazon_EC2_AllocateAddress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDomain:(NSString*)Domain;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AllocateAddress Choreo.
 */
@interface TMBAmazon_EC2_AllocateAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Acquires an Elastic IP address for use with your AWS account.
 */
@interface TMBAmazon_EC2_AllocateAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_AllocateAddress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_AllocateAddress Choreo */


/*! group TMBAmazon.IAM.ListRolePolicies Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRolePolicies Choreo.
 */
@interface TMBAmazon_IAM_ListRolePolicies_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRolePolicies Choreo.
 */
@interface TMBAmazon_IAM_ListRolePolicies_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the names of the policies associated with the specified role. 
 */
@interface TMBAmazon_IAM_ListRolePolicies : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListRolePolicies_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListRolePolicies Choreo */


/*! group TMBAmazon.RDS.DeleteDBSecurityGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDBSecurityGroup Choreo.
 */
@interface TMBAmazon_RDS_DeleteDBSecurityGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDBSecurityGroup Choreo.
 */
@interface TMBAmazon_RDS_DeleteDBSecurityGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified database security group.
 */
@interface TMBAmazon_RDS_DeleteDBSecurityGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_DeleteDBSecurityGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_DeleteDBSecurityGroup Choreo */


/*! group TMBAmazon.SQS.SendMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendMessage Choreo.
 */
@interface TMBAmazon_SQS_SendMessage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMessageBody:(NSString*)MessageBody;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMessage Choreo.
 */
@interface TMBAmazon_SQS_SendMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sends a message to a specified queue.
 */
@interface TMBAmazon_SQS_SendMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_SendMessage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_SendMessage Choreo */


/*! group TMBAmazon.IAM.ListServerCertificates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListServerCertificates Choreo.
 */
@interface TMBAmazon_IAM_ListServerCertificates_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setPathPrefix:(NSString*)PathPrefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListServerCertificates Choreo.
 */
@interface TMBAmazon_IAM_ListServerCertificates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the server certificates that have the specified path prefix. If none exist, the action returns an empty list.
 */
@interface TMBAmazon_IAM_ListServerCertificates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListServerCertificates_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListServerCertificates Choreo */


/*! group TMBAmazon.IAM.DeleteSigningCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSigningCertificate Choreo.
 */
@interface TMBAmazon_IAM_DeleteSigningCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCertificateId:(NSString*)CertificateId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSigningCertificate Choreo.
 */
@interface TMBAmazon_IAM_DeleteSigningCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified signing certificate associated with the specified user.
 */
@interface TMBAmazon_IAM_DeleteSigningCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteSigningCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteSigningCertificate Choreo */


/*! group TMBAmazon.S3.PutBucketCORS Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketCORS Choreo.
 */
@interface TMBAmazon_S3_PutBucketCORS_Inputs : TMBChoreographyInputSet
	-(void)setCORSConfiguration:(NSString*)CORSConfiguration;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllowedHeader:(NSString*)AllowedHeader;
	-(void)setAllowedMethod:(NSString*)AllowedMethod;
	-(void)setAllowedOrigin:(NSString*)AllowedOrigin;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setExposeHeader:(NSString*)ExposeHeader;
	-(void)setID:(NSString*)ID;
	-(void)setMaxAgeSeconds:(NSString*)MaxAgeSeconds;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketCORS Choreo.
 */
@interface TMBAmazon_S3_PutBucketCORS_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the CORS (Cross-Origin Resource Sharing) configuration for a specified bucket.
 */
@interface TMBAmazon_S3_PutBucketCORS : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketCORS_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketCORS Choreo */


/*! group TMBAmazon.IAM.GetGroupPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetGroupPolicy Choreo.
 */
@interface TMBAmazon_IAM_GetGroupPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setPolicyName:(NSString*)PolicyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGroupPolicy Choreo.
 */
@interface TMBAmazon_IAM_GetGroupPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the specified policy document for the specified group.
 */
@interface TMBAmazon_IAM_GetGroupPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetGroupPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetGroupPolicy Choreo */


/*! group TMBAmazon.IAM.ChangePassword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ChangePassword Choreo.
 */
@interface TMBAmazon_IAM_ChangePassword_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setNewPassword:(NSString*)NewPassword;
	-(void)setOldPassword:(NSString*)OldPassword;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChangePassword Choreo.
 */
@interface TMBAmazon_IAM_ChangePassword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows the authenticating user to change their password.
 */
@interface TMBAmazon_IAM_ChangePassword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ChangePassword_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ChangePassword Choreo */


/*! group TMBAmazon.EC2.TerminateInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TerminateInstances Choreo.
 */
@interface TMBAmazon_EC2_TerminateInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TerminateInstances Choreo.
 */
@interface TMBAmazon_EC2_TerminateInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Shuts down one or more instances.
 */
@interface TMBAmazon_EC2_TerminateInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_TerminateInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_TerminateInstances Choreo */


/*! group TMBAmazon.S3.GetBucketLifecycle Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketLifecycle Choreo.
 */
@interface TMBAmazon_S3_GetBucketLifecycle_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketLifecycle Choreo.
 */
@interface TMBAmazon_S3_GetBucketLifecycle_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the lifecycle configuration information set on the bucket.
 */
@interface TMBAmazon_S3_GetBucketLifecycle : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketLifecycle_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketLifecycle Choreo */


/*! group TMBAmazon.IAM.DeleteGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteGroup Choreo.
 */
@interface TMBAmazon_IAM_DeleteGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteGroup Choreo.
 */
@interface TMBAmazon_IAM_DeleteGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified group.
 */
@interface TMBAmazon_IAM_DeleteGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteGroup Choreo */


/*! group TMBAmazon.Marketplace.Reports.RetrieveReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_RetrieveReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setReportType:(NSString*)ReportType;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_RetrieveReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getReport;	
@end

/*!
 * Creates a report request of any report type, polls for the status of the report, and downloads the report when it's available.
 */
@interface TMBAmazon_Marketplace_Reports_RetrieveReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_RetrieveReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_RetrieveReport Choreo */


/*! group TMBAmazon.EC2.DeleteSnapshot Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSnapshot Choreo.
 */
@interface TMBAmazon_EC2_DeleteSnapshot_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSnapshotId:(NSString*)SnapshotId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSnapshot Choreo.
 */
@interface TMBAmazon_EC2_DeleteSnapshot_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a snapshot using a snapshot id that you specify.
 */
@interface TMBAmazon_EC2_DeleteSnapshot : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DeleteSnapshot_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DeleteSnapshot Choreo */


/*! group TMBAmazon.SNS.AddPermission Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddPermission Choreo.
 */
@interface TMBAmazon_SNS_AddPermission_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setActionName:(NSString*)ActionName;
	-(void)setLabel:(NSString*)Label;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPermission Choreo.
 */
@interface TMBAmazon_SNS_AddPermission_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a statement for a topic's access control policy which allows an AWS account to have access to the specified Amazon SNS actions.
 */
@interface TMBAmazon_SNS_AddPermission : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_AddPermission_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_AddPermission Choreo */


/*! group TMBAmazon.IAM.EnableMFADevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EnableMFADevice Choreo.
 */
@interface TMBAmazon_IAM_EnableMFADevice_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAuthenticationCode1:(NSString*)AuthenticationCode1;
	-(void)setAuthenticationCode2:(NSString*)AuthenticationCode2;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSerialNumber:(NSString*)SerialNumber;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EnableMFADevice Choreo.
 */
@interface TMBAmazon_IAM_EnableMFADevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Enables the specified MFA device and associates it with the specified user name. When enabled, the MFA device is required for every subsequent login by the user name associated with the device.
 */
@interface TMBAmazon_IAM_EnableMFADevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_EnableMFADevice_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_EnableMFADevice Choreo */


/*! group TMBAmazon.IAM.UpdateLoginProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_UpdateLoginProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMustChangePassword:(NSString*)MustChangePassword;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_UpdateLoginProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Changes the password for the specified user.
 */
@interface TMBAmazon_IAM_UpdateLoginProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateLoginProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateLoginProfile Choreo */


/*! group TMBAmazon.S3.PutBucketLifecycle Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketLifecycle Choreo.
 */
@interface TMBAmazon_S3_PutBucketLifecycle_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCustomLifecycleConfiguration:(NSString*)CustomLifecycleConfiguration;
	-(void)setDateOfExpiration:(NSString*)DateOfExpiration;
	-(void)setLifecycleId:(NSString*)LifecycleId;
	-(void)setNumberOfDays:(NSString*)NumberOfDays;
	-(void)setPrefix:(NSString*)Prefix;
	-(void)setStatus:(NSString*)Status;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketLifecycle Choreo.
 */
@interface TMBAmazon_S3_PutBucketLifecycle_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets lifecycle configuration for your bucket. This is used to remove objects from a bucket automatically after a certain time or at a certain date.
 */
@interface TMBAmazon_S3_PutBucketLifecycle : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketLifecycle_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketLifecycle Choreo */


/*! group TMBAmazon.S3.GetService Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetService Choreo.
 */
@interface TMBAmazon_S3_GetService_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetService Choreo.
 */
@interface TMBAmazon_S3_GetService_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of buckets owned by the authenticated user.
 */
@interface TMBAmazon_S3_GetService : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetService_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetService Choreo */


/*! group TMBAmazon.S3.PutBucketWebsiteRedirect Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketWebsiteRedirect Choreo.
 */
@interface TMBAmazon_S3_PutBucketWebsiteRedirect_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setCustomWebsiteRedirection:(NSString*)CustomWebsiteRedirection;
	-(void)setErrorDocument:(NSString*)ErrorDocument;
	-(void)setHostName:(NSString*)HostName;
	-(void)setHttpErrorCodeReturnedEquals:(NSString*)HttpErrorCodeReturnedEquals;
	-(void)setHttpRedirectCode:(NSString*)HttpRedirectCode;
	-(void)setKeyPrefixEquals:(NSString*)KeyPrefixEquals;
	-(void)setProtocol:(NSString*)Protocol;
	-(void)setReplaceKeyPrefixWith:(NSString*)ReplaceKeyPrefixWith;
	-(void)setReplaceKeyWith:(NSString*)ReplaceKeyWith;
	-(void)setSuffix:(NSString*)Suffix;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketWebsiteRedirect Choreo.
 */
@interface TMBAmazon_S3_PutBucketWebsiteRedirect_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Configures the specified bucket as a website and sets the web request redirects to a designated endpoint.
 */
@interface TMBAmazon_S3_PutBucketWebsiteRedirect : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketWebsiteRedirect_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketWebsiteRedirect Choreo */


/*! group TMBAmazon.IAM.DeleteGroupPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteGroupPolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteGroupPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setPolicyName:(NSString*)PolicyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteGroupPolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteGroupPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified policy that is associated with the specified group.
 */
@interface TMBAmazon_IAM_DeleteGroupPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteGroupPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteGroupPolicy Choreo */


/*! group TMBAmazon.EC2.MonitorInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MonitorInstances Choreo.
 */
@interface TMBAmazon_EC2_MonitorInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MonitorInstances Choreo.
 */
@interface TMBAmazon_EC2_MonitorInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Enable monitoring for a specified instance.
 */
@interface TMBAmazon_EC2_MonitorInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_MonitorInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_MonitorInstances Choreo */


/*! group TMBAmazon.IAM.ListAccountAliases Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAccountAliases Choreo.
 */
@interface TMBAmazon_IAM_ListAccountAliases_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAccountAliases Choreo.
 */
@interface TMBAmazon_IAM_ListAccountAliases_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the account aliases associated with the account. 
 */
@interface TMBAmazon_IAM_ListAccountAliases : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListAccountAliases_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListAccountAliases Choreo */


/*! group TMBAmazon.IAM.ListGroupsForUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGroupsForUser Choreo.
 */
@interface TMBAmazon_IAM_ListGroupsForUser_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setPathPrefix:(NSString*)PathPrefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGroupsForUser Choreo.
 */
@interface TMBAmazon_IAM_ListGroupsForUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the groups the specified user belongs to.
 */
@interface TMBAmazon_IAM_ListGroupsForUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListGroupsForUser_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListGroupsForUser Choreo */


/*! group TMBAmazon.IAM.CreateGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateGroup Choreo.
 */
@interface TMBAmazon_IAM_CreateGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateGroup Choreo.
 */
@interface TMBAmazon_IAM_CreateGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new group in your AWS account.
 */
@interface TMBAmazon_IAM_CreateGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateGroup Choreo */


/*! group TMBAmazon.EC2.UnmonitorInstances Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnmonitorInstances Choreo.
 */
@interface TMBAmazon_EC2_UnmonitorInstances_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnmonitorInstances Choreo.
 */
@interface TMBAmazon_EC2_UnmonitorInstances_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Disable monitoring for a specified instance.
 */
@interface TMBAmazon_EC2_UnmonitorInstances : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_UnmonitorInstances_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_UnmonitorInstances Choreo */


/*! group TMBAmazon.Marketplace.Feeds.UpdatePriceAndQuantity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePriceAndQuantity Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setPrice:(NSString*)Price;
	-(void)setQuantity:(NSString*)Quantity;
	-(void)setSKU:(NSString*)SKU;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePriceAndQuantity Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Updates only the price and quantity of a particular product with a given product SKU.
 */
@interface TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_UpdatePriceAndQuantity Choreo */


/*! group TMBAmazon.IAM.AddRoleToInstanceProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddRoleToInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_AddRoleToInstanceProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddRoleToInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_AddRoleToInstanceProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds the specified role to the specified instance profile.
 */
@interface TMBAmazon_IAM_AddRoleToInstanceProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_AddRoleToInstanceProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_AddRoleToInstanceProfile Choreo */


/*! group TMBAmazon.IAM.CreateLoginProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_CreateLoginProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMustChangePassword:(NSString*)MustChangePassword;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_CreateLoginProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a password for the specified user, which gives the user the ability to access AWS services through the AWS Management Console.
 */
@interface TMBAmazon_IAM_CreateLoginProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateLoginProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateLoginProfile Choreo */


/*! group TMBAmazon.SNS.GetTopicAttributes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopicAttributes Choreo.
 */
@interface TMBAmazon_SNS_GetTopicAttributes_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopicAttributes Choreo.
 */
@interface TMBAmazon_SNS_GetTopicAttributes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns properties for a specified topic.
 */
@interface TMBAmazon_SNS_GetTopicAttributes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_GetTopicAttributes_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_GetTopicAttributes Choreo */


/*! group TMBAmazon.Marketplace.Products.GetMatchingProduct Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMatchingProduct Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetMatchingProduct_Inputs : TMBChoreographyInputSet
	-(void)setASIN:(NSString*)ASIN;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMatchingProduct Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetMatchingProduct_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of products and their attributes, based on ASIN values that you specify.
 */
@interface TMBAmazon_Marketplace_Products_GetMatchingProduct : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetMatchingProduct_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetMatchingProduct Choreo */


/*! group TMBAmazon.RDS.CreateDBInstance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateDBInstance Choreo.
 */
@interface TMBAmazon_RDS_CreateDBInstance_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllocatedStorage:(NSString*)AllocatedStorage;
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade;
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone;
	-(void)setBackupRetentionPeriod:(NSString*)BackupRetentionPeriod;
	-(void)setCharacterSetName:(NSString*)CharacterSetName;
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
	-(void)setDBName:(NSString*)DBName;
	-(void)setDBParameterGroupName:(NSString*)DBParameterGroupName;
	-(void)setDBSecurityGroups:(NSString*)DBSecurityGroups;
	-(void)setDBSubnetGroupName:(NSString*)DBSubnetGroupName;
	-(void)setEngineVersion:(NSString*)EngineVersion;
	-(void)setEngine:(NSString*)Engine;
	-(void)setIops:(NSString*)Iops;
	-(void)setLicenseModel:(NSString*)LicenseModel;
	-(void)setMasterUserPassword:(NSString*)MasterUserPassword;
	-(void)setMasterUsername:(NSString*)MasterUsername;
	-(void)setMultiAZ:(NSString*)MultiAZ;
	-(void)setOptionGroupName:(NSString*)OptionGroupName;
	-(void)setPort:(NSString*)Port;
	-(void)setPreferredBackupWindow:(NSString*)PreferredBackupWindow;
	-(void)setPreferredMaintenanceWindow:(NSString*)PreferredMaintenanceWindow;
	-(void)setPubliclyAccessible:(NSString*)PubliclyAccessible;
	-(void)setVpcSecurityGroupIds:(NSString*)VpcSecurityGroupIds;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDBInstance Choreo.
 */
@interface TMBAmazon_RDS_CreateDBInstance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new database instance.
 */
@interface TMBAmazon_RDS_CreateDBInstance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_CreateDBInstance_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_CreateDBInstance Choreo */


/*! group TMBAmazon.Marketplace.Products.GetLowestOfferListingsForASIN Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLowestOfferListingsForASIN Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_Inputs : TMBChoreographyInputSet
	-(void)setASIN:(NSString*)ASIN;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setItemCondition:(NSString*)ItemCondition;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLowestOfferListingsForASIN Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the lowest price offer listings for specific products by item condition. This method uses a MarketplaceId and ASIN values to uniquely identify products.
 */
@interface TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetLowestOfferListingsForASIN Choreo */


/*! group TMBAmazon.EC2.CreateVolume Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateVolume Choreo.
 */
@interface TMBAmazon_EC2_CreateVolume_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone;
	-(void)setIops:(NSString*)Iops;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSize:(NSString*)Size;
	-(void)setSnapshotId:(NSString*)SnapshotId;
	-(void)setVolumeType:(NSString*)VolumeType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateVolume Choreo.
 */
@interface TMBAmazon_EC2_CreateVolume_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new EBS volume that your EC2 instance can attach to.
 */
@interface TMBAmazon_EC2_CreateVolume : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_CreateVolume_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_CreateVolume Choreo */


/*! group TMBAmazon.IAM.CreateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@interface TMBAmazon_IAM_CreateUser_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@interface TMBAmazon_IAM_CreateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new user for your AWS account.
 */
@interface TMBAmazon_IAM_CreateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_CreateUser_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_CreateUser Choreo */


/*! group TMBAmazon.S3.GetBucketLogging Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketLogging Choreo.
 */
@interface TMBAmazon_S3_GetBucketLogging_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketLogging Choreo.
 */
@interface TMBAmazon_S3_GetBucketLogging_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the logging status and user logging permissions for the specified bucket.
 */
@interface TMBAmazon_S3_GetBucketLogging : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketLogging_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketLogging Choreo */


/*! group TMBAmazon.S3.DeleteMultipleObjects Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteMultipleObjects Choreo.
 */
@interface TMBAmazon_S3_DeleteMultipleObjects_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setFileNames:(NSString*)FileNames;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteMultipleObjects Choreo.
 */
@interface TMBAmazon_S3_DeleteMultipleObjects_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes multiple objects from an S3 Bucket.
 */
@interface TMBAmazon_S3_DeleteMultipleObjects : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteMultipleObjects_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteMultipleObjects Choreo */


/*! group TMBAmazon.RDS.CreateDBSnapshot Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_CreateDBSnapshot_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier;
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDBSnapshot Choreo.
 */
@interface TMBAmazon_RDS_CreateDBSnapshot_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a snapshot of an existing database instance.
 */
@interface TMBAmazon_RDS_CreateDBSnapshot : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_CreateDBSnapshot_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_CreateDBSnapshot Choreo */


/*! group TMBAmazon.S3.GetObjectTorrent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetObjectTorrent Choreo.
 */
@interface TMBAmazon_S3_GetObjectTorrent_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setFileName:(NSString*)FileName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetObjectTorrent Choreo.
 */
@interface TMBAmazon_S3_GetObjectTorrent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a base64-encoded torrent file from an Amazon S3 bucket.
 */
@interface TMBAmazon_S3_GetObjectTorrent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetObjectTorrent_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetObjectTorrent Choreo */


/*! group TMBAmazon.IAM.DeleteAccountPasswordPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAccountPasswordPolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteAccountPasswordPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAccountPasswordPolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteAccountPasswordPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the password policy for the AWS account.
 */
@interface TMBAmazon_IAM_DeleteAccountPasswordPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteAccountPasswordPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteAccountPasswordPolicy Choreo */


/*! group TMBAmazon.SNS.Unsubscribe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Unsubscribe Choreo.
 */
@interface TMBAmazon_SNS_Unsubscribe_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setSubscriptionArn:(NSString*)SubscriptionArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Unsubscribe Choreo.
 */
@interface TMBAmazon_SNS_Unsubscribe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified subscription.
 */
@interface TMBAmazon_SNS_Unsubscribe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_Unsubscribe_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_Unsubscribe Choreo */


/*! group TMBAmazon.IAM.ListRoles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRoles Choreo.
 */
@interface TMBAmazon_IAM_ListRoles_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setPathPrefix:(NSString*)PathPrefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRoles Choreo.
 */
@interface TMBAmazon_IAM_ListRoles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the roles that have the specified path prefix. If there are none, the action returns an empty list.
 */
@interface TMBAmazon_IAM_ListRoles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListRoles_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListRoles Choreo */


/*! group TMBAmazon.IAM.DeleteServerCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_DeleteServerCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setServerCertificateName:(NSString*)ServerCertificateName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_DeleteServerCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified server certificate.
 */
@interface TMBAmazon_IAM_DeleteServerCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteServerCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteServerCertificate Choreo */


/*! group TMBAmazon.EC2.DescribeAvailabilityZones Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeAvailabilityZones Choreo.
 */
@interface TMBAmazon_EC2_DescribeAvailabilityZones_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setZoneName:(NSString*)ZoneName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeAvailabilityZones Choreo.
 */
@interface TMBAmazon_EC2_DescribeAvailabilityZones_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns Availability Zones that are available for your EC2 account.
 */
@interface TMBAmazon_EC2_DescribeAvailabilityZones : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeAvailabilityZones_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeAvailabilityZones Choreo */


/*! group TMBAmazon.EC2.DeleteTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTags Choreo.
 */
@interface TMBAmazon_EC2_DeleteTags_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResourceId:(NSString*)ResourceId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTagKey:(NSString*)TagKey;
	-(void)setTagValue:(NSString*)TagValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTags Choreo.
 */
@interface TMBAmazon_EC2_DeleteTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specific set of tags from a specific set of resources.
 */
@interface TMBAmazon_EC2_DeleteTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DeleteTags_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DeleteTags Choreo */


/*! group TMBAmazon.SQS.RemovePermission Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemovePermission Choreo.
 */
@interface TMBAmazon_SQS_RemovePermission_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setLabel:(NSString*)Label;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemovePermission Choreo.
 */
@interface TMBAmazon_SQS_RemovePermission_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes any permission in the queue policy by specifying the permission label.
 */
@interface TMBAmazon_SQS_RemovePermission : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_RemovePermission_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_RemovePermission Choreo */


/*! group TMBAmazon.IAM.DeleteLoginProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_DeleteLoginProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteLoginProfile Choreo.
 */
@interface TMBAmazon_IAM_DeleteLoginProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the password for the specified user, which terminates the user's ability to access AWS services through the AWS Management Console.
 */
@interface TMBAmazon_IAM_DeleteLoginProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteLoginProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteLoginProfile Choreo */


/*! group TMBAmazon.IAM.GetAccountPasswordPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountPasswordPolicy Choreo.
 */
@interface TMBAmazon_IAM_GetAccountPasswordPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountPasswordPolicy Choreo.
 */
@interface TMBAmazon_IAM_GetAccountPasswordPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the password policy for the AWS account.
 */
@interface TMBAmazon_IAM_GetAccountPasswordPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetAccountPasswordPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetAccountPasswordPolicy Choreo */


/*! group TMBAmazon.SQS.GetQueueAttributes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetQueueAttributes Choreo.
 */
@interface TMBAmazon_SQS_GetQueueAttributes_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAttributeName:(NSString*)AttributeName;
	-(void)setQueueName:(NSString*)QueueName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetQueueAttributes Choreo.
 */
@interface TMBAmazon_SQS_GetQueueAttributes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or all attributes of a queue.
 */
@interface TMBAmazon_SQS_GetQueueAttributes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_GetQueueAttributes_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_GetQueueAttributes Choreo */


/*! group TMBAmazon.Marketplace.Reports.FlatFileOrderReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FlatFileOrderReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_FlatFileOrderReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FlatFileOrderReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_FlatFileOrderReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getReport;	
@end

/*!
 * Returns a tab-delimited flat file order report. The report shows orders from the previous 60 days.
 */
@interface TMBAmazon_Marketplace_Reports_FlatFileOrderReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_FlatFileOrderReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_FlatFileOrderReport Choreo */


/*! group TMBAmazon.IAM.DeleteVirtualMFADevice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteVirtualMFADevice Choreo.
 */
@interface TMBAmazon_IAM_DeleteVirtualMFADevice_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSerialNumber:(NSString*)SerialNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteVirtualMFADevice Choreo.
 */
@interface TMBAmazon_IAM_DeleteVirtualMFADevice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a virtual MFA device.  You must deactivate a user's virtual MFA device before you can delete it.
 */
@interface TMBAmazon_IAM_DeleteVirtualMFADevice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteVirtualMFADevice_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteVirtualMFADevice Choreo */


/*! group TMBAmazon.IAM.RemoveRoleFromInstanceProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveRoleFromInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_RemoveRoleFromInstanceProfile_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveRoleFromInstanceProfile Choreo.
 */
@interface TMBAmazon_IAM_RemoveRoleFromInstanceProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes the specified Role from the specified Instance Profile.
 */
@interface TMBAmazon_IAM_RemoveRoleFromInstanceProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_RemoveRoleFromInstanceProfile_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_RemoveRoleFromInstanceProfile Choreo */


/*! group TMBAmazon.IAM.ListInstanceProfiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListInstanceProfiles Choreo.
 */
@interface TMBAmazon_IAM_ListInstanceProfiles_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setPathPrefix:(NSString*)PathPrefix;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInstanceProfiles Choreo.
 */
@interface TMBAmazon_IAM_ListInstanceProfiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the instance profiles that have the specified path prefix.
 */
@interface TMBAmazon_IAM_ListInstanceProfiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListInstanceProfiles_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListInstanceProfiles Choreo */


/*! group TMBAmazon.SNS.Publish Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Publish Choreo.
 */
@interface TMBAmazon_SNS_Publish_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMessageStructure:(NSString*)MessageStructure;
	-(void)setMessage:(NSString*)Message;
	-(void)setSubject:(NSString*)Subject;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Publish Choreo.
 */
@interface TMBAmazon_SNS_Publish_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sends a message to a topic's subscribed endpoints.
 */
@interface TMBAmazon_SNS_Publish : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_Publish_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_Publish Choreo */


/*! group TMBAmazon.Marketplace.Feeds.AddOrUpdateProductImage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddOrUpdateProductImage Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setImageLocation:(NSString*)ImageLocation;
	-(void)setImageType:(NSString*)ImageType;
	-(void)setSKU:(NSString*)SKU;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddOrUpdateProductImage Choreo.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getProcessingStatus;
	-(NSString*)getResponse;
	-(NSString*)getSubmissionId;
	-(NSString*)getSubmissionResult;	
@end

/*!
 * Adds or updates a product image with a given image location and SKU.
 */
@interface TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Feeds_AddOrUpdateProductImage Choreo */


/*! group TMBAmazon.S3.DeleteBucketCORS Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketCORS Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketCORS_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketCORS Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketCORS_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the CORS (Cross-Origin Resource Sharing) configuration information set for the specified bucket.
 */
@interface TMBAmazon_S3_DeleteBucketCORS : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteBucketCORS_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteBucketCORS Choreo */


/*! group TMBAmazon.IAM.ListSigningCertificates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSigningCertificates Choreo.
 */
@interface TMBAmazon_IAM_ListSigningCertificates_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSigningCertificates Choreo.
 */
@interface TMBAmazon_IAM_ListSigningCertificates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the signing certificates associated with the specified user. If there are none, the action returns an empty list.
 */
@interface TMBAmazon_IAM_ListSigningCertificates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListSigningCertificates_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListSigningCertificates Choreo */


/*! group TMBAmazon.RDS.AuthorizeDBSecurityGroupIngress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AuthorizeDBSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCIDRIP:(NSString*)CIDRIP;
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName;
	-(void)setEC2SecurityGroupName:(NSString*)EC2SecurityGroupName;
	-(void)setEC2SecurityGroupOwnerId:(NSString*)EC2SecurityGroupOwnerId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AuthorizeDBSecurityGroupIngress Choreo.
 */
@interface TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows restricted access to your database instance by adding EC2 Security Groups to the DBSecurityGroup or by specifying an allowed IP range.
 */
@interface TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_AuthorizeDBSecurityGroupIngress Choreo */


/*! group TMBAmazon.EC2.ReleaseAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReleaseAddress Choreo.
 */
@interface TMBAmazon_EC2_ReleaseAddress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllocationId:(NSString*)AllocationId;
	-(void)setPublicIp:(NSString*)PublicIp;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReleaseAddress Choreo.
 */
@interface TMBAmazon_EC2_ReleaseAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Releases an Elastic IP address allocated to your account.
 */
@interface TMBAmazon_EC2_ReleaseAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_ReleaseAddress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_ReleaseAddress Choreo */


/*! group TMBAmazon.RDS.CreateDBSecurityGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateDBSecurityGroup Choreo.
 */
@interface TMBAmazon_RDS_CreateDBSecurityGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setDBSecurityGroupDescription:(NSString*)DBSecurityGroupDescription;
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDBSecurityGroup Choreo.
 */
@interface TMBAmazon_RDS_CreateDBSecurityGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new database security group which you can use to control the access to the database instance.
 */
@interface TMBAmazon_RDS_CreateDBSecurityGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_RDS_CreateDBSecurityGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.RDS_CreateDBSecurityGroup Choreo */


/*! group TMBAmazon.SNS.RemovePermission Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemovePermission Choreo.
 */
@interface TMBAmazon_SNS_RemovePermission_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setLabel:(NSString*)Label;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemovePermission Choreo.
 */
@interface TMBAmazon_SNS_RemovePermission_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes the statement from a topic's access control policy that was created with the AddPermission action.
 */
@interface TMBAmazon_SNS_RemovePermission : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_RemovePermission_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_RemovePermission Choreo */


/*! group TMBAmazon.Marketplace.Inventory.ListInventorySupplyBySKU Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListInventorySupplyBySKU Choreo.
 */
@interface TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setResponseGroup:(NSString*)ResponseGroup;
	-(void)setSellerSKU:(NSString*)SellerSKU;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInventorySupplyBySKU Choreo.
 */
@interface TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the availability of a seller's inventory using a given SellerSKU.
 */
@interface TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Inventory_ListInventorySupplyBySKU Choreo */


/*! group TMBAmazon.IAM.ListAccessKeys Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAccessKeys Choreo.
 */
@interface TMBAmazon_IAM_ListAccessKeys_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setMarker:(NSString*)Marker;
	-(void)setMaxItems:(NSString*)MaxItems;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAccessKeys Choreo.
 */
@interface TMBAmazon_IAM_ListAccessKeys_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the Access Key IDs associated with the specified user.
 */
@interface TMBAmazon_IAM_ListAccessKeys : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_ListAccessKeys_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_ListAccessKeys Choreo */


/*! group TMBAmazon.EC2.DescribeSecurityGroups Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeSecurityGroups Choreo.
 */
@interface TMBAmazon_EC2_DescribeSecurityGroups_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setGroupId:(NSString*)GroupId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeSecurityGroups Choreo.
 */
@interface TMBAmazon_EC2_DescribeSecurityGroups_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns security group information associated with your AWS Account.
 */
@interface TMBAmazon_EC2_DescribeSecurityGroups : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeSecurityGroups_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeSecurityGroups Choreo */


/*! group TMBAmazon.S3.PutBucketNotification Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketNotification Choreo.
 */
@interface TMBAmazon_S3_PutBucketNotification_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setEvent:(NSString*)Event;
	-(void)setTopic:(NSString*)Topic;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketNotification Choreo.
 */
@interface TMBAmazon_S3_PutBucketNotification_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Enables Amazon SNS notifications of specified events for a bucket.
 */
@interface TMBAmazon_S3_PutBucketNotification : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketNotification_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketNotification Choreo */


/*! group TMBAmazon.EC2.AssociateAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AssociateAddress Choreo.
 */
@interface TMBAmazon_EC2_AssociateAddress_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAllocationId:(NSString*)AllocationId;
	-(void)setAllowReassociation:(NSString*)AllowReassociation;
	-(void)setInstanceId:(NSString*)InstanceId;
	-(void)setNetworkInterfaceId:(NSString*)NetworkInterfaceId;
	-(void)setPrivateIpAddress:(NSString*)PrivateIpAddress;
	-(void)setPublicIp:(NSString*)PublicIp;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AssociateAddress Choreo.
 */
@interface TMBAmazon_EC2_AssociateAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Associates an Elastic IP address with an instance or a network interface.
 */
@interface TMBAmazon_EC2_AssociateAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_AssociateAddress_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_AssociateAddress Choreo */


/*! group TMBAmazon.Marketplace.Orders.ListOrdersWithBuyerEmail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListOrdersWithBuyerEmail Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBuyerEmail:(NSString*)BuyerEmail;
	-(void)setCreatedAfter:(NSString*)CreatedAfter;
	-(void)setCreatedBefore:(NSString*)CreatedBefore;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMaxResultsPerPage:(NSString*)MaxResultsPerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListOrdersWithBuyerEmail Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns orders associated with a buyer's email address that you specify.
 */
@interface TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Orders_ListOrdersWithBuyerEmail Choreo */


/*! group TMBAmazon.SNS.ListTopics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTopics Choreo.
 */
@interface TMBAmazon_SNS_ListTopics_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setNextToken:(NSString*)NextToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTopics Choreo.
 */
@interface TMBAmazon_SNS_ListTopics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the user's topics.
 */
@interface TMBAmazon_SNS_ListTopics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_ListTopics_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_ListTopics Choreo */


/*! group TMBAmazon.IAM.UpdateSigningCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateSigningCertificate Choreo.
 */
@interface TMBAmazon_IAM_UpdateSigningCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCertificateId:(NSString*)CertificateId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStatus:(NSString*)Status;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateSigningCertificate Choreo.
 */
@interface TMBAmazon_IAM_UpdateSigningCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Changes the status of the specified signing certificate from active to disabled, or vice versa. This action can be used to disable a user's signing certificate as part of a certificate rotation workflow.
 */
@interface TMBAmazon_IAM_UpdateSigningCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateSigningCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateSigningCertificate Choreo */


/*! group TMBAmazon.S3.PutBucketLogging Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketLogging Choreo.
 */
@interface TMBAmazon_S3_PutBucketLogging_Inputs : TMBChoreographyInputSet
	-(void)setBucketLoggingStatus:(NSString*)BucketLoggingStatus;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setPermission:(NSString*)Permission;
	-(void)setTargetBucket:(NSString*)TargetBucket;
	-(void)setTargetPrefix:(NSString*)TargetPrefix;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketLogging Choreo.
 */
@interface TMBAmazon_S3_PutBucketLogging_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the logging parameters for a bucket and specifies permissions for who can view and modify the logging parameters. Can also be used to disable logging.
 */
@interface TMBAmazon_S3_PutBucketLogging : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketLogging_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketLogging Choreo */


/*! group TMBAmazon.IAM.UploadServerCertificate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_UploadServerCertificate_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setCertificateBody:(NSString*)CertificateBody;
	-(void)setCertificateChain:(NSString*)CertificateChain;
	-(void)setPath:(NSString*)Path;
	-(void)setPrivateKey:(NSString*)PrivateKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setServerCertificateName:(NSString*)ServerCertificateName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadServerCertificate Choreo.
 */
@interface TMBAmazon_IAM_UploadServerCertificate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.
 */
@interface TMBAmazon_IAM_UploadServerCertificate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UploadServerCertificate_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UploadServerCertificate Choreo */


/*! group TMBAmazon.S3.DeleteBucketWebsite Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketWebsite Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketWebsite_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketWebsite Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketWebsite_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the website configuration for the specified bucket.
 */
@interface TMBAmazon_S3_DeleteBucketWebsite : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteBucketWebsite_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteBucketWebsite Choreo */


/*! group TMBAmazon.FPS.GetTransactionStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionStatus Choreo.
 */
@interface TMBAmazon_FPS_GetTransactionStatus_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionId:(NSString*)TransactionId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionStatus Choreo.
 */
@interface TMBAmazon_FPS_GetTransactionStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the status of a specified transaction.
 */
@interface TMBAmazon_FPS_GetTransactionStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_FPS_GetTransactionStatus_Inputs*)newInputSet;
@end

/*! group TMBAmazon.FPS_GetTransactionStatus Choreo */


/*! group TMBAmazon.Marketplace.OutboundShipments.ListAllFulfillmentOrders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllFulfillmentOrders Choreo.
 */
@interface TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFulfillmentMethod:(NSString*)FulfillmentMethod;
	-(void)setQueryStartDateTime:(NSString*)QueryStartDateTime;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllFulfillmentOrders Choreo.
 */
@interface TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of fulfillment orders fulfilled after (or at) a specified date or by fulfillment method.
 */
@interface TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.OutboundShipments_ListAllFulfillmentOrders Choreo */


/*! group TMBAmazon.SQS.ListQueues Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListQueues Choreo.
 */
@interface TMBAmazon_SQS_ListQueues_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setQueueNamePrefix:(NSString*)QueueNamePrefix;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListQueues Choreo.
 */
@interface TMBAmazon_SQS_ListQueues_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of your queues.
 */
@interface TMBAmazon_SQS_ListQueues : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_ListQueues_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_ListQueues Choreo */


/*! group TMBAmazon.IAM.GetUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUser Choreo.
 */
@interface TMBAmazon_IAM_GetUser_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUser Choreo.
 */
@interface TMBAmazon_IAM_GetUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details about a specified user, including the user's path, GUID, and ARN.
 */
@interface TMBAmazon_IAM_GetUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_GetUser_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_GetUser Choreo */


/*! group TMBAmazon.EC2.DescribeImageAttribute Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DescribeImageAttribute Choreo.
 */
@interface TMBAmazon_EC2_DescribeImageAttribute_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAttribute:(NSString*)Attribute;
	-(void)setImageId:(NSString*)ImageId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeImageAttribute Choreo.
 */
@interface TMBAmazon_EC2_DescribeImageAttribute_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about an attribute of an AMI.
 */
@interface TMBAmazon_EC2_DescribeImageAttribute : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DescribeImageAttribute_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DescribeImageAttribute Choreo */


/*! group TMBAmazon.IAM.RemoveUserFromGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveUserFromGroup Choreo.
 */
@interface TMBAmazon_IAM_RemoveUserFromGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveUserFromGroup Choreo.
 */
@interface TMBAmazon_IAM_RemoveUserFromGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes the specified user from the specified group.
 */
@interface TMBAmazon_IAM_RemoveUserFromGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_RemoveUserFromGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_RemoveUserFromGroup Choreo */


/*! group TMBAmazon.EC2.DeleteSecurityGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSecurityGroup Choreo.
 */
@interface TMBAmazon_EC2_DeleteSecurityGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupId:(NSString*)GroupId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSecurityGroup Choreo.
 */
@interface TMBAmazon_EC2_DeleteSecurityGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a security group using the group name you specify.
 */
@interface TMBAmazon_EC2_DeleteSecurityGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DeleteSecurityGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DeleteSecurityGroup Choreo */


/*! group TMBAmazon.Marketplace.Reports.UnshippedOrdersReport Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnshippedOrdersReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTimeToWait:(NSString*)TimeToWait;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnshippedOrdersReport Choreo.
 */
@interface TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getGeneratedReportId;
	-(NSString*)getReportProcessingStatus;
	-(NSString*)getReportRequestId;
	-(NSString*)getReport;	
@end

/*!
 * Returns a tab-delimited flat file report that contains only orders that are not confirmed as shipped.
 */
@interface TMBAmazon_Marketplace_Reports_UnshippedOrdersReport : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Reports_UnshippedOrdersReport Choreo */


/*! group TMBAmazon.EC2.DeleteKeyPair Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteKeyPair Choreo.
 */
@interface TMBAmazon_EC2_DeleteKeyPair_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setKeyName:(NSString*)KeyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteKeyPair Choreo.
 */
@interface TMBAmazon_EC2_DeleteKeyPair_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified key pair by removing the public key from Amazon EC2. You must own the key pair.
 */
@interface TMBAmazon_EC2_DeleteKeyPair : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DeleteKeyPair_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DeleteKeyPair Choreo */


/*! group TMBAmazon.Marketplace.Products.GetCompetitivePricingForSKU Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCompetitivePricingForSKU Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSellerSKU:(NSString*)SellerSKU;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompetitivePricingForSKU Choreo.
 */
@interface TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the current competitive pricing of products, based on SellerSKU values and the MarketplaceId that you specify.
 */
@interface TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Products_GetCompetitivePricingForSKU Choreo */


/*! group TMBAmazon.S3.DeleteBucketPolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketPolicy Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketPolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketPolicy Choreo.
 */
@interface TMBAmazon_S3_DeleteBucketPolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the policy on a specified bucket.
 */
@interface TMBAmazon_S3_DeleteBucketPolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_DeleteBucketPolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_DeleteBucketPolicy Choreo */


/*! group TMBAmazon.S3.PutBucketTagging Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketTagging Choreo.
 */
@interface TMBAmazon_S3_PutBucketTagging_Inputs : TMBChoreographyInputSet
	-(void)setTags:(NSString*)Tags;
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setKey:(NSString*)Key;
	-(void)setValue:(NSString*)Value;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketTagging Choreo.
 */
@interface TMBAmazon_S3_PutBucketTagging_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a set of billing tags to an existing bucket.
 */
@interface TMBAmazon_S3_PutBucketTagging : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_PutBucketTagging_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_PutBucketTagging Choreo */


/*! group TMBAmazon.S3.GetBucketWebsite Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketWebsite Choreo.
 */
@interface TMBAmazon_S3_GetBucketWebsite_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketWebsite Choreo.
 */
@interface TMBAmazon_S3_GetBucketWebsite_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getStaticURL;	
@end

/*!
 * Returns the website configuration and static URL of a bucket if it is setup as a website.
 */
@interface TMBAmazon_S3_GetBucketWebsite : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketWebsite_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketWebsite Choreo */


/*! group TMBAmazon.Marketplace.Orders.GetOrder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetOrder Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_GetOrder_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId;
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAmazonOrderId:(NSString*)AmazonOrderId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetOrder Choreo.
 */
@interface TMBAmazon_Marketplace_Orders_GetOrder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns orders based on the AmazonOrderId values that you specify.
 */
@interface TMBAmazon_Marketplace_Orders_GetOrder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_Marketplace_Orders_GetOrder_Inputs*)newInputSet;
@end

/*! group TMBAmazon.Marketplace.Orders_GetOrder Choreo */


/*! group TMBAmazon.FPS.GetAccountBalance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountBalance Choreo.
 */
@interface TMBAmazon_FPS_GetAccountBalance_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setEndpoint:(NSString*)Endpoint;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountBalance Choreo.
 */
@interface TMBAmazon_FPS_GetAccountBalance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the current balance of your account.
 */
@interface TMBAmazon_FPS_GetAccountBalance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_FPS_GetAccountBalance_Inputs*)newInputSet;
@end

/*! group TMBAmazon.FPS_GetAccountBalance Choreo */


/*! group TMBAmazon.S3.GetBucketCORS Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketCORS Choreo.
 */
@interface TMBAmazon_S3_GetBucketCORS_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setBucketName:(NSString*)BucketName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketCORS Choreo.
 */
@interface TMBAmazon_S3_GetBucketCORS_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the CORS (Cross-Origin Resource Sharing) configuration information set for the bucket.
 */
@interface TMBAmazon_S3_GetBucketCORS : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_S3_GetBucketCORS_Inputs*)newInputSet;
@end

/*! group TMBAmazon.S3_GetBucketCORS Choreo */


/*! group TMBAmazon.SNS.SetTopicAttributes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SetTopicAttributes Choreo.
 */
@interface TMBAmazon_SNS_SetTopicAttributes_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setAttributeName:(NSString*)AttributeName;
	-(void)setAttributeValue:(NSString*)AttributeValue;
	-(void)setTopicArn:(NSString*)TopicArn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetTopicAttributes Choreo.
 */
@interface TMBAmazon_SNS_SetTopicAttributes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a topic owner to update the attribute of a topic to a new value.
 */
@interface TMBAmazon_SNS_SetTopicAttributes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SNS_SetTopicAttributes_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SNS_SetTopicAttributes Choreo */


/*! group TMBAmazon.SQS.DeleteMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteMessage Choreo.
 */
@interface TMBAmazon_SQS_DeleteMessage_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setQueueName:(NSString*)QueueName;
	-(void)setReceiptHandle:(NSString*)ReceiptHandle;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteMessage Choreo.
 */
@interface TMBAmazon_SQS_DeleteMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a particular message from a specified queue.
 */
@interface TMBAmazon_SQS_DeleteMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_DeleteMessage_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_DeleteMessage Choreo */


/*! group TMBAmazon.SQS.ChangeMessageVisibility Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ChangeMessageVisibility Choreo.
 */
@interface TMBAmazon_SQS_ChangeMessageVisibility_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSAccountId:(NSString*)AWSAccountId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setQueueName:(NSString*)QueueName;
	-(void)setReceiptHandle:(NSString*)ReceiptHandle;
	-(void)setVisibilityTimeout:(NSString*)VisibilityTimeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChangeMessageVisibility Choreo.
 */
@interface TMBAmazon_SQS_ChangeMessageVisibility_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the visibility timeout parameter of a message.
 */
@interface TMBAmazon_SQS_ChangeMessageVisibility : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_SQS_ChangeMessageVisibility_Inputs*)newInputSet;
@end

/*! group TMBAmazon.SQS_ChangeMessageVisibility Choreo */


/*! group TMBAmazon.IAM.UpdateGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateGroup Choreo.
 */
@interface TMBAmazon_IAM_UpdateGroup_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setGroupName:(NSString*)GroupName;
	-(void)setNewGroupName:(NSString*)NewGroupName;
	-(void)setNewPath:(NSString*)NewPath;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateGroup Choreo.
 */
@interface TMBAmazon_IAM_UpdateGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the name and/or the path of a specified group.
 */
@interface TMBAmazon_IAM_UpdateGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_UpdateGroup_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_UpdateGroup Choreo */


/*! group TMBAmazon.IAM.DeleteRolePolicy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRolePolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteRolePolicy_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setPolicyName:(NSString*)PolicyName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoleName:(NSString*)RoleName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRolePolicy Choreo.
 */
@interface TMBAmazon_IAM_DeleteRolePolicy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes the specified policy associated with the specified role.
 */
@interface TMBAmazon_IAM_DeleteRolePolicy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_IAM_DeleteRolePolicy_Inputs*)newInputSet;
@end

/*! group TMBAmazon.IAM_DeleteRolePolicy Choreo */


/*! group TMBAmazon.EC2.DeleteVolume Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteVolume Choreo.
 */
@interface TMBAmazon_EC2_DeleteVolume_Inputs : TMBChoreographyInputSet
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId;
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVolumeId:(NSString*)VolumeId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteVolume Choreo.
 */
@interface TMBAmazon_EC2_DeleteVolume_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a volume using a volume id that you specify.
 */
@interface TMBAmazon_EC2_DeleteVolume : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAmazon_EC2_DeleteVolume_Inputs*)newInputSet;
@end

/*! group TMBAmazon.EC2_DeleteVolume Choreo */
