/*!
 * @TMBAmazon.m
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

#import "TMBAmazon.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the CreateTopic Choreo.
 */
@implementation TMBAmazon_SNS_CreateTopic_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the topic you want to create.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTopic Choreo.
 */
@implementation TMBAmazon_SNS_CreateTopic_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new topic that notifications can be published to.
 */
@implementation TMBAmazon_SNS_CreateTopic

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_CreateTopic Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/CreateTopic"] autorelease];
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
		TMBAmazon_SNS_CreateTopic_ResultSet *results = [[[TMBAmazon_SNS_CreateTopic_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTopic Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_CreateTopic_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_CreateTopic_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_GetServerCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ServerCertificateName input for this Choreo.
	*(required, string) The name of the server certificate you want to retrieve information about.
	 */
	-(void)setServerCertificateName:(NSString*)ServerCertificateName {
		[super setInput:@"ServerCertificateName" toValue:ServerCertificateName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_GetServerCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about the specified server certificate.
 */
@implementation TMBAmazon_IAM_GetServerCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetServerCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetServerCertificate"] autorelease];
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
		TMBAmazon_IAM_GetServerCertificate_ResultSet *results = [[[TMBAmazon_IAM_GetServerCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetServerCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetServerCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetServerCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMatchingProducts Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_ListMatchingProducts_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A search string used to search for products.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMatchingProducts Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_ListMatchingProducts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of products and their attributes, ordered by relevancy, based on a search query that you specify.
 */
@implementation TMBAmazon_Marketplace_Products_ListMatchingProducts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_ListMatchingProducts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/ListMatchingProducts"] autorelease];
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
		TMBAmazon_Marketplace_Products_ListMatchingProducts_ResultSet *results = [[[TMBAmazon_Marketplace_Products_ListMatchingProducts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMatchingProducts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_ListMatchingProducts_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_ListMatchingProducts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@implementation TMBAmazon_IAM_DeleteUser_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to delete.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@implementation TMBAmazon_IAM_DeleteUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified user. The user must not belong to any groups, have any keys or signing certificates, or have any attached policies.
 */
@implementation TMBAmazon_IAM_DeleteUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteUser"] autorelease];
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
		TMBAmazon_IAM_DeleteUser_ResultSet *results = [[[TMBAmazon_IAM_DeleteUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteUser_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListInventoryReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_ListInventoryReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 5 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInventoryReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_ListInventoryReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Report" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The report contents.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReport {
		return [super getOutputByName:@"Report"];
	}
	
@end

/*!
 * Returns a tab-delimited report of open listings. The report contains the SKU, ASIN, Price, and Quantity fields for inventory listings.
 */
@implementation TMBAmazon_Marketplace_Reports_ListInventoryReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_ListInventoryReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/ListInventoryReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_ListInventoryReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_ListInventoryReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListInventoryReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_ListInventoryReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_ListInventoryReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketPolicy Choreo.
 */
@implementation TMBAmazon_S3_PutBucketPolicy_Inputs

	/*!
	 * Set the value of the Policy input for this Choreo.
	*(required, json) A JSON string containing the policy information.  See Choreo documentation for a sample JSON policy.
	 */
	-(void)setPolicy:(NSString*)Policy {
		[super setInput:@"Policy" toValue:Policy];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to create or update a policy for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketPolicy Choreo.
 */
@implementation TMBAmazon_S3_PutBucketPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful policy creation, no content is returned and this output variable is empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to add to or replace a policy on a bucket.
 */
@implementation TMBAmazon_S3_PutBucketPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketPolicy"] autorelease];
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
		TMBAmazon_S3_PutBucketPolicy_ResultSet *results = [[[TMBAmazon_S3_PutBucketPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetGroup Choreo.
 */
@implementation TMBAmazon_IAM_GetGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group to return.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGroup Choreo.
 */
@implementation TMBAmazon_IAM_GetGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of users that are in the specified group.
 */
@implementation TMBAmazon_IAM_GetGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetGroup"] autorelease];
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
		TMBAmazon_IAM_GetGroup_ResultSet *results = [[[TMBAmazon_IAM_GetGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketVersioning Choreo.
 */
@implementation TMBAmazon_S3_GetBucketVersioning_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to retrieve versioning information for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketVersioning Choreo.
 */
@implementation TMBAmazon_S3_GetBucketVersioning_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the versioning state of a specified bucket.
 */
@implementation TMBAmazon_S3_GetBucketVersioning

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketVersioning Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketVersioning"] autorelease];
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
		TMBAmazon_S3_GetBucketVersioning_ResultSet *results = [[[TMBAmazon_S3_GetBucketVersioning_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketVersioning Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketVersioning_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketVersioning_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeAddresses Choreo.
 */
@implementation TMBAmazon_EC2_DescribeAddresses_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllocationId input for this Choreo.
	*(optional, string) One or more allocation IDs corresponding to the address or addresses to describe (VPC addresses only). This can be a comma-separated list of up to 10 Allocation Ids.
	 */
	-(void)setAllocationId:(NSString*)AllocationId {
		[super setInput:@"AllocationId" toValue:AllocationId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow the results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the PublicIp input for this Choreo.
	*(optional, string) One or more EC2 Elastic IP addresses.  This can be a comma-separated list of up to 10 IP addresses.
	 */
	-(void)setPublicIp:(NSString*)PublicIp {
		[super setInput:@"PublicIp" toValue:PublicIp];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeAddresses Choreo.
 */
@implementation TMBAmazon_EC2_DescribeAddresses_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Describes one or more of your Elastic IP addresses.
 */
@implementation TMBAmazon_EC2_DescribeAddresses

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeAddresses Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeAddresses"] autorelease];
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
		TMBAmazon_EC2_DescribeAddresses_ResultSet *results = [[[TMBAmazon_EC2_DescribeAddresses_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeAddresses Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeAddresses_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeAddresses_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptions Choreo.
 */
@implementation TMBAmazon_SNS_ListSubscriptions_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the NextToken input for this Choreo.
	*(optional, string) The token returned from a previous LIstSubscriptions request.
	 */
	-(void)setNextToken:(NSString*)NextToken {
		[super setInput:@"NextToken" toValue:NextToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptions Choreo.
 */
@implementation TMBAmazon_SNS_ListSubscriptions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the user's subscriptions. Each call returns a limited list of subscriptions, up to 100.
 */
@implementation TMBAmazon_SNS_ListSubscriptions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_ListSubscriptions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/ListSubscriptions"] autorelease];
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
		TMBAmazon_SNS_ListSubscriptions_ResultSet *results = [[[TMBAmazon_SNS_ListSubscriptions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSubscriptions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_ListSubscriptions_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_ListSubscriptions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBase64EncodedObject Choreo.
 */
@implementation TMBAmazon_S3_GetBase64EncodedObject_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that contains the object to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file to retrieve.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the IfMatch input for this Choreo.
	*(optional, string) Returns the object only if its entity tag (ETag) is the same as the one specified, otherwise returns a 412 (precondition failed) error.
	 */
	-(void)setIfMatch:(NSString*)IfMatch {
		[super setInput:@"IfMatch" toValue:IfMatch];
	}

	/*!
	 * Set the value of the IfModifiedSince input for this Choreo.
	*(optional, date) Returns the object only if it has been modified since the specific time, otherwise returns a 304 (not modified) error.
	 */
	-(void)setIfModifiedSince:(NSString*)IfModifiedSince {
		[super setInput:@"IfModifiedSince" toValue:IfModifiedSince];
	}

	/*!
	 * Set the value of the IfNoneMatch input for this Choreo.
	*(optional, string) Returns the object only if its entity tag (ETag) is different from the one specified, otherwise retuns a 304 (not modified) error. Will not work correctly with IfModifiedSince.
	 */
	-(void)setIfNoneMatch:(NSString*)IfNoneMatch {
		[super setInput:@"IfNoneMatch" toValue:IfNoneMatch];
	}

	/*!
	 * Set the value of the IfUnmodifiedSince input for this Choreo.
	*(optional, date) Returns the object only if it has not been modified since the specified time, otherwise returns a 412 (precondition failed) error.
	 */
	-(void)setIfUnmodifiedSince:(NSString*)IfUnmodifiedSince {
		[super setInput:@"IfUnmodifiedSince" toValue:IfUnmodifiedSince];
	}

	/*!
	 * Set the value of the Range input for this Choreo.
	*(optional, string) Downloads the specific range of bytes of an object. Ex: 0-9 (returns the first 10 bytes of an object), 100-1000, etc. If the range value exceeds the end of file, it will return up to the end of file.
	 */
	-(void)setRange:(NSString*)Range {
		[super setInput:@"Range" toValue:Range];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBase64EncodedObject Choreo.
 */
@implementation TMBAmazon_S3_GetBase64EncodedObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "DeleteMarker" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Returns true if the object retrieved was a Delete Marker otherwise no value.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getDeleteMarker {
		return [super getOutputByName:@"DeleteMarker"];
	}

	/*!
	 * Retrieve the value of the "Expiration" output from an execution of this Choreo.
	 * @return - NSString* (string) Appears if the object expiration is configured. It includes expiry-date and URL-encoded rule-id key value pairs providing object expiration information.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpiration {
		return [super getOutputByName:@"Expiration"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The base64-encoded contents of the file you are retrieving.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Restore" output from an execution of this Choreo.
	 * @return - NSString* (string) Provides information about the object restoration operation and expiration time of the restored object copy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRestore {
		return [super getOutputByName:@"Restore"];
	}

	/*!
	 * Retrieve the value of the "ServerSideEncryption" output from an execution of this Choreo.
	 * @return - NSString* (string) If the object is stored using server-side encryption, response includes this header with value of the encryption algorithm used. Valid Values: AES256.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getServerSideEncryption {
		return [super getOutputByName:@"ServerSideEncryption"];
	}

	/*!
	 * Retrieve the value of the "VersionID" output from an execution of this Choreo.
	 * @return - NSString* (string) Returns the version ID of the retrieved object if it has a unique version ID.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getVersionID {
		return [super getOutputByName:@"VersionID"];
	}

	/*!
	 * Retrieve the value of the "WebsiteRedirectLocation" output from an execution of this Choreo.
	 * @return - NSString* (string) For a bucket configured as a website, this metadata can be set so the website will evaluate the request for the object as a 301 redirect to another object in the same bucket or an external URL.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getWebsiteRedirectLocation {
		return [super getOutputByName:@"WebsiteRedirectLocation"];
	}
	
@end

/*!
 * Retrieves a specified item from an Amazon S3 bucket, returns the file content as base64-encoded data, and returns the values of key response headers as output variables if available.
 */
@implementation TMBAmazon_S3_GetBase64EncodedObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBase64EncodedObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBase64EncodedObject"] autorelease];
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
		TMBAmazon_S3_GetBase64EncodedObject_ResultSet *results = [[[TMBAmazon_S3_GetBase64EncodedObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBase64EncodedObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBase64EncodedObject_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBase64EncodedObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RunInstances Choreo.
 */
@implementation TMBAmazon_EC2_RunInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DeleteOnTermination input for this Choreo.
	*(optional, boolean) Sets whether the volume is deleted on instance termination. Defaults to "true". This is a Block Device Mapping parameter.
	 */
	-(void)setDeleteOnTermination:(NSString*)DeleteOnTermination {
		[super setInput:@"DeleteOnTermination" toValue:DeleteOnTermination];
	}

	/*!
	 * Set the value of the DeviceName input for this Choreo.
	*(optional, string) The device name exposed to the instance (i.e. /dev/sdh or xvdh). This is a Block Device Mapping parameter.
	 */
	-(void)setDeviceName:(NSString*)DeviceName {
		[super setInput:@"DeviceName" toValue:DeviceName];
	}

	/*!
	 * Set the value of the ImageId input for this Choreo.
	*(required, string) The ID of the AMI.
	 */
	-(void)setImageId:(NSString*)ImageId {
		[super setInput:@"ImageId" toValue:ImageId];
	}

	/*!
	 * Set the value of the InstanceType input for this Choreo.
	*(optional, string) The instance type (i.e. t1.micro, m1.small, m1.medium, m1.large, m1.xlarge). Default is m1.small.
	 */
	-(void)setInstanceType:(NSString*)InstanceType {
		[super setInput:@"InstanceType" toValue:InstanceType];
	}

	/*!
	 * Set the value of the Iops input for this Choreo.
	*(optional, integer) The number of I/O operations per second (IOPS) that the volume supports. Valid range is 100 to 2000. This is a Block Device Mapping parameter.
	 */
	-(void)setIops:(NSString*)Iops {
		[super setInput:@"Iops" toValue:Iops];
	}

	/*!
	 * Set the value of the KernelId input for this Choreo.
	*(optional, string) The ID of the kernel with which to launch the instance.
	 */
	-(void)setKernelId:(NSString*)KernelId {
		[super setInput:@"KernelId" toValue:KernelId];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(optional, string) The name of the key pair to use.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}

	/*!
	 * Set the value of the MaxCount input for this Choreo.
	*(required, integer) The maximum number of instances to launch. If the value is more than Amazon EC2 can launch, the largest possible number above MinCount will be launched instead.
	 */
	-(void)setMaxCount:(NSString*)MaxCount {
		[super setInput:@"MaxCount" toValue:MaxCount];
	}

	/*!
	 * Set the value of the MinCount input for this Choreo.
	*(required, integer) The minimum number of instances to launch. If the value is more than Amazon EC2 can launch, no instances are launched at all.
	 */
	-(void)setMinCount:(NSString*)MinCount {
		[super setInput:@"MinCount" toValue:MinCount];
	}

	/*!
	 * Set the value of the MonitoringEnabled input for this Choreo.
	*(optional, boolean) Enables monitoring for the instance. Defaults to false.
	 */
	-(void)setMonitoringEnabled:(NSString*)MonitoringEnabled {
		[super setInput:@"MonitoringEnabled" toValue:MonitoringEnabled];
	}

	/*!
	 * Set the value of the NoDevice input for this Choreo.
	*(optional, boolean) Suppresses a device mapping. This is a Block Device Mapping parameter.
	 */
	-(void)setNoDevice:(NSString*)NoDevice {
		[super setInput:@"NoDevice" toValue:NoDevice];
	}

	/*!
	 * Set the value of the PlacementAvailabilityZone input for this Choreo.
	*(optional, string) The Availability Zone to launch the instance into.
	 */
	-(void)setPlacementAvailabilityZone:(NSString*)PlacementAvailabilityZone {
		[super setInput:@"PlacementAvailabilityZone" toValue:PlacementAvailabilityZone];
	}

	/*!
	 * Set the value of the PlacementGroupName input for this Choreo.
	*(optional, string) The name of an existing placement group you want to launch the instance into (for cluster instances).
	 */
	-(void)setPlacementGroupName:(NSString*)PlacementGroupName {
		[super setInput:@"PlacementGroupName" toValue:PlacementGroupName];
	}

	/*!
	 * Set the value of the PlacementTenancy input for this Choreo.
	*(optional, string) The tenancy of the instance. When set to "dedicated", the instance will run on single-tenant hardware and can only be launched into a VPC.
	 */
	-(void)setPlacementTenancy:(NSString*)PlacementTenancy {
		[super setInput:@"PlacementTenancy" toValue:PlacementTenancy];
	}

	/*!
	 * Set the value of the RamdiskId input for this Choreo.
	*(optional, string) The ID of the RAM disk.
	 */
	-(void)setRamdiskId:(NSString*)RamdiskId {
		[super setInput:@"RamdiskId" toValue:RamdiskId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecurityGroupId input for this Choreo.
	*(optional, string) One or more security group IDs. This can be a comma-separated list of up to 10 security group ids.
	 */
	-(void)setSecurityGroupId:(NSString*)SecurityGroupId {
		[super setInput:@"SecurityGroupId" toValue:SecurityGroupId];
	}

	/*!
	 * Set the value of the SecurityGroup input for this Choreo.
	*(optional, string) One or more security group names. This can be a comma-separated list of up to 10 security group names.
	 */
	-(void)setSecurityGroup:(NSString*)SecurityGroup {
		[super setInput:@"SecurityGroup" toValue:SecurityGroup];
	}

	/*!
	 * Set the value of the ShutdownBehavior input for this Choreo.
	*(optional, string) Whether the instance stops or terminates on instance-initiated shutdown. Valid values are: stop and terminate.
	 */
	-(void)setShutdownBehavior:(NSString*)ShutdownBehavior {
		[super setInput:@"ShutdownBehavior" toValue:ShutdownBehavior];
	}

	/*!
	 * Set the value of the SnapshotId input for this Choreo.
	*(optional, string) The ID of the snapshot. This is a Block Device Mapping parameter.
	 */
	-(void)setSnapshotId:(NSString*)SnapshotId {
		[super setInput:@"SnapshotId" toValue:SnapshotId];
	}

	/*!
	 * Set the value of the SubnetId input for this Choreo.
	*(optional, string) The ID of the subnet to launch the instance into (i.e. subnet-dea63cb7).
	 */
	-(void)setSubnetId:(NSString*)SubnetId {
		[super setInput:@"SubnetId" toValue:SubnetId];
	}

	/*!
	 * Set the value of the UserData input for this Choreo.
	*(optional, string) The Base64-encoded MIME user data to be made available to the instance(s).
	 */
	-(void)setUserData:(NSString*)UserData {
		[super setInput:@"UserData" toValue:UserData];
	}

	/*!
	 * Set the value of the VirtualName input for this Choreo.
	*(optional, string) The name of the virtual device. This is a Block Device Mapping parameter.
	 */
	-(void)setVirtualName:(NSString*)VirtualName {
		[super setInput:@"VirtualName" toValue:VirtualName];
	}

	/*!
	 * Set the value of the VolumeSize input for this Choreo.
	*(optional, string) The size of the volume, in GiBs. Required unless you're creating the volume from a snapshot which indicates that the size will be the size of the snapshot. This is a Block Device Mapping parameter.
	 */
	-(void)setVolumeSize:(NSString*)VolumeSize {
		[super setInput:@"VolumeSize" toValue:VolumeSize];
	}

	/*!
	 * Set the value of the VolumeType input for this Choreo.
	*(optional, string) The volume type. Valid values are: standard (the default) and io1. This is a Block Device Mapping parameter.
	 */
	-(void)setVolumeType:(NSString*)VolumeType {
		[super setInput:@"VolumeType" toValue:VolumeType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunInstances Choreo.
 */
@implementation TMBAmazon_EC2_RunInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Launches the specified number of instances of an AMI for which you have permissions.
 */
@implementation TMBAmazon_EC2_RunInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_RunInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/RunInstances"] autorelease];
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
		TMBAmazon_EC2_RunInstances_ResultSet *results = [[[TMBAmazon_EC2_RunInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RunInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_RunInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_RunInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUserPolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteUserPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the PolicyName input for this Choreo.
	*(required, string) Name of the user policy document you would like to delete.
	 */
	-(void)setPolicyName:(NSString*)PolicyName {
		[super setInput:@"PolicyName" toValue:PolicyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user to delete the specified policy for.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUserPolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteUserPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified policy associated with the specified user.
 */
@implementation TMBAmazon_IAM_DeleteUserPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteUserPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteUserPolicy"] autorelease];
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
		TMBAmazon_IAM_DeleteUserPolicy_ResultSet *results = [[[TMBAmazon_IAM_DeleteUserPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteUserPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteUserPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteUserPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateSecurityGroup Choreo.
 */
@implementation TMBAmazon_EC2_CreateSecurityGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupDescription input for this Choreo.
	*(required, string) A description for the security group that that you want to create.
	 */
	-(void)setGroupDescription:(NSString*)GroupDescription {
		[super setInput:@"GroupDescription" toValue:GroupDescription];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) A name for the security group to create.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VpcId input for this Choreo.
	*(optional, string) The ID of the VPC. Required for EC2-VPC.
	 */
	-(void)setVpcId:(NSString*)VpcId {
		[super setInput:@"VpcId" toValue:VpcId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSecurityGroup Choreo.
 */
@implementation TMBAmazon_EC2_CreateSecurityGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new EC2 security group.
 */
@implementation TMBAmazon_EC2_CreateSecurityGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_CreateSecurityGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/CreateSecurityGroup"] autorelease];
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
		TMBAmazon_EC2_CreateSecurityGroup_ResultSet *results = [[[TMBAmazon_EC2_CreateSecurityGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateSecurityGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_CreateSecurityGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_CreateSecurityGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetServiceStatus Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetServiceStatus_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetServiceStatus Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetServiceStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Status" output from an execution of this Choreo.
	 * @return - NSString* (string) The service status parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getStatus {
		return [super getOutputByName:@"Status"];
	}
	
@end

/*!
 * This is the standard method following MWS API GetServiceStatus standard. It can return a GREEN, GREEN_I, YELLOW or RED status.
 */
@implementation TMBAmazon_Marketplace_Products_GetServiceStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetServiceStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetServiceStatus"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetServiceStatus_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetServiceStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetServiceStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetServiceStatus_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetServiceStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGroups Choreo.
 */
@implementation TMBAmazon_IAM_ListGroups_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the PathPrefix input for this Choreo.
	*(optional, string) The path prefix for filtering the results. For example, "/division_abc/subdivision_xyz/" retrieves all groups whose path starts with that string. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPathPrefix:(NSString*)PathPrefix {
		[super setInput:@"PathPrefix" toValue:PathPrefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGroups Choreo.
 */
@implementation TMBAmazon_IAM_ListGroups_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of groups and allows you to filter the results with a specific path prefix.
 */
@implementation TMBAmazon_IAM_ListGroups

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListGroups Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListGroups"] autorelease];
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
		TMBAmazon_IAM_ListGroups_ResultSet *results = [[[TMBAmazon_IAM_ListGroups_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGroups Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListGroups_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListGroups_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddOrUpdateInventoryItem Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ExpeditedShipping input for this Choreo.
	*(optional, string) The expedited shipping options that you offer for this item. Valid values: 3 = UK Only; N = None, no express delivery offered.
	 */
	-(void)setExpeditedShipping:(NSString*)ExpeditedShipping {
		[super setInput:@"ExpeditedShipping" toValue:ExpeditedShipping];
	}

	/*!
	 * Set the value of the FulfillmentCenterId input for this Choreo.
	*(conditional, string) For those merchants using Amazon fulfillment services, this designates which fulfillment network will be used. Required when using Amazon fulfillment services. Valid values are: AMAZON_EU, DEFAULT.
	 */
	-(void)setFulfillmentCenterId:(NSString*)FulfillmentCenterId {
		[super setInput:@"FulfillmentCenterId" toValue:FulfillmentCenterId];
	}

	/*!
	 * Set the value of the ItemCondition input for this Choreo.
	*(conditional, integer) A numerical entry that indicates the condition of the item. Required for new listings. Valid values are: 1-11. See documentation for description of item condition numeric values.
	 */
	-(void)setItemCondition:(NSString*)ItemCondition {
		[super setInput:@"ItemCondition" toValue:ItemCondition];
	}

	/*!
	 * Set the value of the ItemNote input for this Choreo.
	*(optional, string) A description or note for the item you're adding or updating.
	 */
	-(void)setItemNote:(NSString*)ItemNote {
		[super setInput:@"ItemNote" toValue:ItemNote];
	}

	/*!
	 * Set the value of the Price input for this Choreo.
	*(conditional, decimal) The price at which the merchant offers the product for sale. Required if ProductId is provided.
	 */
	-(void)setPrice:(NSString*)Price {
		[super setInput:@"Price" toValue:Price];
	}

	/*!
	 * Set the value of the ProductIdType input for this Choreo.
	*(conditional, integer) The type of standard, unique identifier entered in the product-id field. This is a required field if product-id is provided. Valid values are: 1 (ASIN), 2 (ISBN), 3 (UPC), 4  (EAN).
	 */
	-(void)setProductIdType:(NSString*)ProductIdType {
		[super setInput:@"ProductIdType" toValue:ProductIdType];
	}

	/*!
	 * Set the value of the ProductId input for this Choreo.
	*(conditional, string) A standard, alphanumeric string that uniquely identifies the product. This could be a UPC, EAN or ISBN.  This is a required field if product-id-type is provided.
	 */
	-(void)setProductId:(NSString*)ProductId {
		[super setInput:@"ProductId" toValue:ProductId];
	}

	/*!
	 * Set the value of the Quantity input for this Choreo.
	*(conditional, integer) Enter the quantity of the item you are making available for sale. Required for merchant-fulfilled items. Leave blank for amazon-fullfilled items.
	 */
	-(void)setQuantity:(NSString*)Quantity {
		[super setInput:@"Quantity" toValue:Quantity];
	}

	/*!
	 * Set the value of the SKU input for this Choreo.
	*(required, string) A unique identifier for the product, assigned by the merchant. The SKU must be unique for each product listed.
	 */
	-(void)setSKU:(NSString*)SKU {
		[super setInput:@"SKU" toValue:SKU];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}

	/*!
	 * Set the value of the WillShipInternationally input for this Choreo.
	*(optional, integer) Specify your international shipping options. Valid values are: 3 = UK Only; 4 = UK and Europe; 5 = UK, Europe, and North America; 6 = Worldwide
	 */
	-(void)setWillShipInternationally:(NSString*)WillShipInternationally {
		[super setInput:@"WillShipInternationally" toValue:WillShipInternationally];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddOrUpdateInventoryItem Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the product submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Add or update an individual inventory listing.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/AddOrUpdateInventoryItem"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddOrUpdateInventoryItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountActivity Choreo.
 */
@implementation TMBAmazon_FPS_GetAccountActivity_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) The endpoint should be fps.sandbox.amazonaws.com when accessing the sandbox. Defaults to production setting:  fps.amazonaws.com.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) The first date of transactions to return (epoch timestamp in milliseconds or formatted like 2009-10-07Z).
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountActivity Choreo.
 */
@implementation TMBAmazon_FPS_GetAccountActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns account transactions from a specified start date.
 */
@implementation TMBAmazon_FPS_GetAccountActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_FPS_GetAccountActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/FPS/GetAccountActivity"] autorelease];
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
		TMBAmazon_FPS_GetAccountActivity_ResultSet *results = [[[TMBAmazon_FPS_GetAccountActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccountActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_FPS_GetAccountActivity_Inputs*)newInputSet {
		return [[[TMBAmazon_FPS_GetAccountActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@implementation TMBAmazon_S3_DeleteObject_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The the name of the bucket that contains the object that you want to delete.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The file name that you want to delete.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@implementation TMBAmazon_S3_DeleteObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that no content is returned for a successful delete operation.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified item from an Amazon S3 bucket.
 */
@implementation TMBAmazon_S3_DeleteObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteObject"] autorelease];
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
		TMBAmazon_S3_DeleteObject_ResultSet *results = [[[TMBAmazon_S3_DeleteObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteObject_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketList Choreo.
 */
@implementation TMBAmazon_S3_GetBucketList_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that contains the list of objects that you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the Delimiter input for this Choreo.
	*(optional, string) A delimiter is a character you use to group keys. All keys that contain the delimiter are grouped under a single result element, Common Prefixes. For more information see Amazon documentation.
	 */
	-(void)setDelimiter:(NSString*)Delimiter {
		[super setInput:@"Delimiter" toValue:Delimiter];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Specifies the key to start with when listing objects in a bucket. Amazon S3 lists objects in alphabetical order.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxKeys input for this Choreo.
	*(optional, string) Lowers the max number of keys returned in the response from 1000 to specified value.The response will contain the key IsTruncated (true) if there are additional keys that exceed the # of MaxKeys.
	 */
	-(void)setMaxKeys:(NSString*)MaxKeys {
		[super setInput:@"MaxKeys" toValue:MaxKeys];
	}

	/*!
	 * Set the value of the Prefix input for this Choreo.
	*(optional, string) Limits the response to keys that begin with the specified prefix - useful for separating a bucket into different groupings of keys. Ex: specify 'test' to get a list of objects starting with 'test'.
	 */
	-(void)setPrefix:(NSString*)Prefix {
		[super setInput:@"Prefix" toValue:Prefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketList Choreo.
 */
@implementation TMBAmazon_S3_GetBucketList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the items that are in a specified Amazon S3 storage bucket.
 */
@implementation TMBAmazon_S3_GetBucketList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketList"] autorelease];
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
		TMBAmazon_S3_GetBucketList_ResultSet *results = [[[TMBAmazon_S3_GetBucketList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketList_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccountAlias Choreo.
 */
@implementation TMBAmazon_IAM_CreateAccountAlias_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AccountAlias input for this Choreo.
	*(required, string) Name of the account alias to create. Must contain only digits, lowercase letters, and hyphens (-), but cannot begin or end with a hyphen. Ex.: alias-account-name.
	 */
	-(void)setAccountAlias:(NSString*)AccountAlias {
		[super setInput:@"AccountAlias" toValue:AccountAlias];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccountAlias Choreo.
 */
@implementation TMBAmazon_IAM_CreateAccountAlias_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an alias for your AWS account.
 */
@implementation TMBAmazon_IAM_CreateAccountAlias

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateAccountAlias Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateAccountAlias"] autorelease];
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
		TMBAmazon_IAM_CreateAccountAlias_ResultSet *results = [[[TMBAmazon_IAM_CreateAccountAlias_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAccountAlias Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateAccountAlias_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateAccountAlias_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeDBInstances Choreo.
 */
@implementation TMBAmazon_RDS_DescribeDBInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(optional, string) The DB Instance identifier. Should be in all lowercase.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, integer) If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) The max number of results to return in the response. Defaults to 100. Minimum is 20.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeDBInstances Choreo.
 */
@implementation TMBAmazon_RDS_DescribeDBInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about privisioned database instances.
 */
@implementation TMBAmazon_RDS_DescribeDBInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DescribeDBInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DescribeDBInstances"] autorelease];
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
		TMBAmazon_RDS_DescribeDBInstances_ResultSet *results = [[[TMBAmazon_RDS_DescribeDBInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeDBInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DescribeDBInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DescribeDBInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SetQueueAttributes Choreo.
 */
@implementation TMBAmazon_SQS_SetQueueAttributes_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account number of the queue owner. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AttributeName input for this Choreo.
	*(required, string) The name of the attribute that you want to set. Valid values are: VisibilityTimeout, Policy, MaximumMessageSize, or MessageRetentionPeriod.
	 */
	-(void)setAttributeName:(NSString*)AttributeName {
		[super setInput:@"AttributeName" toValue:AttributeName];
	}

	/*!
	 * Set the value of the AttributeValue input for this Choreo.
	*(required, string) The value of the attribute you want to set. Corresponds to the AttributeName you specify.
	 */
	-(void)setAttributeValue:(NSString*)AttributeValue {
		[super setInput:@"AttributeValue" toValue:AttributeValue];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue you want to set attributes for.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetQueueAttributes Choreo.
 */
@implementation TMBAmazon_SQS_SetQueueAttributes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets an attribute of a specified queue.
 */
@implementation TMBAmazon_SQS_SetQueueAttributes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_SetQueueAttributes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/SetQueueAttributes"] autorelease];
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
		TMBAmazon_SQS_SetQueueAttributes_ResultSet *results = [[[TMBAmazon_SQS_SetQueueAttributes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SetQueueAttributes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_SetQueueAttributes_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_SetQueueAttributes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFeedSubmissionResult Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FeedSubmissionId input for this Choreo.
	*(required, string) A FeedSubmmissionId value.
	 */
	-(void)setFeedSubmissionId:(NSString*)FeedSubmissionId {
		[super setInput:@"FeedSubmissionId" toValue:FeedSubmissionId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFeedSubmissionResult Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ContentMD5Header" output from an execution of this Choreo.
	 * @return - NSString* (string) The Content MD5 header returned from Amazon. This can used to check against an MD5 hash that you generate before submitting the feed to verify that the feed was submitted correctly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getContentMD5Header {
		return [super getOutputByName:@"ContentMD5Header"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed processing report and the Content-MD5 header.
 */
@implementation TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/GetFeedSubmissionResult"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFeedSubmissionResult Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_GetFeedSubmissionResult_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SubmitFeed Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_SubmitFeed_Inputs

	/*!
	 * Set the value of the FeedData input for this Choreo.
	*(conditional, multiline) The feed data to submit to Amazon Marketplace.
	 */
	-(void)setFeedData:(NSString*)FeedData {
		[super setInput:@"FeedData" toValue:FeedData];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FeedType input for this Choreo.
	*(optional, string) The type of feed being submitted.  Default value is set to  _POST_FLAT_FILE_INVLOADER_DATA_).
	 */
	-(void)setFeedType:(NSString*)FeedType {
		[super setInput:@"FeedType" toValue:FeedType];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the vault file you want to submit. Required unless you using the FeedData input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SubmitFeed Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_SubmitFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the feed submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Submits a feed, of the specified type, to Amazon Marketplace.
 */
@implementation TMBAmazon_Marketplace_Feeds_SubmitFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_SubmitFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/SubmitFeed"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_SubmitFeed_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_SubmitFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SubmitFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_SubmitFeed_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_SubmitFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketACL Choreo.
 */
@implementation TMBAmazon_S3_GetBucketACL_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the ACL you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketACL Choreo.
 */
@implementation TMBAmazon_S3_GetBucketACL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the access control list (ACL) of a bucket.
 */
@implementation TMBAmazon_S3_GetBucketACL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketACL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketACL"] autorelease];
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
		TMBAmazon_S3_GetBucketACL_ResultSet *results = [[[TMBAmazon_S3_GetBucketACL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketACL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketACL_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketACL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteQueue Choreo.
 */
@implementation TMBAmazon_SQS_DeleteQueue_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The id for the AWS account associated with the queue you're deleting a message from (remove all dashes in the account number).
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue you want to delete.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteQueue Choreo.
 */
@implementation TMBAmazon_SQS_DeleteQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a queue with a specified queue URL.
 */
@implementation TMBAmazon_SQS_DeleteQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_DeleteQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/DeleteQueue"] autorelease];
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
		TMBAmazon_SQS_DeleteQueue_ResultSet *results = [[[TMBAmazon_SQS_DeleteQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_DeleteQueue_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_DeleteQueue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInventoryItem Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_Inputs

	/*!
	 * Set the value of the SKU input for this Choreo.
	*(required, string) A individual SKU associating with the product to delete.
	 */
	-(void)setSKU:(NSString*)SKU {
		[super setInput:@"SKU" toValue:SKU];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DeleteOptions input for this Choreo.
	*(optional, string) Use 'd' to reduce the listings inventory to 0 and keep details in the system. Use 'x'  to completely delete listings from your current inventory. Defaults to "d".
	 */
	-(void)setDeleteOptions:(NSString*)DeleteOptions {
		[super setInput:@"DeleteOptions" toValue:DeleteOptions];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the vault file you want to submit.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInventoryItem Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the feed submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Deletes an individual inventory listings from a Seller Central account with a given SKU.
 */
@implementation TMBAmazon_Marketplace_Feeds_DeleteInventoryItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_DeleteInventoryItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/DeleteInventoryItem"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteInventoryItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_DeleteInventoryItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadSigningCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UploadSigningCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CertificateBody input for this Choreo.
	*(required, multiline) The contents of the signing certificate.
	 */
	-(void)setCertificateBody:(NSString*)CertificateBody {
		[super setInput:@"CertificateBody" toValue:CertificateBody];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(optional, string) The name of the user.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadSigningCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UploadSigningCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads an X.509 signing certificate and associates it with the specified user.
 */
@implementation TMBAmazon_IAM_UploadSigningCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UploadSigningCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UploadSigningCertificate"] autorelease];
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
		TMBAmazon_IAM_UploadSigningCertificate_ResultSet *results = [[[TMBAmazon_IAM_UploadSigningCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadSigningCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UploadSigningCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UploadSigningCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFeedSubmissionList Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FeedProcessingStatusList input for this Choreo.
	*(optional, string) A comma separated list of one or more feed processing statuses by which to filter the list of feed submissions.
	 */
	-(void)setFeedProcessingStatusList:(NSString*)FeedProcessingStatusList {
		[super setInput:@"FeedProcessingStatusList" toValue:FeedProcessingStatusList];
	}

	/*!
	 * Set the value of the FeedSubmissionIdList input for this Choreo.
	*(optional, string) A comma separated list of FeedSubmmissionId values. If you pass in FeedSubmmissionId values in a request, other query conditions are ignored.
	 */
	-(void)setFeedSubmissionIdList:(NSString*)FeedSubmissionIdList {
		[super setInput:@"FeedSubmissionIdList" toValue:FeedSubmissionIdList];
	}

	/*!
	 * Set the value of the FeedTypeList input for this Choreo.
	*(optional, string) A comma separated list of one or more FeedType enumeration values by which to filter the list of feed submissions.
	 */
	-(void)setFeedTypeList:(NSString*)FeedTypeList {
		[super setInput:@"FeedTypeList" toValue:FeedTypeList];
	}

	/*!
	 * Set the value of the MaxCount input for this Choreo.
	*(optional, integer) A non-negative integer that indicates the maximum number of feed submissions to return in the list. Defaults to 10. Max is 100.
	 */
	-(void)setMaxCount:(NSString*)MaxCount {
		[super setInput:@"MaxCount" toValue:MaxCount];
	}

	/*!
	 * Set the value of the SubmittedFromDate input for this Choreo.
	*(optional, date) The earliest submission date that you are looking for, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setSubmittedFromDate:(NSString*)SubmittedFromDate {
		[super setInput:@"SubmittedFromDate" toValue:SubmittedFromDate];
	}

	/*!
	 * Set the value of the SubmittedToDate input for this Choreo.
	*(optional, date) The latest submission date that you are looking for, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setSubmittedToDate:(NSString*)SubmittedToDate {
		[super setInput:@"SubmittedToDate" toValue:SubmittedToDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFeedSubmissionList Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FeedProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The FeedProcessingStatus parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFeedProcessingStatus {
		return [super getOutputByName:@"FeedProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "FeedSubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The FeedSubmissionId parsed from the Amazon response. If multiple records are returned, this output variable will contain the first id in the list.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFeedSubmissionId {
		return [super getOutputByName:@"FeedSubmissionId"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of all feed submissions submitted in the previous 90 days.
 */
@implementation TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/GetFeedSubmissionList"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFeedSubmissionList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_GetFeedSubmissionList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetProductCategoriesForASIN Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_Inputs

	/*!
	 * Set the value of the ASIN input for this Choreo.
	*(required, string) An ASIN value used to identify a product in the given marketplace.
	 */
	-(void)setASIN:(NSString*)ASIN {
		[super setInput:@"ASIN" toValue:ASIN];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProductCategoriesForASIN Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the product categories that a product belongs to, including parent categories back to the root for the marketplace. This method uses a MarketplaceId and an ASIN to uniquely identify a product.
 */
@implementation TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetProductCategoriesForASIN"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetProductCategoriesForASIN Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetProductCategoriesForASIN_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_GetInstanceProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceProfileName input for this Choreo.
	*(required, string) Name of the instance profile to get information about.
	 */
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName {
		[super setInput:@"InstanceProfileName" toValue:InstanceProfileName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_GetInstanceProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about the specified instance profile, including the instance profile's path, ARN, and RoleId.
 */
@implementation TMBAmazon_IAM_GetInstanceProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetInstanceProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetInstanceProfile"] autorelease];
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
		TMBAmazon_IAM_GetInstanceProfile_ResultSet *results = [[[TMBAmazon_IAM_GetInstanceProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetInstanceProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetInstanceProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetInstanceProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MerchantListingsReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_MerchantListingsReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 5 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MerchantListingsReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_MerchantListingsReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Report" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The report contents.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReport {
		return [super getOutputByName:@"Report"];
	}
	
@end

/*!
 * Returns a tab-delimited report of active listings.
 */
@implementation TMBAmazon_Marketplace_Reports_MerchantListingsReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_MerchantListingsReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/MerchantListingsReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_MerchantListingsReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_MerchantListingsReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MerchantListingsReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_MerchantListingsReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_MerchantListingsReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccessKey Choreo.
 */
@implementation TMBAmazon_IAM_UpdateAccessKey_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AccessKeyId input for this Choreo.
	*(conditional, string) The Access Key ID for the Access Key ID and Secret Access Key you want to delete.
	 */
	-(void)setAccessKeyId:(NSString*)AccessKeyId {
		[super setInput:@"AccessKeyId" toValue:AccessKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(required, string) The status you want to assign to the Secret Access Key. Active means the key can be used for API calls to AWS, while Inactive means the key cannot be used.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(conditional, string) Name of the user whose key you want to update.  If the UserName field is not specified, the UserName is determined implicitly based on the AWS Access Key ID used to sign the request.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccessKey Choreo.
 */
@implementation TMBAmazon_IAM_UpdateAccessKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Changes the status of the specified access key from Active to Inactive, or vice versa. This action can be used to disable a user's key as part of a key rotation workflow.
 */
@implementation TMBAmazon_IAM_UpdateAccessKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateAccessKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateAccessKey"] autorelease];
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
		TMBAmazon_IAM_UpdateAccessKey_ResultSet *results = [[[TMBAmazon_IAM_UpdateAccessKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAccessKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateAccessKey_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateAccessKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateKeyPair Choreo.
 */
@implementation TMBAmazon_EC2_CreateKeyPair_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(required, string) A unique name for the key pair.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateKeyPair Choreo.
 */
@implementation TMBAmazon_EC2_CreateKeyPair_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new 2048-bit RSA key pair with the specified name. 
 */
@implementation TMBAmazon_EC2_CreateKeyPair

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_CreateKeyPair Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/CreateKeyPair"] autorelease];
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
		TMBAmazon_EC2_CreateKeyPair_ResultSet *results = [[[TMBAmazon_EC2_CreateKeyPair_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateKeyPair Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_CreateKeyPair_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_CreateKeyPair_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UpdateServerCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the NewPath input for this Choreo.
	*(conditional, string) The new path for the server certificate. Include this only if you are updating the server certificate's path.
	 */
	-(void)setNewPath:(NSString*)NewPath {
		[super setInput:@"NewPath" toValue:NewPath];
	}

	/*!
	 * Set the value of the NewServerCertificateName input for this Choreo.
	*(conditional, string) The new name for the server certificate. Include this only if you are updating the server certificate's name.
	 */
	-(void)setNewServerCertificateName:(NSString*)NewServerCertificateName {
		[super setInput:@"NewServerCertificateName" toValue:NewServerCertificateName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ServerCertificateName input for this Choreo.
	*(required, string) The name for the server certificate. Do not include the path in this value.
	 */
	-(void)setServerCertificateName:(NSString*)ServerCertificateName {
		[super setInput:@"ServerCertificateName" toValue:ServerCertificateName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UpdateServerCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the name and/or the path of the specified server certificate.
 */
@implementation TMBAmazon_IAM_UpdateServerCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateServerCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateServerCertificate"] autorelease];
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
		TMBAmazon_IAM_UpdateServerCertificate_ResultSet *results = [[[TMBAmazon_IAM_UpdateServerCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateServerCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateServerCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateServerCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketVersioning Choreo.
 */
@implementation TMBAmazon_S3_PutBucketVersioning_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to create a notification for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(required, string) Indicates whether or not the bucket has versioning enabled. Valid values are: Enabled or Suspended (case-sensitive).
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketVersioning Choreo.
 */
@implementation TMBAmazon_S3_PutBucketVersioning_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful execution, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the versioning state of an existing bucket.
 */
@implementation TMBAmazon_S3_PutBucketVersioning

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketVersioning Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketVersioning"] autorelease];
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
		TMBAmazon_S3_PutBucketVersioning_ResultSet *results = [[[TMBAmazon_S3_PutBucketVersioning_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketVersioning Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketVersioning_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketVersioning_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeInstances Choreo.
 */
@implementation TMBAmazon_EC2_DescribeInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(optional, string) The ID(s) of the instance(s) you want to monitor. This can be a comma-separated list of up to 10 instance IDs.  Returns all instances if this parameter is not specified.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeInstances Choreo.
 */
@implementation TMBAmazon_EC2_DescribeInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information on EC2 instances associated with your AWS account.
 */
@implementation TMBAmazon_EC2_DescribeInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeInstances"] autorelease];
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
		TMBAmazon_EC2_DescribeInstances_ResultSet *results = [[[TMBAmazon_EC2_DescribeInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CancelFulfillmentOrder Choreo.
 */
@implementation TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SellerFulfillmentOrderId input for this Choreo.
	*(required, string) The fulfillment order id that you created and submitted using the CreateFulfillmentOrder Choreo.
	 */
	-(void)setSellerFulfillmentOrderId:(NSString*)SellerFulfillmentOrderId {
		[super setInput:@"SellerFulfillmentOrderId" toValue:SellerFulfillmentOrderId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelFulfillmentOrder Choreo.
 */
@implementation TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Makes a requests to Amazon to cancel an existing fulfillment order.
 */
@implementation TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/OutboundShipments/CancelFulfillmentOrder"] autorelease];
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
		TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_ResultSet *results = [[[TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CancelFulfillmentOrder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_OutboundShipments_CancelFulfillmentOrder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ModifyImageAttribute Choreo.
 */
@implementation TMBAmazon_EC2_ModifyImageAttribute_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AddGroup input for this Choreo.
	*(optional, string) Adds the specified group to the image's list of launch permissions. The only valid value is "all".
	 */
	-(void)setAddGroup:(NSString*)AddGroup {
		[super setInput:@"AddGroup" toValue:AddGroup];
	}

	/*!
	 * Set the value of the AddUserId input for this Choreo.
	*(optional, string) Adds the specified AWS account ID to the AMI's list of launch permissions.
	 */
	-(void)setAddUserId:(NSString*)AddUserId {
		[super setInput:@"AddUserId" toValue:AddUserId];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) Changes the AMI's description to the specified value.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ImageId input for this Choreo.
	*(required, string) The AMI ID.
	 */
	-(void)setImageId:(NSString*)ImageId {
		[super setInput:@"ImageId" toValue:ImageId];
	}

	/*!
	 * Set the value of the ProductCode input for this Choreo.
	*(optional, string) Adds the specified product code to the specified Amazon S3-backed AMI. Once you add a product code to an AMI, it can't be removed.
	 */
	-(void)setProductCode:(NSString*)ProductCode {
		[super setInput:@"ProductCode" toValue:ProductCode];
	}

	/*!
	 * Set the value of the RemoveGroup input for this Choreo.
	*(optional, string) Removes the specified group from the image's list of launch permissions. The only valid value is "all".
	 */
	-(void)setRemoveGroup:(NSString*)RemoveGroup {
		[super setInput:@"RemoveGroup" toValue:RemoveGroup];
	}

	/*!
	 * Set the value of the RemoveUserId input for this Choreo.
	*(optional, string) Removes the specified AWS account ID from the AMI's list of launch permissions.
	 */
	-(void)setRemoveUserId:(NSString*)RemoveUserId {
		[super setInput:@"RemoveUserId" toValue:RemoveUserId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ModifyImageAttribute Choreo.
 */
@implementation TMBAmazon_EC2_ModifyImageAttribute_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Modifies an attribute of an AMI.
 */
@implementation TMBAmazon_EC2_ModifyImageAttribute

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_ModifyImageAttribute Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/ModifyImageAttribute"] autorelease];
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
		TMBAmazon_EC2_ModifyImageAttribute_ResultSet *results = [[[TMBAmazon_EC2_ModifyImageAttribute_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ModifyImageAttribute Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_ModifyImageAttribute_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_ModifyImageAttribute_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUserPolicies Choreo.
 */
@implementation TMBAmazon_IAM_ListUserPolicies_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to list policies for.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserPolicies Choreo.
 */
@implementation TMBAmazon_IAM_ListUserPolicies_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the names of the policies associated with the specified user.
 */
@implementation TMBAmazon_IAM_ListUserPolicies

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListUserPolicies Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListUserPolicies"] autorelease];
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
		TMBAmazon_IAM_ListUserPolicies_ResultSet *results = [[[TMBAmazon_IAM_ListUserPolicies_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUserPolicies Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListUserPolicies_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListUserPolicies_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccountPasswordPolicy Choreo.
 */
@implementation TMBAmazon_IAM_UpdateAccountPasswordPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllowUsersToChangePassword input for this Choreo.
	*(optional, boolean) Determines whether users can set/change their own passwords. Valid values: "true" or "false" (the default).
	 */
	-(void)setAllowUsersToChangePassword:(NSString*)AllowUsersToChangePassword {
		[super setInput:@"AllowUsersToChangePassword" toValue:AllowUsersToChangePassword];
	}

	/*!
	 * Set the value of the ExpirePasswords input for this Choreo.
	*(optional, boolean) Determines whether the passwords expire. Valid values: "true" or "false" (the default).
	 */
	-(void)setExpirePasswords:(NSString*)ExpirePasswords {
		[super setInput:@"ExpirePasswords" toValue:ExpirePasswords];
	}

	/*!
	 * Set the value of the MaxPasswordsAge input for this Choreo.
	*(optional, integer) Maximum age of the passwords before they expire.
	 */
	-(void)setMaxPasswordsAge:(NSString*)MaxPasswordsAge {
		[super setInput:@"MaxPasswordsAge" toValue:MaxPasswordsAge];
	}

	/*!
	 * Set the value of the MinimumPasswordLength input for this Choreo.
	*(optional, integer) Mininum length of the password. Defaults to none.
	 */
	-(void)setMinimumPasswordLength:(NSString*)MinimumPasswordLength {
		[super setInput:@"MinimumPasswordLength" toValue:MinimumPasswordLength];
	}

	/*!
	 * Set the value of the RequireLowercaseCharacters input for this Choreo.
	*(optional, boolean) Determines whether at least one lower-case character is required in the password. Valid values: "true" or "false" (the default).
	 */
	-(void)setRequireLowercaseCharacters:(NSString*)RequireLowercaseCharacters {
		[super setInput:@"RequireLowercaseCharacters" toValue:RequireLowercaseCharacters];
	}

	/*!
	 * Set the value of the RequireNumbers input for this Choreo.
	*(optional, boolean) Determines whether numbers are required in the password. Valid values: "true" or "false" (the default).
	 */
	-(void)setRequireNumbers:(NSString*)RequireNumbers {
		[super setInput:@"RequireNumbers" toValue:RequireNumbers];
	}

	/*!
	 * Set the value of the RequireSymbols input for this Choreo.
	*(optional, boolean) Determines whether symbols are required in the password. Valid values: "true" or "false" (the default).
	 */
	-(void)setRequireSymbols:(NSString*)RequireSymbols {
		[super setInput:@"RequireSymbols" toValue:RequireSymbols];
	}

	/*!
	 * Set the value of the RequireUppercaseCharacters input for this Choreo.
	*(optional, boolean) Determines whether at least one upper-case character is required in the password. Valid values: "true" or "false" (the default).
	 */
	-(void)setRequireUppercaseCharacters:(NSString*)RequireUppercaseCharacters {
		[super setInput:@"RequireUppercaseCharacters" toValue:RequireUppercaseCharacters];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccountPasswordPolicy Choreo.
 */
@implementation TMBAmazon_IAM_UpdateAccountPasswordPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the password policy settings for the account.
 */
@implementation TMBAmazon_IAM_UpdateAccountPasswordPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateAccountPasswordPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateAccountPasswordPolicy"] autorelease];
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
		TMBAmazon_IAM_UpdateAccountPasswordPolicy_ResultSet *results = [[[TMBAmazon_IAM_UpdateAccountPasswordPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAccountPasswordPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateAccountPasswordPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateAccountPasswordPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RequestReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_RequestReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) The end of a date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ReportOptions input for this Choreo.
	*(optional, string) A Boolean value that shows or hides an additional column of information on several order reports. When set to ShowSalesChannel=true, an additional column is added showing the sales channel.
	 */
	-(void)setReportOptions:(NSString*)ReportOptions {
		[super setInput:@"ReportOptions" toValue:ReportOptions];
	}

	/*!
	 * Set the value of the ReportType input for this Choreo.
	*(optional, string) A ReportType enumeration value. Defaults to _GET_FLAT_FILE_OPEN_LISTINGS_DATA_.
	 */
	-(void)setReportType:(NSString*)ReportType {
		[super setInput:@"ReportType" toValue:ReportType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) The start of a date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RequestReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_RequestReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a report request and submits the request to Amazon MWS.
 */
@implementation TMBAmazon_Marketplace_Reports_RequestReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_RequestReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/RequestReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_RequestReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_RequestReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RequestReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_RequestReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_RequestReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DetachVolume Choreo.
 */
@implementation TMBAmazon_EC2_DetachVolume_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Device input for this Choreo.
	*(optional, string) The device name.
	 */
	-(void)setDevice:(NSString*)Device {
		[super setInput:@"Device" toValue:Device];
	}

	/*!
	 * Set the value of the Force input for this Choreo.
	*(required, boolean) Forces detachment if the previous detachment attempt did not occur cleanly. Use this option only as a last resort to detach a volume from a failed instance. Defaults to false.
	 */
	-(void)setForce:(NSString*)Force {
		[super setInput:@"Force" toValue:Force];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(optional, string) The ID of the instance.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VolumeId input for this Choreo.
	*(required, string) The ID of the volume.
	 */
	-(void)setVolumeId:(NSString*)VolumeId {
		[super setInput:@"VolumeId" toValue:VolumeId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DetachVolume Choreo.
 */
@implementation TMBAmazon_EC2_DetachVolume_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Detaches an Amazon EBS volume from an instance.
 */
@implementation TMBAmazon_EC2_DetachVolume

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DetachVolume Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DetachVolume"] autorelease];
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
		TMBAmazon_EC2_DetachVolume_ResultSet *results = [[[TMBAmazon_EC2_DetachVolume_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DetachVolume Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DetachVolume_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DetachVolume_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketRequestPayment Choreo.
 */
@implementation TMBAmazon_S3_GetBucketRequestPayment_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to retrieve request payment configuration information for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketRequestPayment Choreo.
 */
@implementation TMBAmazon_S3_GetBucketRequestPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the request payment configuration of a specified bucket.
 */
@implementation TMBAmazon_S3_GetBucketRequestPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketRequestPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketRequestPayment"] autorelease];
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
		TMBAmazon_S3_GetBucketRequestPayment_ResultSet *results = [[[TMBAmazon_S3_GetBucketRequestPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketRequestPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketRequestPayment_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketRequestPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReportCount Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportCount_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Acknowledged input for this Choreo.
	*(optional, boolean) A Boolean value that indicates if an order report has been acknowledged by a prior call to UpdateReportAcknowledgements. Set to "true" to list order reports that have been acknowledged.
	 */
	-(void)setAcknowledged:(NSString*)Acknowledged {
		[super setInput:@"Acknowledged" toValue:Acknowledged];
	}

	/*!
	 * Set the value of the AvailableFromDate input for this Choreo.
	*(optional, date) The earliest date you are looking for, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setAvailableFromDate:(NSString*)AvailableFromDate {
		[super setInput:@"AvailableFromDate" toValue:AvailableFromDate];
	}

	/*!
	 * Set the value of the AvailableToDate input for this Choreo.
	*(optional, date) The most recent date you are looking for, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setAvailableToDate:(NSString*)AvailableToDate {
		[super setInput:@"AvailableToDate" toValue:AvailableToDate];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ReportType input for this Choreo.
	*(optional, string) A ReportType enumeration value (i.e. _GET_FLAT_FILE_OPEN_LISTINGS_DATA_).
	 */
	-(void)setReportType:(NSString*)ReportType {
		[super setInput:@"ReportType" toValue:ReportType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportCount Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportCount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Count" output from an execution of this Choreo.
	 * @return - NSString* (integer) A non-negative integer. parsed from the Amazon response, that represents the total number of reports available to download.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCount {
		return [super getOutputByName:@"Count"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the number of your available Amazon Marketplace reports, ready for download, that were generated in the last 90 days.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportCount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_GetReportCount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/GetReportCount"] autorelease];
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
		TMBAmazon_Marketplace_Reports_GetReportCount_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_GetReportCount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReportCount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_GetReportCount_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_GetReportCount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReceiveMessage Choreo.
 */
@implementation TMBAmazon_SQS_ReceiveMessage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The id for the AWS account associated with the queue you're retrieving a message from (remove all dashes in the account number).
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AttributeName input for this Choreo.
	*(optional, string) The attribute you to return. Values are: All (default), SenderId, SentTimestamp, ApproximateReceiveCount, or ApproximateFirstReceiveTimestamp.
	 */
	-(void)setAttributeName:(NSString*)AttributeName {
		[super setInput:@"AttributeName" toValue:AttributeName];
	}

	/*!
	 * Set the value of the MaxNumberOfMessages input for this Choreo.
	*(optional, integer) The maximum number of messages to return. Defaults to 1.
	 */
	-(void)setMaxNumberOfMessages:(NSString*)MaxNumberOfMessages {
		[super setInput:@"MaxNumberOfMessages" toValue:MaxNumberOfMessages];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue you want to retrieve a message from.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}

	/*!
	 * Set the value of the VisibilityTimeout input for this Choreo.
	*(optional, integer) The duration (in seconds) that the received messages are hidden from future retrieve requests after a ReceiveMessage request (max is 43200).
	 */
	-(void)setVisibilityTimeout:(NSString*)VisibilityTimeout {
		[super setInput:@"VisibilityTimeout" toValue:VisibilityTimeout];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReceiveMessage Choreo.
 */
@implementation TMBAmazon_SQS_ReceiveMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns one or more messages from the specified queue.
 */
@implementation TMBAmazon_SQS_ReceiveMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_ReceiveMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/ReceiveMessage"] autorelease];
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
		TMBAmazon_SQS_ReceiveMessage_ResultSet *results = [[[TMBAmazon_SQS_ReceiveMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReceiveMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_ReceiveMessage_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_ReceiveMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AttachVolume Choreo.
 */
@implementation TMBAmazon_EC2_AttachVolume_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Device input for this Choreo.
	*(required, string) How the device is exposed to the instance (i.e. " /dev/sdh" or "xvdh").
	 */
	-(void)setDevice:(NSString*)Device {
		[super setInput:@"Device" toValue:Device];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The ID of the instance to which the volume attaches. The volume and instance must be within the same Availability Zone and the instance must be running.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VolumeId input for this Choreo.
	*(required, string) The ID of the Amazon EBS volume. The volume and instance must be within the same Availability Zone and the instance must be running.
	 */
	-(void)setVolumeId:(NSString*)VolumeId {
		[super setInput:@"VolumeId" toValue:VolumeId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AttachVolume Choreo.
 */
@implementation TMBAmazon_EC2_AttachVolume_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Attaches an Amazon EBS volume to a running instance and exposes it as the specified device.
 */
@implementation TMBAmazon_EC2_AttachVolume

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_AttachVolume Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/AttachVolume"] autorelease];
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
		TMBAmazon_EC2_AttachVolume_ResultSet *results = [[[TMBAmazon_EC2_AttachVolume_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AttachVolume Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_AttachVolume_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_AttachVolume_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRole Choreo.
 */
@implementation TMBAmazon_IAM_GetRole_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the role to get information about.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRole Choreo.
 */
@implementation TMBAmazon_IAM_GetRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about the specified role, including the role's path, ARN, RoleId, and the policy granting permission to EC2 to assume the role.
 */
@implementation TMBAmazon_IAM_GetRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetRole"] autorelease];
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
		TMBAmazon_IAM_GetRole_ResultSet *results = [[[TMBAmazon_IAM_GetRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetRole_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketNotification Choreo.
 */
@implementation TMBAmazon_S3_GetBucketNotification_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to retrieve notification information for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketNotification Choreo.
 */
@implementation TMBAmazon_S3_GetBucketNotification_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note - if there is no notification configured or notifications are turned off the response will be an empty xml result set or json object (depending on ResponseFormat input).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the notification configuration of a specified bucket.
 */
@implementation TMBAmazon_S3_GetBucketNotification

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketNotification Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketNotification"] autorelease];
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
		TMBAmazon_S3_GetBucketNotification_ResultSet *results = [[[TMBAmazon_S3_GetBucketNotification_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketNotification Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketNotification_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketNotification_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeregisterImage Choreo.
 */
@implementation TMBAmazon_EC2_DeregisterImage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ImageId input for this Choreo.
	*(required, string) The AMI ID.
	 */
	-(void)setImageId:(NSString*)ImageId {
		[super setInput:@"ImageId" toValue:ImageId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeregisterImage Choreo.
 */
@implementation TMBAmazon_EC2_DeregisterImage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deregisters the specified AMI.
 */
@implementation TMBAmazon_EC2_DeregisterImage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DeregisterImage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DeregisterImage"] autorelease];
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
		TMBAmazon_EC2_DeregisterImage_ResultSet *results = [[[TMBAmazon_EC2_DeregisterImage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeregisterImage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DeregisterImage_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DeregisterImage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountSummary Choreo.
 */
@implementation TMBAmazon_IAM_GetAccountSummary_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountSummary Choreo.
 */
@implementation TMBAmazon_IAM_GetAccountSummary_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves account level information about account entity usage and IAM quotas.
 */
@implementation TMBAmazon_IAM_GetAccountSummary

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetAccountSummary Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetAccountSummary"] autorelease];
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
		TMBAmazon_IAM_GetAccountSummary_ResultSet *results = [[[TMBAmazon_IAM_GetAccountSummary_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccountSummary Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetAccountSummary_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetAccountSummary_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeEvents Choreo.
 */
@implementation TMBAmazon_RDS_DescribeEvents_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(optional, integer) The number of minutes to retrieve events for. Defaults to 60.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The end of the time interval for which to retrieve events, specified in ISO 8601 format (i.e. 2009-07-08T18:00Z).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, integer) If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) The maximum number of records to include in the response. If more records exist, a marker is included in the response so that the remaining results may be retrieved. Defaults to max (100). Min is 20.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}

	/*!
	 * Set the value of the SourceIdentifier input for this Choreo.
	*(optional, string) The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.
	 */
	-(void)setSourceIdentifier:(NSString*)SourceIdentifier {
		[super setInput:@"SourceIdentifier" toValue:SourceIdentifier];
	}

	/*!
	 * Set the value of the SourceType input for this Choreo.
	*(optional, string) The event source to retrieve events for. If no value is specified, all events are returned. Valid values are: db-instance | db-parameter-group | db-security-group | db-snapshot.
	 */
	-(void)setSourceType:(NSString*)SourceType {
		[super setInput:@"SourceType" toValue:SourceType];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The beginning of the time interval to retrieve events for, specified in ISO 8601 format (i.e. 2009-07-08T18:00Z)
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeEvents Choreo.
 */
@implementation TMBAmazon_RDS_DescribeEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns events related to DB Instances, DB Security Groups, DB Snapshots and DB Parameter Groups for the past 14 days.
 */
@implementation TMBAmazon_RDS_DescribeEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DescribeEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DescribeEvents"] autorelease];
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
		TMBAmazon_RDS_DescribeEvents_ResultSet *results = [[[TMBAmazon_RDS_DescribeEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DescribeEvents_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DescribeEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketTagging Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketTagging_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to remove tags from.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketTagging Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketTagging_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. A successful execution returns an empty 204 response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a billing tag set from the specified bucket.
 */
@implementation TMBAmazon_S3_DeleteBucketTagging

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteBucketTagging Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteBucketTagging"] autorelease];
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
		TMBAmazon_S3_DeleteBucketTagging_ResultSet *results = [[[TMBAmazon_S3_DeleteBucketTagging_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBucketTagging Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteBucketTagging_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteBucketTagging_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ImportKeyPair Choreo.
 */
@implementation TMBAmazon_EC2_ImportKeyPair_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(required, string) A unique name for the key pair.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}

	/*!
	 * Set the value of the PublicKeyMaterial input for this Choreo.
	*(required, string) The public key. You must Base64-encode the public key material before sending it to AWS.
	 */
	-(void)setPublicKeyMaterial:(NSString*)PublicKeyMaterial {
		[super setInput:@"PublicKeyMaterial" toValue:PublicKeyMaterial];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ImportKeyPair Choreo.
 */
@implementation TMBAmazon_EC2_ImportKeyPair_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Imports the public key from an RSA key pair that you created with a third-party tool.
 */
@implementation TMBAmazon_EC2_ImportKeyPair

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_ImportKeyPair Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/ImportKeyPair"] autorelease];
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
		TMBAmazon_EC2_ImportKeyPair_ResultSet *results = [[[TMBAmazon_EC2_ImportKeyPair_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ImportKeyPair Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_ImportKeyPair_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_ImportKeyPair_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketACL Choreo.
 */
@implementation TMBAmazon_S3_PutBucketACL_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AccessControlList input for this Choreo.
	*(optional, xml) Custom Access Control List xml for advanced configuration. See description for an example, plus Amazon documentation.
	 */
	-(void)setAccessControlList:(NSString*)AccessControlList {
		[super setInput:@"AccessControlList" toValue:AccessControlList];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to create or update a policy for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(conditional, string) Most common ACL usage, required unless creating a custom policy. Values: private, public-read, public-read-write, or authenticated-read.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the OwnerEmailAddress input for this Choreo.
	*(optional, string) The email address of the owner who is granting permission. Required if creating your own custom ACL policy.
	 */
	-(void)setOwnerEmailAddress:(NSString*)OwnerEmailAddress {
		[super setInput:@"OwnerEmailAddress" toValue:OwnerEmailAddress];
	}

	/*!
	 * Set the value of the OwnerId input for this Choreo.
	*(optional, string) The canonical user ID of the owner who is granting permission. Required if creating your own custom ACL policy.
	 */
	-(void)setOwnerId:(NSString*)OwnerId {
		[super setInput:@"OwnerId" toValue:OwnerId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketACL Choreo.
 */
@implementation TMBAmazon_S3_PutBucketACL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful ACL creation, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the access control list (ACL) permissions for an existing bucket.
 */
@implementation TMBAmazon_S3_PutBucketACL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketACL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketACL"] autorelease];
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
		TMBAmazon_S3_PutBucketACL_ResultSet *results = [[[TMBAmazon_S3_PutBucketACL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketACL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketACL_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketACL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLowestOfferListingsForSKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ExcludeMe input for this Choreo.
	*(optional, boolean) Excludes your own offer listings from the offer listings that are returned. Set to "true" to exclude your own offer listings from the results. Defaults to "false".
	 */
	-(void)setExcludeMe:(NSString*)ExcludeMe {
		[super setInput:@"ExcludeMe" toValue:ExcludeMe];
	}

	/*!
	 * Set the value of the ItemCondition input for this Choreo.
	*(optional, string) Filters the offer listings to be considered based on item condition. Valid values: New, Used, Collectible, Refurbished, Club.
	 */
	-(void)setItemCondition:(NSString*)ItemCondition {
		[super setInput:@"ItemCondition" toValue:ItemCondition];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SellerSKU input for this Choreo.
	*(required, string) A comma-separated list of up to 20 SellerSKU values used to identify products in the given marketplace.
	 */
	-(void)setSellerSKU:(NSString*)SellerSKU {
		[super setInput:@"SellerSKU" toValue:SellerSKU];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLowestOfferListingsForSKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the lowest price offer listings for specific products by item condition. This method uses a MarketplaceId and SellerSKU values to uniquely identify products.
 */
@implementation TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetLowestOfferListingsForSKU"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLowestOfferListingsForSKU Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetLowestOfferListingsForSKU_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_DeleteInstanceProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceProfileName input for this Choreo.
	*(required, string) Name of the instance profile to delete.
	 */
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName {
		[super setInput:@"InstanceProfileName" toValue:InstanceProfileName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_DeleteInstanceProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified instance profile. 
 */
@implementation TMBAmazon_IAM_DeleteInstanceProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteInstanceProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteInstanceProfile"] autorelease];
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
		TMBAmazon_IAM_DeleteInstanceProfile_ResultSet *results = [[[TMBAmazon_IAM_DeleteInstanceProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteInstanceProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteInstanceProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteInstanceProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_DeleteDBSnapshot_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBSnapshotIdentifier input for this Choreo.
	*(required, string) A unique identifier for the snapshot you want to delete.
	 */
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier {
		[super setInput:@"DBSnapshotIdentifier" toValue:DBSnapshotIdentifier];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_DeleteDBSnapshot_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified database snapshot.
 */
@implementation TMBAmazon_RDS_DeleteDBSnapshot

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DeleteDBSnapshot Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DeleteDBSnapshot"] autorelease];
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
		TMBAmazon_RDS_DeleteDBSnapshot_ResultSet *results = [[[TMBAmazon_RDS_DeleteDBSnapshot_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDBSnapshot Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DeleteDBSnapshot_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DeleteDBSnapshot_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetProductCategoriesForSKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SellerSKU input for this Choreo.
	*(required, string) A SellerSKU value used to identify a product in the given marketplace.
	 */
	-(void)setSellerSKU:(NSString*)SellerSKU {
		[super setInput:@"SellerSKU" toValue:SellerSKU];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetProductCategoriesForSKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the product categories that a product belongs to, including parent categories back to the root for the marketplace. This method uses a MarketplaceId and a SellerSKU to uniquely identify a product.
 */
@implementation TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetProductCategoriesForSKU"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetProductCategoriesForSKU Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetProductCategoriesForSKU_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListInstanceProfilesForRole Choreo.
 */
@implementation TMBAmazon_IAM_ListInstanceProfilesForRole_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) The name of the role to list instance profiles for.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInstanceProfilesForRole Choreo.
 */
@implementation TMBAmazon_IAM_ListInstanceProfilesForRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the names of the policies associated with the specified role. 
 */
@implementation TMBAmazon_IAM_ListInstanceProfilesForRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListInstanceProfilesForRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListInstanceProfilesForRole"] autorelease];
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
		TMBAmazon_IAM_ListInstanceProfilesForRole_ResultSet *results = [[[TMBAmazon_IAM_ListInstanceProfilesForRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListInstanceProfilesForRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListInstanceProfilesForRole_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListInstanceProfilesForRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetObjectACL Choreo.
 */
@implementation TMBAmazon_S3_GetObjectACL_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the ACL you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) Name of the file or object you wish to retrieve the ACL for. Ex.: filename.txt or folder/filename.txt.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetObjectACL Choreo.
 */
@implementation TMBAmazon_S3_GetObjectACL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the access control list (ACL) of a file or object.
 */
@implementation TMBAmazon_S3_GetObjectACL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetObjectACL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetObjectACL"] autorelease];
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
		TMBAmazon_S3_GetObjectACL_ResultSet *results = [[[TMBAmazon_S3_GetObjectACL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetObjectACL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetObjectACL_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetObjectACL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTopic Choreo.
 */
@implementation TMBAmazon_SNS_DeleteTopic_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic you want to delete.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTopic Choreo.
 */
@implementation TMBAmazon_SNS_DeleteTopic_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified topic and all its subscriptions.
 */
@implementation TMBAmazon_SNS_DeleteTopic

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_DeleteTopic Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/DeleteTopic"] autorelease];
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
		TMBAmazon_SNS_DeleteTopic_ResultSet *results = [[[TMBAmazon_SNS_DeleteTopic_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteTopic Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_DeleteTopic_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_DeleteTopic_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RestoreDBInstanceFromDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AutoMinorVersionUpgrade input for this Choreo.
	*(optional, boolean) Indicates that minor version upgrades will be applied automatically to the DB Instance during the maintenance window. Defaults to 0 (false).
	 */
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade {
		[super setInput:@"AutoMinorVersionUpgrade" toValue:AutoMinorVersionUpgrade];
	}

	/*!
	 * Set the value of the AvailabilityZone input for this Choreo.
	*(optional, string) The EC2 Availability Zone that the database instance will be created in. A random one is chose if not provided. Can not be specified if the MultiAZ parameter is set to 1 (true).
	 */
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone {
		[super setInput:@"AvailabilityZone" toValue:AvailabilityZone];
	}

	/*!
	 * Set the value of the DBInstanceClass input for this Choreo.
	*(optional, string) The compute and memory capacity of the Amazon RDS DB instance. Valid Values: db.m1.small | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge.
	 */
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass {
		[super setInput:@"DBInstanceClass" toValue:DBInstanceClass];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(required, string) The identifier for the new DB instance that will be created from the specified Snapshot.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}

	/*!
	 * Set the value of the DBName input for this Choreo.
	*(optional, string) The database name for the restored DB Instance. Note that this parameter doesn't apply to the MySQL engine.
	 */
	-(void)setDBName:(NSString*)DBName {
		[super setInput:@"DBName" toValue:DBName];
	}

	/*!
	 * Set the value of the DBSnapshotIdentifier input for this Choreo.
	*(required, string) The name of the DB Snapshot to use.
	 */
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier {
		[super setInput:@"DBSnapshotIdentifier" toValue:DBSnapshotIdentifier];
	}

	/*!
	 * Set the value of the Engine input for this Choreo.
	*(optional, string) The database engine to use for the new instance. Valid Values: MySQL | oracle-se1 | oracle-se | oracle-ee.
	 */
	-(void)setEngine:(NSString*)Engine {
		[super setInput:@"Engine" toValue:Engine];
	}

	/*!
	 * Set the value of the LicenseModel input for this Choreo.
	*(optional, string) License model information for the restored DB Instance. Valid values: license-included | bring-your-own-license | general-public-license.
	 */
	-(void)setLicenseModel:(NSString*)LicenseModel {
		[super setInput:@"LicenseModel" toValue:LicenseModel];
	}

	/*!
	 * Set the value of the MultiAZ input for this Choreo.
	*(optional, boolean) Specifies if the DB Instance is a Multi-AZ deployment. Do not specify the AvailabilityZone parameter if the MultiAZ parameter is set to 1 (true).
	 */
	-(void)setMultiAZ:(NSString*)MultiAZ {
		[super setInput:@"MultiAZ" toValue:MultiAZ];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(optional, integer) The port number on which the database accepts connections.
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreDBInstanceFromDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new DB Instance from a DB snapshot.
 */
@implementation TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/RestoreDBInstanceFromDBSnapshot"] autorelease];
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
		TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_ResultSet *results = [[[TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RestoreDBInstanceFromDBSnapshot Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_RestoreDBInstanceFromDBSnapshot_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucket Choreo.
 */
@implementation TMBAmazon_S3_PutBucket_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that will be created.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(optional, string) By default all objects are private (only owner has full access control). Valid values: private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the LocationConstraint input for this Choreo.
	*(optional, string) The region to create the bucket in. Valid Values: EU, eu-west-1, us-west-1, us-west-2, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, empty string (Default US Classic Region). 
	 */
	-(void)setLocationConstraint:(NSString*)LocationConstraint {
		[super setInput:@"LocationConstraint" toValue:LocationConstraint];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucket Choreo.
 */
@implementation TMBAmazon_S3_PutBucket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that no content is returned for successful uploads.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new bucket in your Amazon S3 account.
 */
@implementation TMBAmazon_S3_PutBucket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucket"] autorelease];
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
		TMBAmazon_S3_PutBucket_ResultSet *results = [[[TMBAmazon_S3_PutBucket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucket_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StopInstances Choreo.
 */
@implementation TMBAmazon_EC2_StopInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The instance ID to stop. This can be a comma-separated list of up to 10 instance IDs.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StopInstances Choreo.
 */
@implementation TMBAmazon_EC2_StopInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Stops an Amazon EBS-backed instance.
 */
@implementation TMBAmazon_EC2_StopInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_StopInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/StopInstances"] autorelease];
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
		TMBAmazon_EC2_StopInstances_ResultSet *results = [[[TMBAmazon_EC2_StopInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StopInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_StopInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_StopInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReportRequestList Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportRequestList_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MaxCount input for this Choreo.
	*(optional, integer) A non-negative integer that represents the maximum number of report requests to return. Defaults to 10. Max is 100.
	 */
	-(void)setMaxCount:(NSString*)MaxCount {
		[super setInput:@"MaxCount" toValue:MaxCount];
	}

	/*!
	 * Set the value of the ReportProcessingStatusList input for this Choreo.
	*(optional, string) A comma separated list of up to three ReportProcessingStatuses by which to filter report requests.
	 */
	-(void)setReportProcessingStatusList:(NSString*)ReportProcessingStatusList {
		[super setInput:@"ReportProcessingStatusList" toValue:ReportProcessingStatusList];
	}

	/*!
	 * Set the value of the ReportRequestIdList input for this Choreo.
	*(optional, string) A comma separated list of up to three ReportRequestId values. If you pass in a ReportRequestId values, other query conditions are ignored.
	 */
	-(void)setReportRequestIdList:(NSString*)ReportRequestIdList {
		[super setInput:@"ReportRequestIdList" toValue:ReportRequestIdList];
	}

	/*!
	 * Set the value of the ReportTypeList input for this Choreo.
	*(optional, string) A comma separated list of up to three ReportType enumeration values.
	 */
	-(void)setReportTypeList:(NSString*)ReportTypeList {
		[super setInput:@"ReportTypeList" toValue:ReportTypeList];
	}

	/*!
	 * Set the value of the RequestedFromDate input for this Choreo.
	*(optional, date) The start of the date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setRequestedFromDate:(NSString*)RequestedFromDate {
		[super setInput:@"RequestedFromDate" toValue:RequestedFromDate];
	}

	/*!
	 * Set the value of the RequestedToDate input for this Choreo.
	*(optional, date) The end of the date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setRequestedToDate:(NSString*)RequestedToDate {
		[super setInput:@"RequestedToDate" toValue:RequestedToDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportRequestList Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportRequestList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response. If multiple records are returned, this output variable will contain the first id in the list.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The report status parsed from the Amazon response. If multiple records are returned, this output variable will contain the report status in the list.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The report request id parsed from the Amazon response. If multiple records are returned, this output variable will contain the first id in the list.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of report requests that you can use to get the ReportProcessingStatus and ReportId in order to retrieve a report.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportRequestList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_GetReportRequestList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/GetReportRequestList"] autorelease];
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
		TMBAmazon_Marketplace_Reports_GetReportRequestList_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_GetReportRequestList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReportRequestList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_GetReportRequestList_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_GetReportRequestList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ZipBucket Choreo.
 */
@implementation TMBAmazon_S3_ZipBucket_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that contains the list of objects that you want to zip.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(conditional, string) This sets the permissions for the newly created zip file. Valid values are: private, public-read, public-read-write, authenticated-read, bucket-owner-read, or bucket-owner-full-control.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the Delimiter input for this Choreo.
	*(optional, string) A delimiter is a character you use to group keys. All keys that contain the delimiter are grouped under a single result element, Common Prefixes. For more information see Amazon documentation.
	 */
	-(void)setDelimiter:(NSString*)Delimiter {
		[super setInput:@"Delimiter" toValue:Delimiter];
	}

	/*!
	 * Set the value of the Prefix input for this Choreo.
	*(optional, string) Limits the response to keys that begin with the specified prefix - useful for separating a bucket into different groupings of keys. Ex: specify 'test' to get a list of objects starting with 'test'.
	 */
	-(void)setPrefix:(NSString*)Prefix {
		[super setInput:@"Prefix" toValue:Prefix];
	}

	/*!
	 * Set the value of the ZipFileLocation input for this Choreo.
	*(optional, string) The name of the bucket to put the new zip file in. When not specified, the zip file will be put in the bucket that contains the files being zipped.
	 */
	-(void)setZipFileLocation:(NSString*)ZipFileLocation {
		[super setInput:@"ZipFileLocation" toValue:ZipFileLocation];
	}

	/*!
	 * Set the value of the ZipFileName input for this Choreo.
	*(optional, string) The name of the zip file that will be created. If not specified, the original bucket name will be used with .zip extension.
	 */
	-(void)setZipFileName:(NSString*)ZipFileName {
		[super setInput:@"ZipFileName" toValue:ZipFileName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipBucket Choreo.
 */
@implementation TMBAmazon_S3_ZipBucket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "URL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL location of the new zip file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURL {
		return [super getOutputByName:@"URL"];
	}
	
@end

/*!
 * Creates a zip file containing all objects within the specified bucket and returns a download link for the new compressed file.
 */
@implementation TMBAmazon_S3_ZipBucket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_ZipBucket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/ZipBucket"] autorelease];
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
		TMBAmazon_S3_ZipBucket_ResultSet *results = [[[TMBAmazon_S3_ZipBucket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipBucket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_ZipBucket_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_ZipBucket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMFADevices Choreo.
 */
@implementation TMBAmazon_IAM_ListMFADevices_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(optional, string) Name of the user whose MFA devices you want to list.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMFADevices Choreo.
 */
@implementation TMBAmazon_IAM_ListMFADevices_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the MFA devices. If the request includes the user name, then this action lists all the MFA devices associated with the specified user name. If you do not specify a user name, IAM determines the user name implicitly based on the AWS Access Key ID signing the request.
 */
@implementation TMBAmazon_IAM_ListMFADevices

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListMFADevices Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListMFADevices"] autorelease];
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
		TMBAmazon_IAM_ListMFADevices_ResultSet *results = [[[TMBAmazon_IAM_ListMFADevices_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMFADevices Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListMFADevices_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListMFADevices_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeTags Choreo.
 */
@implementation TMBAmazon_EC2_DescribeTags_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeTags Choreo.
 */
@implementation TMBAmazon_EC2_DescribeTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Describes one or more of the tags for your EC2 resources. 
 */
@implementation TMBAmazon_EC2_DescribeTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeTags"] autorelease];
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
		TMBAmazon_EC2_DescribeTags_ResultSet *results = [[[TMBAmazon_EC2_DescribeTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeTags_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RestoreDBInstanceToPointInTime Choreo.
 */
@implementation TMBAmazon_RDS_RestoreDBInstanceToPointInTime_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AutoMinorVersionUpgrade input for this Choreo.
	*(optional, boolean) Indicates that minor version upgrades will be applied automatically to the DB Instance during the maintenance window. Defaults to 0 (false).
	 */
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade {
		[super setInput:@"AutoMinorVersionUpgrade" toValue:AutoMinorVersionUpgrade];
	}

	/*!
	 * Set the value of the AvailabilityZone input for this Choreo.
	*(optional, string) The EC2 Availability Zone that the database instance will be created in. A random one is chose if not provided. Can not be specified if the MultiAZ parameter is set to 1 (true).
	 */
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone {
		[super setInput:@"AvailabilityZone" toValue:AvailabilityZone];
	}

	/*!
	 * Set the value of the DBInstanceClass input for this Choreo.
	*(optional, string) The compute and memory capacity of the Amazon RDS DB instance. Valid Values: db.m1.small | db.m1.large | db.m1.xlarge | db.m2.2xlarge | db.m2.4xlarge.
	 */
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass {
		[super setInput:@"DBInstanceClass" toValue:DBInstanceClass];
	}

	/*!
	 * Set the value of the DBName input for this Choreo.
	*(optional, string) The database name for the restored DB Instance. Note that this parameter doesn't apply to the MySQL engine.
	 */
	-(void)setDBName:(NSString*)DBName {
		[super setInput:@"DBName" toValue:DBName];
	}

	/*!
	 * Set the value of the Engine input for this Choreo.
	*(optional, string) The database engine to use for the new instance. Valid Values: MySQL | oracle-se1 | oracle-se | oracle-ee.
	 */
	-(void)setEngine:(NSString*)Engine {
		[super setInput:@"Engine" toValue:Engine];
	}

	/*!
	 * Set the value of the LicenseModel input for this Choreo.
	*(optional, string) License model information for the restored DB Instance. Valid values: license-included | bring-your-own-license | general-public-license.
	 */
	-(void)setLicenseModel:(NSString*)LicenseModel {
		[super setInput:@"LicenseModel" toValue:LicenseModel];
	}

	/*!
	 * Set the value of the MultiAZ input for this Choreo.
	*(optional, boolean) Specifies if the DB Instance is a Multi-AZ deployment. Do not specify the AvailabilityZone parameter if the MultiAZ parameter is set to 1 (true).
	 */
	-(void)setMultiAZ:(NSString*)MultiAZ {
		[super setInput:@"MultiAZ" toValue:MultiAZ];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(optional, integer) The port number on which the database accepts connections.
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}

	/*!
	 * Set the value of the RestoreTime input for this Choreo.
	*(optional, date) The date and time to restore from in UTC. Cannot be specified if UseLatestRestorableTime parameter is set to 1. (format: 2009-09-07T23:45:00Z).
	 */
	-(void)setRestoreTime:(NSString*)RestoreTime {
		[super setInput:@"RestoreTime" toValue:RestoreTime];
	}

	/*!
	 * Set the value of the SourceDBInstanceIdentifier input for this Choreo.
	*(required, string) The identifier of the source DB Instance from which to restore.
	 */
	-(void)setSourceDBInstanceIdentifier:(NSString*)SourceDBInstanceIdentifier {
		[super setInput:@"SourceDBInstanceIdentifier" toValue:SourceDBInstanceIdentifier];
	}

	/*!
	 * Set the value of the TargetDBInstanceIdentifier input for this Choreo.
	*(required, string) The name of the new database instance to be created.
	 */
	-(void)setTargetDBInstanceIdentifier:(NSString*)TargetDBInstanceIdentifier {
		[super setInput:@"TargetDBInstanceIdentifier" toValue:TargetDBInstanceIdentifier];
	}

	/*!
	 * Set the value of the UseLatestRestorableTime input for this Choreo.
	*(optional, boolean) Specifies whether or not the DB Instance is restored from the latest backup time. Defaults to 0 (false).
	 */
	-(void)setUseLatestRestorableTime:(NSString*)UseLatestRestorableTime {
		[super setInput:@"UseLatestRestorableTime" toValue:UseLatestRestorableTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreDBInstanceToPointInTime Choreo.
 */
@implementation TMBAmazon_RDS_RestoreDBInstanceToPointInTime_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Restores a DB Instance to an specified point-in-time.
 */
@implementation TMBAmazon_RDS_RestoreDBInstanceToPointInTime

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_RestoreDBInstanceToPointInTime Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/RestoreDBInstanceToPointInTime"] autorelease];
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
		TMBAmazon_RDS_RestoreDBInstanceToPointInTime_ResultSet *results = [[[TMBAmazon_RDS_RestoreDBInstanceToPointInTime_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RestoreDBInstanceToPointInTime Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_RestoreDBInstanceToPointInTime_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_RestoreDBInstanceToPointInTime_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CopyObject Choreo.
 */
@implementation TMBAmazon_S3_CopyObject_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that will be the file destination.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(optional, string) By default all objects are private (only owner has full access control). Valid values: private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(optional, string) ContentType. Default is application/octet-stream.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the FileToCopy input for this Choreo.
	*(required, string) The name of the file to copy.
	 */
	-(void)setFileToCopy:(NSString*)FileToCopy {
		[super setInput:@"FileToCopy" toValue:FileToCopy];
	}

	/*!
	 * Set the value of the IfMatch input for this Choreo.
	*(optional, string) Copies the object if its entity tag (ETag) matches the specified tag; otherwise returns a 412 HTTP status code error (failed precondition).
	 */
	-(void)setIfMatch:(NSString*)IfMatch {
		[super setInput:@"IfMatch" toValue:IfMatch];
	}

	/*!
	 * Set the value of the IfModifiedSince input for this Choreo.
	*(optional, date) Copies if it has been modified since the specified time; otherwise returns a 412 HTTP status code error (failed precondition). Must be valid HTTP date. Can be used with IfMatch only.
	 */
	-(void)setIfModifiedSince:(NSString*)IfModifiedSince {
		[super setInput:@"IfModifiedSince" toValue:IfModifiedSince];
	}

	/*!
	 * Set the value of the IfNoneMatch input for this Choreo.
	*(optional, string) Copies the object if its entity tag (ETag) is different from the specified tag; otherwise returns a 412 HTTP status code error (failed precondition).
	 */
	-(void)setIfNoneMatch:(NSString*)IfNoneMatch {
		[super setInput:@"IfNoneMatch" toValue:IfNoneMatch];
	}

	/*!
	 * Set the value of the IfUnmodifiedSince input for this Choreo.
	*(optional, date) Copies if it hasn't been modified since the specified time; otherwise returns a 412 HTTP status code error (failed precondition). Must be valid HTTP date. Can be used with IfMatch or IfNoneMatch only.
	 */
	-(void)setIfUnmodifiedSince:(NSString*)IfUnmodifiedSince {
		[super setInput:@"IfUnmodifiedSince" toValue:IfUnmodifiedSince];
	}

	/*!
	 * Set the value of the NewFileName input for this Choreo.
	*(required, string) The file name for the new copy.
	 */
	-(void)setNewFileName:(NSString*)NewFileName {
		[super setInput:@"NewFileName" toValue:NewFileName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ServerSideEncryption input for this Choreo.
	*(optional, string) Specifies the server-side encryption algorithm to use when Amazon S3 creates the target object. Valid value: AES256.
	 */
	-(void)setServerSideEncryption:(NSString*)ServerSideEncryption {
		[super setInput:@"ServerSideEncryption" toValue:ServerSideEncryption];
	}

	/*!
	 * Set the value of the StorageClass input for this Choreo.
	*(optional, string) Enables RRS customers to store their noncritical, reproducible data at lower levels of redundancy than Amazon S3's standard storage. Valid Values: STANDARD (default), REDUCED_REDUNDANCY.
	 */
	-(void)setStorageClass:(NSString*)StorageClass {
		[super setInput:@"StorageClass" toValue:StorageClass];
	}

	/*!
	 * Set the value of the WebsiteRedirectLocation input for this Choreo.
	*(optional, string) If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Ex: /anotherPage.html, http://www.page.com. Length limit: 2 K.
	 */
	-(void)setWebsiteRedirectLocation:(NSString*)WebsiteRedirectLocation {
		[super setInput:@"WebsiteRedirectLocation" toValue:WebsiteRedirectLocation];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) The path to a vault file that you want to upload to an Amazon S3 bucket. Required unless using the FileContents input variable.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyObject Choreo.
 */
@implementation TMBAmazon_S3_CopyObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Makes a copy of an existing object in S3 Storage.
 */
@implementation TMBAmazon_S3_CopyObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_CopyObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/CopyObject"] autorelease];
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
		TMBAmazon_S3_CopyObject_ResultSet *results = [[[TMBAmazon_S3_CopyObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CopyObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_CopyObject_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_CopyObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Subscribe Choreo.
 */
@implementation TMBAmazon_SNS_Subscribe_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(required, string) The endpoint that will receive the notifications. Can be an email address, URL, or the ARN of an Amazon SQS queue depending on the protocol specified.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Protocol input for this Choreo.
	*(required, string) The protocol you want to use. Accepted values are: http, https, email, email-json, or sqs.
	 */
	-(void)setProtocol:(NSString*)Protocol {
		[super setInput:@"Protocol" toValue:Protocol];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic you want to subscribe to.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Subscribe Choreo.
 */
@implementation TMBAmazon_SNS_Subscribe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sends the endpoint a confirmation message in preparation for subscribing an endpoint.
 */
@implementation TMBAmazon_SNS_Subscribe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_Subscribe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/Subscribe"] autorelease];
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
		TMBAmazon_SNS_Subscribe_ResultSet *results = [[[TMBAmazon_SNS_Subscribe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Subscribe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_Subscribe_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_Subscribe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListInventorySupplyByDateRange Choreo.
 */
@implementation TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(conditional, string) The value returned in the NextPageToken output of this Choreo when there are multiple pages of inventory items to retrieve. Required unless providing QueryStartDateTime.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the QueryStartDateTime input for this Choreo.
	*(conditional, date) A date used for selecting items that have had changes in inventory availability after (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01). Required unless providing PageToken.
	 */
	-(void)setQueryStartDateTime:(NSString*)QueryStartDateTime {
		[super setInput:@"QueryStartDateTime" toValue:QueryStartDateTime];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ResponseGroup input for this Choreo.
	*(optional, string) Indicates whether or not to return the SupplyDetail element in the response. Valid values are: "Basic" (does not include SupplyDetail), and "Detailed" (includes SupplyDetail). Defaults to "Basic".
	 */
	-(void)setResponseGroup:(NSString*)ResponseGroup {
		[super setInput:@"ResponseGroup" toValue:ResponseGroup];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInventorySupplyByDateRange Choreo.
 */
@implementation TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NextPageToken" output from an execution of this Choreo.
	 * @return - NSString* (string) A token used to retrieve the next page of results. If a token is not returned, there are no more results to retrieve. This token can be passed to the PageToken input of this Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPageToken {
		return [super getOutputByName:@"NextPageToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the availability of a seller's inventory using a given date range.
 */
@implementation TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Inventory/ListInventorySupplyByDateRange"] autorelease];
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
		TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_ResultSet *results = [[[TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListInventorySupplyByDateRange Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Inventory_ListInventorySupplyByDateRange_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ZipObject Choreo.
 */
@implementation TMBAmazon_S3_ZipObject_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that contains the object to retrieve and zip.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(conditional, string) This sets the permissions for the newly created zip file. Valid values are: private, public-read, public-read-write, authenticated-read, bucket-owner-read, or bucket-owner-full-control.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file to retrieve and zip.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the ZipFileLocation input for this Choreo.
	*(optional, string) The name of the bucket to put the new zip file in. When not specified, the zip file will be put in the bucket where the original uncompressed file is located.
	 */
	-(void)setZipFileLocation:(NSString*)ZipFileLocation {
		[super setInput:@"ZipFileLocation" toValue:ZipFileLocation];
	}

	/*!
	 * Set the value of the ZipFileName input for this Choreo.
	*(optional, string) The name of the zip file that will be created. If not specified, the original file name will be used with .zip extension.
	 */
	-(void)setZipFileName:(NSString*)ZipFileName {
		[super setInput:@"ZipFileName" toValue:ZipFileName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipObject Choreo.
 */
@implementation TMBAmazon_S3_ZipObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "URL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL location of the new zip file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURL {
		return [super getOutputByName:@"URL"];
	}
	
@end

/*!
 * Creates a zipped version of the specified S3 file and returns a download link for the new compressed file.
 */
@implementation TMBAmazon_S3_ZipObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_ZipObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/ZipObject"] autorelease];
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
		TMBAmazon_S3_ZipObject_ResultSet *results = [[[TMBAmazon_S3_ZipObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_ZipObject_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_ZipObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DisassociateAddress Choreo.
 */
@implementation TMBAmazon_EC2_DisassociateAddress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AssociationId input for this Choreo.
	*(conditional, string) [EC2-VPC] The association ID corresponding to the Elastic IP address.
	 */
	-(void)setAssociationId:(NSString*)AssociationId {
		[super setInput:@"AssociationId" toValue:AssociationId];
	}

	/*!
	 * Set the value of the PublicIp input for this Choreo.
	*(conditional, string) [EC2-Classic] The Elastic IP address.
	 */
	-(void)setPublicIp:(NSString*)PublicIp {
		[super setInput:@"PublicIp" toValue:PublicIp];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DisassociateAddress Choreo.
 */
@implementation TMBAmazon_EC2_DisassociateAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Disassociates an Elastic IP address from the instance or network interface it's associated with.
 */
@implementation TMBAmazon_EC2_DisassociateAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DisassociateAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DisassociateAddress"] autorelease];
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
		TMBAmazon_EC2_DisassociateAddress_ResultSet *results = [[[TMBAmazon_EC2_DisassociateAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DisassociateAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DisassociateAddress_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DisassociateAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRole Choreo.
 */
@implementation TMBAmazon_IAM_DeleteRole_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the role to delete.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRole Choreo.
 */
@implementation TMBAmazon_IAM_DeleteRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified role.
 */
@implementation TMBAmazon_IAM_DeleteRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteRole"] autorelease];
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
		TMBAmazon_IAM_DeleteRole_ResultSet *results = [[[TMBAmazon_IAM_DeleteRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteRole_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketTagging Choreo.
 */
@implementation TMBAmazon_S3_GetBucketTagging_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to retrieve tagging information for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketTagging Choreo.
 */
@implementation TMBAmazon_S3_GetBucketTagging_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the billing tag set associated with the specified bucket.
 */
@implementation TMBAmazon_S3_GetBucketTagging

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketTagging Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketTagging"] autorelease];
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
		TMBAmazon_S3_GetBucketTagging_ResultSet *results = [[[TMBAmazon_S3_GetBucketTagging_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketTagging Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketTagging_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketTagging_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_CreateInstanceProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceProfileName input for this Choreo.
	*(required, string) Name of the instance profile to create.
	 */
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName {
		[super setInput:@"InstanceProfileName" toValue:InstanceProfileName];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The path for the user name. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_CreateInstanceProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new instance profile.
 */
@implementation TMBAmazon_IAM_CreateInstanceProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateInstanceProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateInstanceProfile"] autorelease];
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
		TMBAmazon_IAM_CreateInstanceProfile_ResultSet *results = [[[TMBAmazon_IAM_CreateInstanceProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateInstanceProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateInstanceProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateInstanceProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAccessKey Choreo.
 */
@implementation TMBAmazon_IAM_DeleteAccessKey_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) An AWS Access Key ID with sufficient permissions to delete the specified AccessKeyId.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID associated with the AWS AccessKey ID with sufficient permissions to delete the AccessKeyId.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AccessKeyId input for this Choreo.
	*(conditional, string) The Access Key ID for the Access Key ID and Secret Access Key you want to delete.
	 */
	-(void)setAccessKeyId:(NSString*)AccessKeyId {
		[super setInput:@"AccessKeyId" toValue:AccessKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(conditional, string) Name of the user whose key you want to delete.  If you do not specify a user name, IAM determines the user name implicitly based on the AWS Access Key ID signing the request.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAccessKey Choreo.
 */
@implementation TMBAmazon_IAM_DeleteAccessKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the access key associated with the specified user.
 */
@implementation TMBAmazon_IAM_DeleteAccessKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteAccessKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteAccessKey"] autorelease];
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
		TMBAmazon_IAM_DeleteAccessKey_ResultSet *results = [[[TMBAmazon_IAM_DeleteAccessKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteAccessKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteAccessKey_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteAccessKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateTags Choreo.
 */
@implementation TMBAmazon_EC2_CreateTags_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResourceId input for this Choreo.
	*(required, string) The ID of a resource to tag. This can be a comma-separated list of up to 10  Resource IDs.
	 */
	-(void)setResourceId:(NSString*)ResourceId {
		[super setInput:@"ResourceId" toValue:ResourceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TagKey input for this Choreo.
	*(required, string) The key for a tag.
	 */
	-(void)setTagKey:(NSString*)TagKey {
		[super setInput:@"TagKey" toValue:TagKey];
	}

	/*!
	 * Set the value of the TagValue input for this Choreo.
	*(conditional, string) The value for a tag. If empty, the value will be set to be an empty string.
	 */
	-(void)setTagValue:(NSString*)TagValue {
		[super setInput:@"TagValue" toValue:TagValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTags Choreo.
 */
@implementation TMBAmazon_EC2_CreateTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds or overwrites one or more tags for the specified EC2 resource or resources.
 */
@implementation TMBAmazon_EC2_CreateTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_CreateTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/CreateTags"] autorelease];
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
		TMBAmazon_EC2_CreateTags_ResultSet *results = [[[TMBAmazon_EC2_CreateTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_CreateTags_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_CreateTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_GetLoginProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user whose login profile you want to retrieve.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_GetLoginProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the user name and password create date for the specified user.
 */
@implementation TMBAmazon_IAM_GetLoginProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetLoginProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetLoginProfile"] autorelease];
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
		TMBAmazon_IAM_GetLoginProfile_ResultSet *results = [[[TMBAmazon_IAM_GetLoginProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLoginProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetLoginProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetLoginProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddOrUpdateInventoryItems Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_Inputs

	/*!
	 * Set the value of the FeedData input for this Choreo.
	*(conditional, multiline) The feed data to sumbit to Amazon Marketplace.
	 */
	-(void)setFeedData:(NSString*)FeedData {
		[super setInput:@"FeedData" toValue:FeedData];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the vault file you want to submit. Required unless you using the FeedData input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddOrUpdateInventoryItems Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the feed submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Adds or updates one or more inventory listings in your Seller Central account with a given flat flile.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/AddOrUpdateInventoryItems"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddOrUpdateInventoryItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_AddOrUpdateInventoryItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccessKey Choreo.
 */
@implementation TMBAmazon_IAM_CreateAccessKey_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(conditional, string) The user name that the new key will belong to.  If you do not specify a user name, IAM determines the user name implicitly based on the AWS Access Key ID signing the request. 
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccessKey Choreo.
 */
@implementation TMBAmazon_IAM_CreateAccessKey_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new AWS Secret Access Key and corresponding AWS Access Key ID for a specified user.
 */
@implementation TMBAmazon_IAM_CreateAccessKey

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateAccessKey Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateAccessKey"] autorelease];
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
		TMBAmazon_IAM_CreateAccessKey_ResultSet *results = [[[TMBAmazon_IAM_CreateAccessKey_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAccessKey Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateAccessKey_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateAccessKey_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RevokeSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_EC2_RevokeSecurityGroupIngress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupId input for this Choreo.
	*(conditional, string) The ID of the security group to modify. Can be used instead of GroupName.
	 */
	-(void)setGroupId:(NSString*)GroupId {
		[super setInput:@"GroupId" toValue:GroupId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(conditional, string) The name of the security group to modify. Can be used instead of GroupId.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the IpPermissionsCidrIp input for this Choreo.
	*(optional, string) The CIDR range. Cannot be used when specifying a source security group.
	 */
	-(void)setIpPermissionsCidrIp:(NSString*)IpPermissionsCidrIp {
		[super setInput:@"IpPermissionsCidrIp" toValue:IpPermissionsCidrIp];
	}

	/*!
	 * Set the value of the IpPermissionsFromPort input for this Choreo.
	*(optional, integer) The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, you can use -1 to specify all ICMP types.
	 */
	-(void)setIpPermissionsFromPort:(NSString*)IpPermissionsFromPort {
		[super setInput:@"IpPermissionsFromPort" toValue:IpPermissionsFromPort];
	}

	/*!
	 * Set the value of the IpPermissionsGroupId input for this Choreo.
	*(optional, string) The ID of the source security group. Cannot be used when specifying a CIDR IP address.
	 */
	-(void)setIpPermissionsGroupId:(NSString*)IpPermissionsGroupId {
		[super setInput:@"IpPermissionsGroupId" toValue:IpPermissionsGroupId];
	}

	/*!
	 * Set the value of the IpPermissionsGroupName input for this Choreo.
	*(optional, string) The name of the source security group. Cannot be used when specifying a CIDR IP address.
	 */
	-(void)setIpPermissionsGroupName:(NSString*)IpPermissionsGroupName {
		[super setInput:@"IpPermissionsGroupName" toValue:IpPermissionsGroupName];
	}

	/*!
	 * Set the value of the IpPermissionsIpProtocol input for this Choreo.
	*(required, string) The IP protocol name or number. Valid values for EC2-Classic: tcp, udp, icmp (or 6, 17, 1). Valid values for EC2-VPC: tcp, udp, icmp, any valid protocol number (0-254), or -1 (to specify all).
	 */
	-(void)setIpPermissionsIpProtocol:(NSString*)IpPermissionsIpProtocol {
		[super setInput:@"IpPermissionsIpProtocol" toValue:IpPermissionsIpProtocol];
	}

	/*!
	 * Set the value of the IpPermissionsToPort input for this Choreo.
	*(optional, integer) The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, you can use -1 to specify all ICMP codes for the given ICMP type.
	 */
	-(void)setIpPermissionsToPort:(NSString*)IpPermissionsToPort {
		[super setInput:@"IpPermissionsToPort" toValue:IpPermissionsToPort];
	}

	/*!
	 * Set the value of the IpPermissionsUserId input for this Choreo.
	*(optional, string) The AWS account ID that owns the source security group. Cannot be used when specifying a CIDR IP address.
	 */
	-(void)setIpPermissionsUserId:(NSString*)IpPermissionsUserId {
		[super setInput:@"IpPermissionsUserId" toValue:IpPermissionsUserId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RevokeSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_EC2_RevokeSecurityGroupIngress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes one or more ingress rules from a security group.
 */
@implementation TMBAmazon_EC2_RevokeSecurityGroupIngress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_RevokeSecurityGroupIngress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/RevokeSecurityGroupIngress"] autorelease];
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
		TMBAmazon_EC2_RevokeSecurityGroupIngress_ResultSet *results = [[[TMBAmazon_EC2_RevokeSecurityGroupIngress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RevokeSecurityGroupIngress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_RevokeSecurityGroupIngress_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_RevokeSecurityGroupIngress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeKeyPairs Choreo.
 */
@implementation TMBAmazon_EC2_DescribeKeyPairs_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow the results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(optional, string) One or more key pair names to return. This can be a comma-separated list of up to 10 key pair namess.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeKeyPairs Choreo.
 */
@implementation TMBAmazon_EC2_DescribeKeyPairs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Describes one or more of your key pairs.
 */
@implementation TMBAmazon_EC2_DescribeKeyPairs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeKeyPairs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeKeyPairs"] autorelease];
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
		TMBAmazon_EC2_DescribeKeyPairs_ResultSet *results = [[[TMBAmazon_EC2_DescribeKeyPairs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeKeyPairs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeKeyPairs_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeKeyPairs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReportList Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportList_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Acknowledged input for this Choreo.
	*(optional, boolean) A Boolean value that indicates if an order report has been acknowledged by a prior call to UpdateReportAcknowledgements. Set to "true" to list order reports that have been acknowledged.
	 */
	-(void)setAcknowledged:(NSString*)Acknowledged {
		[super setInput:@"Acknowledged" toValue:Acknowledged];
	}

	/*!
	 * Set the value of the AvailableFromDate input for this Choreo.
	*(optional, date) The earliest date you are looking for, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setAvailableFromDate:(NSString*)AvailableFromDate {
		[super setInput:@"AvailableFromDate" toValue:AvailableFromDate];
	}

	/*!
	 * Set the value of the AvailableToDate input for this Choreo.
	*(optional, date) The most recent date you are looking for, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setAvailableToDate:(NSString*)AvailableToDate {
		[super setInput:@"AvailableToDate" toValue:AvailableToDate];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MaxCount input for this Choreo.
	*(optional, integer) A non-negative integer that represents the maximum number of report requests to return. Defaults to 10. Max is 100.
	 */
	-(void)setMaxCount:(NSString*)MaxCount {
		[super setInput:@"MaxCount" toValue:MaxCount];
	}

	/*!
	 * Set the value of the ReportRequestId input for this Choreo.
	*(optional, integer) A ReportRequestId value. If you pass a ReportRequestId value, other query conditions are ignored.
	 */
	-(void)setReportRequestId:(NSString*)ReportRequestId {
		[super setInput:@"ReportRequestId" toValue:ReportRequestId];
	}

	/*!
	 * Set the value of the ReportType input for this Choreo.
	*(optional, string) A ReportType enumeration value (i.e. GET_ORDERS_DATA_).
	 */
	-(void)setReportType:(NSString*)ReportType {
		[super setInput:@"ReportType" toValue:ReportType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(conditional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportList Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The report id parsed from the Amazon response. If multiple records are returned, this output variable will contain the first id in the list.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportId {
		return [super getOutputByName:@"ReportId"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of reports that were created in the previous 90 days.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_GetReportList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/GetReportList"] autorelease];
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
		TMBAmazon_Marketplace_Reports_GetReportList_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_GetReportList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReportList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_GetReportList_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_GetReportList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGroupPolicies Choreo.
 */
@implementation TMBAmazon_IAM_ListGroupPolicies_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group to list policies for.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGroupPolicies Choreo.
 */
@implementation TMBAmazon_IAM_ListGroupPolicies_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the names of the policies associated with the specified group.
 */
@implementation TMBAmazon_IAM_ListGroupPolicies

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListGroupPolicies Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListGroupPolicies"] autorelease];
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
		TMBAmazon_IAM_ListGroupPolicies_ResultSet *results = [[[TMBAmazon_IAM_ListGroupPolicies_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGroupPolicies Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListGroupPolicies_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListGroupPolicies_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StartInstances Choreo.
 */
@implementation TMBAmazon_EC2_StartInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The instance ID to start. This can be a comma-separated list of up to 10 instance IDs.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StartInstances Choreo.
 */
@implementation TMBAmazon_EC2_StartInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to start an Amazon Machine Image by specifying its Instance ID.
 */
@implementation TMBAmazon_EC2_StartInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_StartInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/StartInstances"] autorelease];
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
		TMBAmazon_EC2_StartInstances_ResultSet *results = [[[TMBAmazon_EC2_StartInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StartInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_StartInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_StartInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketLifecycle Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketLifecycle_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the lifecycle you want to delete.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketLifecycle Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketLifecycle_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful delete operation, no content is returned, and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the lifecycle configuration from the specified bucket.
 */
@implementation TMBAmazon_S3_DeleteBucketLifecycle

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteBucketLifecycle Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteBucketLifecycle"] autorelease];
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
		TMBAmazon_S3_DeleteBucketLifecycle_ResultSet *results = [[[TMBAmazon_S3_DeleteBucketLifecycle_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBucketLifecycle Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteBucketLifecycle_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteBucketLifecycle_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutObject Choreo.
 */
@implementation TMBAmazon_S3_PutObject_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(required, string) The Base64-encoded file contents that you want to upload to an AmazonS3 bucket.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that will be the file destination.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(optional, string) By default all objects are private (only owner has full access control). Valid values: private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(optional, string) Sets the content-type (text/html, image/jpeg, etc.). Default is application/octet-stream.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file to put in S3 Storage. Ex.: file.txt or folder/file.txt
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the ServerSideEncryption input for this Choreo.
	*(optional, string) Specifies the server-side encryption algorithm to use when Amazon S3 creates the target object. Valid value: AES256.
	 */
	-(void)setServerSideEncryption:(NSString*)ServerSideEncryption {
		[super setInput:@"ServerSideEncryption" toValue:ServerSideEncryption];
	}

	/*!
	 * Set the value of the StorageClass input for this Choreo.
	*(optional, string) Enables RRS customers to store their noncritical, reproducible data at lower levels of redundancy than Amazon S3's standard storage. Valid Values: STANDARD (default), REDUCED_REDUNDANCY.
	 */
	-(void)setStorageClass:(NSString*)StorageClass {
		[super setInput:@"StorageClass" toValue:StorageClass];
	}

	/*!
	 * Set the value of the WebsiteRedirectLocation input for this Choreo.
	*(optional, string) If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Ex: /anotherPage.html, http://www.page.com. Max length: 2 K.
	 */
	-(void)setWebsiteRedirectLocation:(NSString*)WebsiteRedirectLocation {
		[super setInput:@"WebsiteRedirectLocation" toValue:WebsiteRedirectLocation];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) The path to a vault file that you want to upload to an Amazon S3 bucket. Required unless using the FileContents input variable.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutObject Choreo.
 */
@implementation TMBAmazon_S3_PutObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that no content is returned for successful uploads.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads a file to your Amazon S3 storage bucket.
 */
@implementation TMBAmazon_S3_PutObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutObject"] autorelease];
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
		TMBAmazon_S3_PutObject_ResultSet *results = [[[TMBAmazon_S3_PutObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutObject_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketPolicy Choreo.
 */
@implementation TMBAmazon_S3_GetBucketPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the policy you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketPolicy Choreo.
 */
@implementation TMBAmazon_S3_GetBucketPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the policy of a specified bucket.
 */
@implementation TMBAmazon_S3_GetBucketPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketPolicy"] autorelease];
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
		TMBAmazon_S3_GetBucketPolicy_ResultSet *results = [[[TMBAmazon_S3_GetBucketPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ResyncMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_ResyncMFADevice_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AuthenticationCode1 input for this Choreo.
	*(required, string) An authentication code emitted by the device.
	 */
	-(void)setAuthenticationCode1:(NSString*)AuthenticationCode1 {
		[super setInput:@"AuthenticationCode1" toValue:AuthenticationCode1];
	}

	/*!
	 * Set the value of the AuthenticationCode2 input for this Choreo.
	*(required, string) A subsequent authentication code emitted by the device.
	 */
	-(void)setAuthenticationCode2:(NSString*)AuthenticationCode2 {
		[super setInput:@"AuthenticationCode2" toValue:AuthenticationCode2];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user for whom you want to enable the MFA device.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ResyncMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_ResyncMFADevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Synchronizes the specified MFA device with AWS servers.
 */
@implementation TMBAmazon_IAM_ResyncMFADevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ResyncMFADevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ResyncMFADevice"] autorelease];
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
		TMBAmazon_IAM_ResyncMFADevice_ResultSet *results = [[[TMBAmazon_IAM_ResyncMFADevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ResyncMFADevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ResyncMFADevice_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ResyncMFADevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListOrdersWithSellerOrderId Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CreatedAfter input for this Choreo.
	*(optional, date) A date used for selecting orders created after (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01). Defaults to today's date if not provided.
	 */
	-(void)setCreatedAfter:(NSString*)CreatedAfter {
		[super setInput:@"CreatedAfter" toValue:CreatedAfter];
	}

	/*!
	 * Set the value of the CreatedBefore input for this Choreo.
	*(optional, date) A date used for selecting orders created before (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01).
	 */
	-(void)setCreatedBefore:(NSString*)CreatedBefore {
		[super setInput:@"CreatedBefore" toValue:CreatedBefore];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MaxResultsPerPage input for this Choreo.
	*(optional, integer) A number that indicates the maximum number of orders that can be returned per page. Valid values are: 1-100.
	 */
	-(void)setMaxResultsPerPage:(NSString*)MaxResultsPerPage {
		[super setInput:@"MaxResultsPerPage" toValue:MaxResultsPerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SellerOrderId input for this Choreo.
	*(required, string) An order identifier that is specified by the seller.
	 */
	-(void)setSellerOrderId:(NSString*)SellerOrderId {
		[super setInput:@"SellerOrderId" toValue:SellerOrderId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListOrdersWithSellerOrderId Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns orders associated with a seller order id that you specify.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Orders/ListOrdersWithSellerOrderId"] autorelease];
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
		TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_ResultSet *results = [[[TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListOrdersWithSellerOrderId Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Orders_ListOrdersWithSellerOrderId_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeVolumes Choreo.
 */
@implementation TMBAmazon_EC2_DescribeVolumes_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VolumeId input for this Choreo.
	*(conditional, string) The ID of the volume to return. This can be a comma-separated list of up to 10 volume IDs.
	 */
	-(void)setVolumeId:(NSString*)VolumeId {
		[super setInput:@"VolumeId" toValue:VolumeId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeVolumes Choreo.
 */
@implementation TMBAmazon_EC2_DescribeVolumes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information for one or more of your Amazon EBS volumes.
 */
@implementation TMBAmazon_EC2_DescribeVolumes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeVolumes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeVolumes"] autorelease];
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
		TMBAmazon_EC2_DescribeVolumes_ResultSet *results = [[[TMBAmazon_EC2_DescribeVolumes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeVolumes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeVolumes_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeVolumes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutObjectACL Choreo.
 */
@implementation TMBAmazon_S3_PutObjectACL_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AccessControlList input for this Choreo.
	*(optional, xml) Custom Access Control List xml for advanced configuration. See description for an example, plus Amazon documentation.
	 */
	-(void)setAccessControlList:(NSString*)AccessControlList {
		[super setInput:@"AccessControlList" toValue:AccessControlList];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that contains the object that you want to create or update a policy for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CannedACL input for this Choreo.
	*(conditional, string) Most common ACL usage, required unless creating a custom policy. Values: private, public-read, public-read-write, authenticated-read, bucket-owner-read, or bucket-owner-full-control.
	 */
	-(void)setCannedACL:(NSString*)CannedACL {
		[super setInput:@"CannedACL" toValue:CannedACL];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file or object that you want to put access controls on in S3. Ex.: file.txt or folder/file.txt.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the OwnerEmailAddress input for this Choreo.
	*(optional, string) The email address of the owner who is granting permission. Required if creating your own custom ACL policy.
	 */
	-(void)setOwnerEmailAddress:(NSString*)OwnerEmailAddress {
		[super setInput:@"OwnerEmailAddress" toValue:OwnerEmailAddress];
	}

	/*!
	 * Set the value of the OwnerId input for this Choreo.
	*(optional, string) The canonical user id of the owner who is granting permission. Required if creating your own custom ACL policy.
	 */
	-(void)setOwnerId:(NSString*)OwnerId {
		[super setInput:@"OwnerId" toValue:OwnerId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutObjectACL Choreo.
 */
@implementation TMBAmazon_S3_PutObjectACL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful ACL creation, no content is returned and this output variable is empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the access control list (ACL) permissions for an existing object.
 */
@implementation TMBAmazon_S3_PutObjectACL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutObjectACL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutObjectACL"] autorelease];
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
		TMBAmazon_S3_PutObjectACL_ResultSet *results = [[[TMBAmazon_S3_PutObjectACL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutObjectACL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutObjectACL_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutObjectACL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucket Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucket_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that will be deleted.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucket Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that no content is returned for successful deletions.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a bucket from your Amazon S3 account.
 */
@implementation TMBAmazon_S3_DeleteBucket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteBucket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteBucket"] autorelease];
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
		TMBAmazon_S3_DeleteBucket_ResultSet *results = [[[TMBAmazon_S3_DeleteBucket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBucket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteBucket_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteBucket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketRequestPayment Choreo.
 */
@implementation TMBAmazon_S3_PutBucketRequestPayment_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to create a request payment configuration for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the Payer input for this Choreo.
	*(required, string) Specifies who pays for the download and request fees. Valid values:  Requester or BucketOwner.
	 */
	-(void)setPayer:(NSString*)Payer {
		[super setInput:@"Payer" toValue:Payer];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketRequestPayment Choreo.
 */
@implementation TMBAmazon_S3_PutBucketRequestPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful execution, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the request payment configuration of a bucket. 
 */
@implementation TMBAmazon_S3_PutBucketRequestPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketRequestPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketRequestPayment"] autorelease];
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
		TMBAmazon_S3_PutBucketRequestPayment_ResultSet *results = [[[TMBAmazon_S3_PutBucketRequestPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketRequestPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketRequestPayment_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketRequestPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RegisterImage Choreo.
 */
@implementation TMBAmazon_EC2_RegisterImage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Architecture input for this Choreo.
	*(optional, string) The architecture of the image. Valid values are: i386 or x86_64. Defaults to i386.
	 */
	-(void)setArchitecture:(NSString*)Architecture {
		[super setInput:@"Architecture" toValue:Architecture];
	}

	/*!
	 * Set the value of the DeleteOnTermination input for this Choreo.
	*(optional, boolean) Whether the Amazon EBS volume is deleted on instance termination. Defaults to true.
	 */
	-(void)setDeleteOnTermination:(NSString*)DeleteOnTermination {
		[super setInput:@"DeleteOnTermination" toValue:DeleteOnTermination];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The description of the AMI.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the DeviceName input for this Choreo.
	*(conditional, string) If registering an Amazon EBS-backed AMI from a snapshot, specify this input with the root device name (e.g., /dev/sda1, or xvda), and SnapshotId.
	 */
	-(void)setDeviceName:(NSString*)DeviceName {
		[super setInput:@"DeviceName" toValue:DeviceName];
	}

	/*!
	 * Set the value of the ImageLocation input for this Choreo.
	*(conditional, string) Full path to your AMI manifest in Amazon S3 storage. Required if registering an Amazon-S3 backed AMI.
	 */
	-(void)setImageLocation:(NSString*)ImageLocation {
		[super setInput:@"ImageLocation" toValue:ImageLocation];
	}

	/*!
	 * Set the value of the Iops input for this Choreo.
	*(conditional, integer) The number of I/O operations per second (IOPS) that the volume supports. A valid range is: 100 to 2000.
	 */
	-(void)setIops:(NSString*)Iops {
		[super setInput:@"Iops" toValue:Iops];
	}

	/*!
	 * Set the value of the KernelId input for this Choreo.
	*(optional, string) The ID of the kernel to select.
	 */
	-(void)setKernelId:(NSString*)KernelId {
		[super setInput:@"KernelId" toValue:KernelId];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) A name for your AMI.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the NoDevice input for this Choreo.
	*(optional, boolean) Specifies that no device should be mapped. Defaults to 1 (true).
	 */
	-(void)setNoDevice:(NSString*)NoDevice {
		[super setInput:@"NoDevice" toValue:NoDevice];
	}

	/*!
	 * Set the value of the RamdiskId input for this Choreo.
	*(optional, string) The ID of the RAM disk to select.
	 */
	-(void)setRamdiskId:(NSString*)RamdiskId {
		[super setInput:@"RamdiskId" toValue:RamdiskId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RootDeviceName input for this Choreo.
	*(conditional, string) The root device name (e.g., /dev/sda1, or xvda). Required if registering an Amazon EBS-backed AMI.
	 */
	-(void)setRootDeviceName:(NSString*)RootDeviceName {
		[super setInput:@"RootDeviceName" toValue:RootDeviceName];
	}

	/*!
	 * Set the value of the SnapshotId input for this Choreo.
	*(conditional, string) If registering an Amazon EBS-backed AMI from a snapshot, you must at least specify this input with the snapshot ID, and DeviceName with the root device name.
	 */
	-(void)setSnapshotId:(NSString*)SnapshotId {
		[super setInput:@"SnapshotId" toValue:SnapshotId];
	}

	/*!
	 * Set the value of the VirtualName input for this Choreo.
	*(optional, string) The virtual device name.
	 */
	-(void)setVirtualName:(NSString*)VirtualName {
		[super setInput:@"VirtualName" toValue:VirtualName];
	}

	/*!
	 * Set the value of the VolumeSize input for this Choreo.
	*(conditional, integer) The size of the volume, in GiBs. Required if you are not creating a volume from a snapshot.
	 */
	-(void)setVolumeSize:(NSString*)VolumeSize {
		[super setInput:@"VolumeSize" toValue:VolumeSize];
	}

	/*!
	 * Set the value of the VolumeType input for this Choreo.
	*(optional, string) The volume type. Valid values are: standard and io.
	 */
	-(void)setVolumeType:(NSString*)VolumeType {
		[super setInput:@"VolumeType" toValue:VolumeType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RegisterImage Choreo.
 */
@implementation TMBAmazon_EC2_RegisterImage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Registers a new AMI with Amazon EC2.
 */
@implementation TMBAmazon_EC2_RegisterImage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_RegisterImage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/RegisterImage"] autorelease];
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
		TMBAmazon_EC2_RegisterImage_ResultSet *results = [[[TMBAmazon_EC2_RegisterImage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RegisterImage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_RegisterImage_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_RegisterImage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddUserToGroup Choreo.
 */
@implementation TMBAmazon_IAM_AddUserToGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group that the user will be added to.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to add.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddUserToGroup Choreo.
 */
@implementation TMBAmazon_IAM_AddUserToGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a specified user to a specified group.
 */
@implementation TMBAmazon_IAM_AddUserToGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_AddUserToGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/AddUserToGroup"] autorelease];
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
		TMBAmazon_IAM_AddUserToGroup_ResultSet *results = [[[TMBAmazon_IAM_AddUserToGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddUserToGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_AddUserToGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_AddUserToGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptionsByTopic Choreo.
 */
@implementation TMBAmazon_SNS_ListSubscriptionsByTopic_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the NextToken input for this Choreo.
	*(optional, string) The token returned from a previous LIstSubscriptionsByTopic request.
	 */
	-(void)setNextToken:(NSString*)NextToken {
		[super setInput:@"NextToken" toValue:NextToken];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic that you want to find subscriptions for.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptionsByTopic Choreo.
 */
@implementation TMBAmazon_SNS_ListSubscriptionsByTopic_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the subscriptions for a specified topic.
 */
@implementation TMBAmazon_SNS_ListSubscriptionsByTopic

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_ListSubscriptionsByTopic Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/ListSubscriptionsByTopic"] autorelease];
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
		TMBAmazon_SNS_ListSubscriptionsByTopic_ResultSet *results = [[[TMBAmazon_SNS_ListSubscriptionsByTopic_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSubscriptionsByTopic Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_ListSubscriptionsByTopic_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_ListSubscriptionsByTopic_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRolePolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetRolePolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the PolicyName input for this Choreo.
	*(required, string) Name of the policy document to get.
	 */
	-(void)setPolicyName:(NSString*)PolicyName {
		[super setInput:@"PolicyName" toValue:PolicyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the role associated with the policy.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRolePolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetRolePolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the specified policy document for the specified role.
 */
@implementation TMBAmazon_IAM_GetRolePolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetRolePolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetRolePolicy"] autorelease];
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
		TMBAmazon_IAM_GetRolePolicy_ResultSet *results = [[[TMBAmazon_IAM_GetRolePolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRolePolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetRolePolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetRolePolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListOrders Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrders_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CreatedAfter input for this Choreo.
	*(optional, date) A date used for selecting orders created after (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01). Defaults to today's date if not provided.
	 */
	-(void)setCreatedAfter:(NSString*)CreatedAfter {
		[super setInput:@"CreatedAfter" toValue:CreatedAfter];
	}

	/*!
	 * Set the value of the CreatedBefore input for this Choreo.
	*(optional, date) A date used for selecting orders created before (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01).
	 */
	-(void)setCreatedBefore:(NSString*)CreatedBefore {
		[super setInput:@"CreatedBefore" toValue:CreatedBefore];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FullfillmentChannel input for this Choreo.
	*(optional, string) A string indicating how an order was fulfilled. Use "AFN" for Amazon fulfilled orders, and "MFN" for seller fulfilled orders.
	 */
	-(void)setFullfillmentChannel:(NSString*)FullfillmentChannel {
		[super setInput:@"FullfillmentChannel" toValue:FullfillmentChannel];
	}

	/*!
	 * Set the value of the MaxResultsPerPage input for this Choreo.
	*(optional, integer) A number that indicates the maximum number of orders that can be returned per page. Valid values are: 1-100.
	 */
	-(void)setMaxResultsPerPage:(NSString*)MaxResultsPerPage {
		[super setInput:@"MaxResultsPerPage" toValue:MaxResultsPerPage];
	}

	/*!
	 * Set the value of the OrderStatus input for this Choreo.
	*(optional, string) An OrderStatus value to select only orders with a certain status. Valid values are: Pending, Unshipped, PartiallyShipped, Shipped, Canceled, Unfulfillable.
	 */
	-(void)setOrderStatus:(NSString*)OrderStatus {
		[super setInput:@"OrderStatus" toValue:OrderStatus];
	}

	/*!
	 * Set the value of the PaymentMethod input for this Choreo.
	*(optional, string) Used to select only orders of a certain payment type. Valid values are: COD (cash on delivery), CSV (convenience store payment), or Other (Any payment method other than COD or CVS).
	 */
	-(void)setPaymentMethod:(NSString*)PaymentMethod {
		[super setInput:@"PaymentMethod" toValue:PaymentMethod];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListOrders Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns orders created during a time frame that you specify.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Orders_ListOrders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Orders/ListOrders"] autorelease];
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
		TMBAmazon_Marketplace_Orders_ListOrders_ResultSet *results = [[[TMBAmazon_Marketplace_Orders_ListOrders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListOrders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Orders_ListOrders_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Orders_ListOrders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddPermission Choreo.
 */
@implementation TMBAmazon_SQS_AddPermission_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId1 input for this Choreo.
	*(required, integer) The AWS account number of the user that will be granted access to a specified action. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId1:(NSString*)AWSAccountId1 {
		[super setInput:@"AWSAccountId1" toValue:AWSAccountId1];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account number of the queue owner. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ActionName input for this Choreo.
	*(required, string) The action to allow for a specified user. Valid values: SendMessage, ReceiveMessage, DeleteMessage,ChangeMessageVisibility, GetQueueAttributes.
	 */
	-(void)setActionName:(NSString*)ActionName {
		[super setInput:@"ActionName" toValue:ActionName];
	}

	/*!
	 * Set the value of the Label input for this Choreo.
	*(required, string) The unique identifier for the new permission that is being set.
	 */
	-(void)setLabel:(NSString*)Label {
		[super setInput:@"Label" toValue:Label];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue that you're granting access to.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPermission Choreo.
 */
@implementation TMBAmazon_SQS_AddPermission_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a permission to a queue for a specific principal user.
 */
@implementation TMBAmazon_SQS_AddPermission

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_AddPermission Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/AddPermission"] autorelease];
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
		TMBAmazon_SQS_AddPermission_ResultSet *results = [[[TMBAmazon_SQS_AddPermission_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddPermission Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_AddPermission_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_AddPermission_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_DeleteDBInstance_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(required, string) The ID for the DB instance to delete.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_DeleteDBInstance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified database instance.
 */
@implementation TMBAmazon_RDS_DeleteDBInstance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DeleteDBInstance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DeleteDBInstance"] autorelease];
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
		TMBAmazon_RDS_DeleteDBInstance_ResultSet *results = [[[TMBAmazon_RDS_DeleteDBInstance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDBInstance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DeleteDBInstance_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DeleteDBInstance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketWebsiteRedirectAll Choreo.
 */
@implementation TMBAmazon_S3_PutBucketWebsiteRedirectAll_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that you wish to configure.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the HostName input for this Choreo.
	*(required, string) Name of the host where requests will be redirected. Ex.: example.com
	 */
	-(void)setHostName:(NSString*)HostName {
		[super setInput:@"HostName" toValue:HostName];
	}

	/*!
	 * Set the value of the Protocol input for this Choreo.
	*(optional, string) Protocol to use (http, https) when redirecting requests. The default is http.
	 */
	-(void)setProtocol:(NSString*)Protocol {
		[super setInput:@"Protocol" toValue:Protocol];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketWebsiteRedirectAll Choreo.
 */
@implementation TMBAmazon_S3_PutBucketWebsiteRedirectAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful website configuration request, no content is returned and this output variable will be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Configures the specified bucket as a website and redirects all web requests to the designated hostname.
 */
@implementation TMBAmazon_S3_PutBucketWebsiteRedirectAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketWebsiteRedirectAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketWebsiteRedirectAll"] autorelease];
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
		TMBAmazon_S3_PutBucketWebsiteRedirectAll_ResultSet *results = [[[TMBAmazon_S3_PutBucketWebsiteRedirectAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketWebsiteRedirectAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketWebsiteRedirectAll_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketWebsiteRedirectAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RebootInstances Choreo.
 */
@implementation TMBAmazon_EC2_RebootInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The ID of the instance to reboot. This can be a comma-separated list of up to 10 instance IDs.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RebootInstances Choreo.
 */
@implementation TMBAmazon_EC2_RebootInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Reboot an instance by specifying the instance id.
 */
@implementation TMBAmazon_EC2_RebootInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_RebootInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/RebootInstances"] autorelease];
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
		TMBAmazon_EC2_RebootInstances_ResultSet *results = [[[TMBAmazon_EC2_RebootInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RebootInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_RebootInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_RebootInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReportById Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportById_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ReportId input for this Choreo.
	*(required, integer) The id of the report to retrieve.
	 */
	-(void)setReportId:(NSString*)ReportId {
		[super setInput:@"ReportId" toValue:ReportId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReportById Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportById_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ContentMD5Header" output from an execution of this Choreo.
	 * @return - NSString* (string) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getContentMD5Header {
		return [super getOutputByName:@"ContentMD5Header"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon which contains the contents of the report requested. This is typically a flat file or XML information.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the contents of a report with a given report id.
 */
@implementation TMBAmazon_Marketplace_Reports_GetReportById

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_GetReportById Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/GetReportById"] autorelease];
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
		TMBAmazon_Marketplace_Reports_GetReportById_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_GetReportById_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReportById Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_GetReportById_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_GetReportById_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ConfirmSubscription Choreo.
 */
@implementation TMBAmazon_SNS_ConfirmSubscription_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AuthenticateOnUnsubscribed input for this Choreo.
	*(optional, boolean) Indicates that you want to disable the ability to unsubscribe from the subscription without authenticating. Specify 1 to enable this flag.
	 */
	-(void)setAuthenticateOnUnsubscribed:(NSString*)AuthenticateOnUnsubscribed {
		[super setInput:@"AuthenticateOnUnsubscribed" toValue:AuthenticateOnUnsubscribed];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The short-lived token sent to an endpoint during the Subscribe action.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic you want to confirm a subscription for.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ConfirmSubscription Choreo.
 */
@implementation TMBAmazon_SNS_ConfirmSubscription_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Verifies that the endpoint owner wishes to receive messages by verifying the token sent during the Subscribe action.
 */
@implementation TMBAmazon_SNS_ConfirmSubscription

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_ConfirmSubscription Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/ConfirmSubscription"] autorelease];
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
		TMBAmazon_SNS_ConfirmSubscription_ResultSet *results = [[[TMBAmazon_SNS_ConfirmSubscription_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ConfirmSubscription Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_ConfirmSubscription_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_ConfirmSubscription_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompetitivePricingForASIN Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_Inputs

	/*!
	 * Set the value of the ASIN input for this Choreo.
	*(required, string) A comma-separated list of up to 20 ASIN values used to identify products in the given marketplace.
	 */
	-(void)setASIN:(NSString*)ASIN {
		[super setInput:@"ASIN" toValue:ASIN];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompetitivePricingForASIN Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the current competitive pricing of products, based on  ASIN values and the MarketplaceId that you specify.
 */
@implementation TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetCompetitivePricingForASIN"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompetitivePricingForASIN Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetCompetitivePricingForASIN_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTransaction Choreo.
 */
@implementation TMBAmazon_FPS_GetTransaction_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) The endpoint should be fps.sandbox.amazonaws.com when accessing the sandbox. Defaults to production setting:  fps.amazonaws.com.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the SubscriptionId input for this Choreo.
	*(required, string) The ID for the subscription to retrieve the transactions for.
	 */
	-(void)setSubscriptionId:(NSString*)SubscriptionId {
		[super setInput:@"SubscriptionId" toValue:SubscriptionId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransaction Choreo.
 */
@implementation TMBAmazon_FPS_GetTransaction_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns transactions for a specified subscription id.
 */
@implementation TMBAmazon_FPS_GetTransaction

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_FPS_GetTransaction Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/FPS/GetTransaction"] autorelease];
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
		TMBAmazon_FPS_GetTransaction_ResultSet *results = [[[TMBAmazon_FPS_GetTransaction_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTransaction Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_FPS_GetTransaction_Inputs*)newInputSet {
		return [[[TMBAmazon_FPS_GetTransaction_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CancelReportRequest Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_CancelReportRequest_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ReportProcessingStatus input for this Choreo.
	*(optional, string) A report processing status by which to filter report requests. Valid values are: _SUBMITTED_, _IN_PROGRESS_, _CANCELLED_, _DONE_, _DONE_NO_DATA_.
	 */
	-(void)setReportProcessingStatus:(NSString*)ReportProcessingStatus {
		[super setInput:@"ReportProcessingStatus" toValue:ReportProcessingStatus];
	}

	/*!
	 * Set the value of the ReportRequestId input for this Choreo.
	*(optional, string) A ReportRequestId value. If you pass in a ReportRequestId value, other query conditions are ignored.
	 */
	-(void)setReportRequestId:(NSString*)ReportRequestId {
		[super setInput:@"ReportRequestId" toValue:ReportRequestId];
	}

	/*!
	 * Set the value of the ReportType input for this Choreo.
	*(optional, string) A ReportType enumeration value (i.e. GET_ORDERS_DATA_).
	 */
	-(void)setReportType:(NSString*)ReportType {
		[super setInput:@"ReportType" toValue:ReportType];
	}

	/*!
	 * Set the value of the RequestedFromDate input for this Choreo.
	*(optional, date) The start of the date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setRequestedFromDate:(NSString*)RequestedFromDate {
		[super setInput:@"RequestedFromDate" toValue:RequestedFromDate];
	}

	/*!
	 * Set the value of the RequestedToDate input for this Choreo.
	*(optional, date) The end of the date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setRequestedToDate:(NSString*)RequestedToDate {
		[super setInput:@"RequestedToDate" toValue:RequestedToDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelReportRequest Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_CancelReportRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Count" output from an execution of this Choreo.
	 * @return - NSString* (integer) A non-negative integer that represents the total number of report requests that were cancelled.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCount {
		return [super getOutputByName:@"Count"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Cancels one or more report requests.
 */
@implementation TMBAmazon_Marketplace_Reports_CancelReportRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_CancelReportRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/CancelReportRequest"] autorelease];
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
		TMBAmazon_Marketplace_Reports_CancelReportRequest_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_CancelReportRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CancelReportRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_CancelReportRequest_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_CancelReportRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateImage Choreo.
 */
@implementation TMBAmazon_EC2_CreateImage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DeleteOnTermination input for this Choreo.
	*(optional, boolean) Whether the volume is deleted on instance termination. Defaults to "true".
	 */
	-(void)setDeleteOnTermination:(NSString*)DeleteOnTermination {
		[super setInput:@"DeleteOnTermination" toValue:DeleteOnTermination];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description for the image you want to create.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the DeviceName input for this Choreo.
	*(conditional, string) The device name exposed to the instance (i.e. /dev/sdh or xvdh). When registering an AMI from a snapshot, DiviceName is required as well as SnapshotId.
	 */
	-(void)setDeviceName:(NSString*)DeviceName {
		[super setInput:@"DeviceName" toValue:DeviceName];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The ID of the instance to create the image on.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the Iops input for this Choreo.
	*(conditional, integer) The number of I/O operations per second (IOPS) that the volume supports. Valid range is 100 to 2000.
	 */
	-(void)setIops:(NSString*)Iops {
		[super setInput:@"Iops" toValue:Iops];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name for the image you are creating.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the NoDevice input for this Choreo.
	*(optional, boolean) Suppresses a device mapping. Defaults to "true".
	 */
	-(void)setNoDevice:(NSString*)NoDevice {
		[super setInput:@"NoDevice" toValue:NoDevice];
	}

	/*!
	 * Set the value of the NoReboot input for this Choreo.
	*(optional, boolean) Defaults to "false". Amazon EC2 will attempt to shut down the instance before and after creating the image. Set to "true" for NoReboot.
	 */
	-(void)setNoReboot:(NSString*)NoReboot {
		[super setInput:@"NoReboot" toValue:NoReboot];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SnapshotId input for this Choreo.
	*(conditional, string) The ID of the snapshot. Required when registering from a snapshot. You must also specify DeviceName with the root device name.
	 */
	-(void)setSnapshotId:(NSString*)SnapshotId {
		[super setInput:@"SnapshotId" toValue:SnapshotId];
	}

	/*!
	 * Set the value of the VirtualName input for this Choreo.
	*(optional, string) The name of the virtual device.
	 */
	-(void)setVirtualName:(NSString*)VirtualName {
		[super setInput:@"VirtualName" toValue:VirtualName];
	}

	/*!
	 * Set the value of the VolumeSize input for this Choreo.
	*(conditional, string) The size of the volume, in GiBs. Required unless you're creating the volume from a snapshot which indicates that the size will be the size of the snapshot.
	 */
	-(void)setVolumeSize:(NSString*)VolumeSize {
		[super setInput:@"VolumeSize" toValue:VolumeSize];
	}

	/*!
	 * Set the value of the VolumeType input for this Choreo.
	*(optional, string) The volume type. Valid values are: standard (the default) and io1.
	 */
	-(void)setVolumeType:(NSString*)VolumeType {
		[super setInput:@"VolumeType" toValue:VolumeType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateImage Choreo.
 */
@implementation TMBAmazon_EC2_CreateImage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an Amazon Machine Image from an Amazon EBS-backed instance. The image can be used later to launch other identical servers.
 */
@implementation TMBAmazon_EC2_CreateImage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_CreateImage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/CreateImage"] autorelease];
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
		TMBAmazon_EC2_CreateImage_ResultSet *results = [[[TMBAmazon_EC2_CreateImage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateImage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_CreateImage_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_CreateImage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateQueue Choreo.
 */
@implementation TMBAmazon_SQS_CreateQueue_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DefaultVisibilityTimeout input for this Choreo.
	*(optional, integer) The visibility timeout (in seconds) to use for the newly created queue.
	 */
	-(void)setDefaultVisibilityTimeout:(NSString*)DefaultVisibilityTimeout {
		[super setInput:@"DefaultVisibilityTimeout" toValue:DefaultVisibilityTimeout];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue you want to create.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQueue Choreo.
 */
@implementation TMBAmazon_SQS_CreateQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new queue with a specified queue name.
 */
@implementation TMBAmazon_SQS_CreateQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_CreateQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/CreateQueue"] autorelease];
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
		TMBAmazon_SQS_CreateQueue_ResultSet *results = [[[TMBAmazon_SQS_CreateQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_CreateQueue_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_CreateQueue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketLocation Choreo.
 */
@implementation TMBAmazon_S3_GetBucketLocation_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the location you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketLocation Choreo.
 */
@implementation TMBAmazon_S3_GetBucketLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LocationConstraint" output from an execution of this Choreo.
	 * @return - NSString* (string) The Region returned by the choreo. Valid values: blank (Default US Classic Region AKA us-east-1), EU (AKA eu-west-1), us-west-1, us-west-2, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLocationConstraint {
		return [super getOutputByName:@"LocationConstraint"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the Region where the bucket is stored. 
 */
@implementation TMBAmazon_S3_GetBucketLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketLocation"] autorelease];
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
		TMBAmazon_S3_GetBucketLocation_ResultSet *results = [[[TMBAmazon_S3_GetBucketLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketLocation_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeSnapshots Choreo.
 */
@implementation TMBAmazon_EC2_DescribeSnapshots_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the Owner input for this Choreo.
	*(conditional, string) Returns the snapshots owned by the specified owner. Valid values are: "self" (the default), "amazon", or an AWS Account ID.
	 */
	-(void)setOwner:(NSString*)Owner {
		[super setInput:@"Owner" toValue:Owner];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RestorableBy input for this Choreo.
	*(optional, string) AWS accounts ID that can create volumes from the snapshot.
	 */
	-(void)setRestorableBy:(NSString*)RestorableBy {
		[super setInput:@"RestorableBy" toValue:RestorableBy];
	}

	/*!
	 * Set the value of the SnapshotId input for this Choreo.
	*(optional, string) The ID of the snapshot you want to retrieve. Returns all snapshots if not specified.
	 */
	-(void)setSnapshotId:(NSString*)SnapshotId {
		[super setInput:@"SnapshotId" toValue:SnapshotId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeSnapshots Choreo.
 */
@implementation TMBAmazon_EC2_DescribeSnapshots_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information on available Amazon EBS snapshots.
 */
@implementation TMBAmazon_EC2_DescribeSnapshots

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeSnapshots Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeSnapshots"] autorelease];
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
		TMBAmazon_EC2_DescribeSnapshots_ResultSet *results = [[[TMBAmazon_EC2_DescribeSnapshots_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeSnapshots Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeSnapshots_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeSnapshots_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_DescribeDBSnapshot_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(optional, string) The DB Instance identifier. Should be in all lowercase.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}

	/*!
	 * Set the value of the DBSnapshotIdentifier input for this Choreo.
	*(optional, string) The unique identifier for the db snapshot you're retrieving information for.
	 */
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier {
		[super setInput:@"DBSnapshotIdentifier" toValue:DBSnapshotIdentifier];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) The max number of results to return in the response. Defaults to 100. Minimum is 20.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_DescribeDBSnapshot_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about DB Snapshots.
 */
@implementation TMBAmazon_RDS_DescribeDBSnapshot

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DescribeDBSnapshot Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DescribeDBSnapshot"] autorelease];
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
		TMBAmazon_RDS_DescribeDBSnapshot_ResultSet *results = [[[TMBAmazon_RDS_DescribeDBSnapshot_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeDBSnapshot Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DescribeDBSnapshot_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DescribeDBSnapshot_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateReportAcknowledgements Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Acknowledged input for this Choreo.
	*(optional, boolean) A Boolean value that indicates if an order report has been acknowledged by a prior call to UpdateReportAcknowledgements. Set to true to list order reports that have been acknowledged.
	 */
	-(void)setAcknowledged:(NSString*)Acknowledged {
		[super setInput:@"Acknowledged" toValue:Acknowledged];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ReportId input for this Choreo.
	*(required, integer) The id of the report to acknowledge.
	 */
	-(void)setReportId:(NSString*)ReportId {
		[super setInput:@"ReportId" toValue:ReportId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateReportAcknowledgements Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the acknowledged status of a report.
 */
@implementation TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/UpdateReportAcknowledgements"] autorelease];
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
		TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateReportAcknowledgements Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_UpdateReportAcknowledgements_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInventoryItems Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_Inputs

	/*!
	 * Set the value of the SKUs input for this Choreo.
	*(conditional, multiline) The list of SKUs associating with the products to delete. SKUs are provided as Tab Delimited values (do not include a sku column name).
	 */
	-(void)setSKUs:(NSString*)SKUs {
		[super setInput:@"SKUs" toValue:SKUs];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DeleteOptions input for this Choreo.
	*(optional, string) Use 'd' to reduce the listings inventory to 0 and keep details in the system. Use 'x'  to completely delete listings from your current inventory. Defaults to "d".
	 */
	-(void)setDeleteOptions:(NSString*)DeleteOptions {
		[super setInput:@"DeleteOptions" toValue:DeleteOptions];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the vault file you want to submit.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInventoryItems Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the feed submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Deletes inventory listings from a Seller Central account with a given flat file of SKUs.
 */
@implementation TMBAmazon_Marketplace_Feeds_DeleteInventoryItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_DeleteInventoryItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/DeleteInventoryItems"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteInventoryItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_DeleteInventoryItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@implementation TMBAmazon_IAM_UpdateUser_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the NewPath input for this Choreo.
	*(optional, string) The new path for the user. Include a value here only if you are changing the user's existing path. The path needs to start with and end with a slash(/).  For example, "/Division/HR/".
	 */
	-(void)setNewPath:(NSString*)NewPath {
		[super setInput:@"NewPath" toValue:NewPath];
	}

	/*!
	 * Set the value of the NewUserName input for this Choreo.
	*(optional, string) The new name of the user. Include a value here only if you are updating the user's name.
	 */
	-(void)setNewUserName:(NSString*)NewUserName {
		[super setInput:@"NewUserName" toValue:NewUserName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to update.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@implementation TMBAmazon_IAM_UpdateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the name and/or the path of a specified user.
 */
@implementation TMBAmazon_IAM_UpdateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateUser"] autorelease];
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
		TMBAmazon_IAM_UpdateUser_ResultSet *results = [[[TMBAmazon_IAM_UpdateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateUser_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MerchantListingsLiteReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 5 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MerchantListingsLiteReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Report" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The report contents.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReport {
		return [super getOutputByName:@"Report"];
	}
	
@end

/*!
 * Returns a tab-delimited flat file active listings report that contains only the SKU, ASIN, Price, and Quantity fields for items that have a quantity greater than zero.
 */
@implementation TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/MerchantListingsLiteReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MerchantListingsLiteReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_MerchantListingsLiteReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeImages Choreo.
 */
@implementation TMBAmazon_EC2_DescribeImages_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ExecutableBy input for this Choreo.
	*(optional, string) The user ID that has explicit launch permissions. The user ID can be an AWS account ID, "self", or "all" to return AMIs with public launch permissions.
	 */
	-(void)setExecutableBy:(NSString*)ExecutableBy {
		[super setInput:@"ExecutableBy" toValue:ExecutableBy];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the ImageId input for this Choreo.
	*(conditional, string) The ID of the AMI that you want to return. Returns all AMIs when this parameter is not specified.
	 */
	-(void)setImageId:(NSString*)ImageId {
		[super setInput:@"ImageId" toValue:ImageId];
	}

	/*!
	 * Set the value of the Owner input for this Choreo.
	*(conditional, string) The IDs "amazon", "aws-marketplace", and "self" can be used to include AMIs owned by Amazon, AWS Marketplace, or AMIs owned by you, respectively.
	 */
	-(void)setOwner:(NSString*)Owner {
		[super setInput:@"Owner" toValue:Owner];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeImages Choreo.
 */
@implementation TMBAmazon_EC2_DescribeImages_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about Amazon Machine Image(s) that are available to you.
 */
@implementation TMBAmazon_EC2_DescribeImages

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeImages Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeImages"] autorelease];
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
		TMBAmazon_EC2_DescribeImages_ResultSet *results = [[[TMBAmazon_EC2_DescribeImages_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeImages Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeImages_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeImages_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AuthorizeSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_EC2_AuthorizeSecurityGroupIngress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupId input for this Choreo.
	*(conditional, string) The ID of the security group to modify. Can be used instead of GroupName.
	 */
	-(void)setGroupId:(NSString*)GroupId {
		[super setInput:@"GroupId" toValue:GroupId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(conditional, string) The name of the security group to modify. Can be used instead of GroupId.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the IpPermissionsCidrIp input for this Choreo.
	*(optional, string) The CIDR range. Cannot be used when specifying a source security group.
	 */
	-(void)setIpPermissionsCidrIp:(NSString*)IpPermissionsCidrIp {
		[super setInput:@"IpPermissionsCidrIp" toValue:IpPermissionsCidrIp];
	}

	/*!
	 * Set the value of the IpPermissionsFromPort input for this Choreo.
	*(optional, integer) The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, you can use -1 to specify all ICMP types.
	 */
	-(void)setIpPermissionsFromPort:(NSString*)IpPermissionsFromPort {
		[super setInput:@"IpPermissionsFromPort" toValue:IpPermissionsFromPort];
	}

	/*!
	 * Set the value of the IpPermissionsGroupId input for this Choreo.
	*(optional, string) The ID of the source security group. Cannot be used when specifying a CIDR IP address.
	 */
	-(void)setIpPermissionsGroupId:(NSString*)IpPermissionsGroupId {
		[super setInput:@"IpPermissionsGroupId" toValue:IpPermissionsGroupId];
	}

	/*!
	 * Set the value of the IpPermissionsGroupName input for this Choreo.
	*(optional, string) The name of the source security group. Cannot be used when specifying a CIDR IP address.
	 */
	-(void)setIpPermissionsGroupName:(NSString*)IpPermissionsGroupName {
		[super setInput:@"IpPermissionsGroupName" toValue:IpPermissionsGroupName];
	}

	/*!
	 * Set the value of the IpPermissionsIpProtocol input for this Choreo.
	*(required, string) The IP protocol name or number. Valid values for EC2-Classic: tcp, udp, icmp (or 6, 17, 1). Valid values for EC2-VPC: tcp, udp, icmp, any valid protocol number (0-254), or -1 (to specify all).
	 */
	-(void)setIpPermissionsIpProtocol:(NSString*)IpPermissionsIpProtocol {
		[super setInput:@"IpPermissionsIpProtocol" toValue:IpPermissionsIpProtocol];
	}

	/*!
	 * Set the value of the IpPermissionsToPort input for this Choreo.
	*(optional, integer) The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, you can use -1 to specify all ICMP codes for the given ICMP type.
	 */
	-(void)setIpPermissionsToPort:(NSString*)IpPermissionsToPort {
		[super setInput:@"IpPermissionsToPort" toValue:IpPermissionsToPort];
	}

	/*!
	 * Set the value of the IpPermissionsUserId input for this Choreo.
	*(optional, string) The AWS account ID that owns the source security group. Cannot be used when specifying a CIDR IP address.
	 */
	-(void)setIpPermissionsUserId:(NSString*)IpPermissionsUserId {
		[super setInput:@"IpPermissionsUserId" toValue:IpPermissionsUserId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AuthorizeSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_EC2_AuthorizeSecurityGroupIngress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds an ingress rule to a security group.
 */
@implementation TMBAmazon_EC2_AuthorizeSecurityGroupIngress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_AuthorizeSecurityGroupIngress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/AuthorizeSecurityGroupIngress"] autorelease];
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
		TMBAmazon_EC2_AuthorizeSecurityGroupIngress_ResultSet *results = [[[TMBAmazon_EC2_AuthorizeSecurityGroupIngress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AuthorizeSecurityGroupIngress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_AuthorizeSecurityGroupIngress_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_AuthorizeSecurityGroupIngress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RebootDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_RebootDBInstance_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(required, string) The ID for the DB instance to reboot.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RebootDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_RebootDBInstance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Reboots a specified database instance.
 */
@implementation TMBAmazon_RDS_RebootDBInstance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_RebootDBInstance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/RebootDBInstance"] autorelease];
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
		TMBAmazon_RDS_RebootDBInstance_ResultSet *results = [[[TMBAmazon_RDS_RebootDBInstance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RebootDBInstance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_RebootDBInstance_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_RebootDBInstance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RevokeDBSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_RDS_RevokeDBSecurityGroupIngress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CIDRIP input for this Choreo.
	*(conditional, string) IP range that should be revoked. Required unless EC2SecurityGroupName and EC2SecurityGroupOwnerId are used.
	 */
	-(void)setCIDRIP:(NSString*)CIDRIP {
		[super setInput:@"CIDRIP" toValue:CIDRIP];
	}

	/*!
	 * Set the value of the DBSecurityGroupName input for this Choreo.
	*(required, string) A unique name for the security group you want to revoke ingress from.
	 */
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName {
		[super setInput:@"DBSecurityGroupName" toValue:DBSecurityGroupName];
	}

	/*!
	 * Set the value of the EC2SecurityGroupName input for this Choreo.
	*(conditional, string) The EC2 security group to revoke. This and EC2SecurityGroupOwnerId are required if CIDRIP is not used.
	 */
	-(void)setEC2SecurityGroupName:(NSString*)EC2SecurityGroupName {
		[super setInput:@"EC2SecurityGroupName" toValue:EC2SecurityGroupName];
	}

	/*!
	 * Set the value of the EC2SecurityGroupOwnerId input for this Choreo.
	*(conditional, string) The account number for the security group owner to revoke. This and EC2SecurityGroupName are required if CIDRIP is not used.
	 */
	-(void)setEC2SecurityGroupOwnerId:(NSString*)EC2SecurityGroupOwnerId {
		[super setInput:@"EC2SecurityGroupOwnerId" toValue:EC2SecurityGroupOwnerId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RevokeDBSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_RDS_RevokeDBSecurityGroupIngress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Revokes access from a DBSecurityGroup for previously authorized IP ranges or EC2 Security Groups.
 */
@implementation TMBAmazon_RDS_RevokeDBSecurityGroupIngress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_RevokeDBSecurityGroupIngress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/RevokeDBSecurityGroupIngress"] autorelease];
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
		TMBAmazon_RDS_RevokeDBSecurityGroupIngress_ResultSet *results = [[[TMBAmazon_RDS_RevokeDBSecurityGroupIngress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RevokeDBSecurityGroupIngress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_RevokeDBSecurityGroupIngress_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_RevokeDBSecurityGroupIngress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAccountAlias Choreo.
 */
@implementation TMBAmazon_IAM_DeleteAccountAlias_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AccountAlias input for this Choreo.
	*(required, string) Name of the account alias to delete.
	 */
	-(void)setAccountAlias:(NSString*)AccountAlias {
		[super setInput:@"AccountAlias" toValue:AccountAlias];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAccountAlias Choreo.
 */
@implementation TMBAmazon_IAM_DeleteAccountAlias_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified AWS account alias.
 */
@implementation TMBAmazon_IAM_DeleteAccountAlias

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteAccountAlias Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteAccountAlias"] autorelease];
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
		TMBAmazon_IAM_DeleteAccountAlias_ResultSet *results = [[[TMBAmazon_IAM_DeleteAccountAlias_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteAccountAlias Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteAccountAlias_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteAccountAlias_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeactivateMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_DeactivateMFADevice_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user whose MFA device you want to deactivate.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeactivateMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_DeactivateMFADevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.
 */
@implementation TMBAmazon_IAM_DeactivateMFADevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeactivateMFADevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeactivateMFADevice"] autorelease];
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
		TMBAmazon_IAM_DeactivateMFADevice_ResultSet *results = [[[TMBAmazon_IAM_DeactivateMFADevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeactivateMFADevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeactivateMFADevice_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeactivateMFADevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateVirtualMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_CreateVirtualMFADevice_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The path for the virtual MFA device. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VirtualMFADeviceName input for this Choreo.
	*(required, string) The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.
	 */
	-(void)setVirtualMFADeviceName:(NSString*)VirtualMFADeviceName {
		[super setInput:@"VirtualMFADeviceName" toValue:VirtualMFADeviceName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateVirtualMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_CreateVirtualMFADevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new virtual MFA device for the AWS account.
 */
@implementation TMBAmazon_IAM_CreateVirtualMFADevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateVirtualMFADevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateVirtualMFADevice"] autorelease];
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
		TMBAmazon_IAM_CreateVirtualMFADevice_ResultSet *results = [[[TMBAmazon_IAM_CreateVirtualMFADevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateVirtualMFADevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateVirtualMFADevice_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateVirtualMFADevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeDBSecurityGroup Choreo.
 */
@implementation TMBAmazon_RDS_DescribeDBSecurityGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBSecurityGroupName input for this Choreo.
	*(optional, string) The name for the security group you want to retrieve information for.
	 */
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName {
		[super setInput:@"DBSecurityGroupName" toValue:DBSecurityGroupName];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, integer) If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxRecords input for this Choreo.
	*(optional, integer) The max number of results to return in the response. Defaults to 100. Minimum is 20.
	 */
	-(void)setMaxRecords:(NSString*)MaxRecords {
		[super setInput:@"MaxRecords" toValue:MaxRecords];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeDBSecurityGroup Choreo.
 */
@implementation TMBAmazon_RDS_DescribeDBSecurityGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of DBSecurityGroup descriptions. The list will can be filtered by specifying a DBSecurityGroupName.
 */
@implementation TMBAmazon_RDS_DescribeDBSecurityGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DescribeDBSecurityGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DescribeDBSecurityGroup"] autorelease];
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
		TMBAmazon_RDS_DescribeDBSecurityGroup_ResultSet *results = [[[TMBAmazon_RDS_DescribeDBSecurityGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeDBSecurityGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DescribeDBSecurityGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DescribeDBSecurityGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUsers Choreo.
 */
@implementation TMBAmazon_IAM_ListUsers_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the PathPrefix input for this Choreo.
	*(conditional, string) The path prefix for filtering the results. For example, "/division_abc/subdivision_xyz/" retrieves all users whose path starts with that string. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPathPrefix:(NSString*)PathPrefix {
		[super setInput:@"PathPrefix" toValue:PathPrefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUsers Choreo.
 */
@implementation TMBAmazon_IAM_ListUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the users that have the specified path prefix. If there are none, the action returns an empty list.
 */
@implementation TMBAmazon_IAM_ListUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListUsers"] autorelease];
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
		TMBAmazon_IAM_ListUsers_ResultSet *results = [[[TMBAmazon_IAM_ListUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListUsers_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserPolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetUserPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the PolicyName input for this Choreo.
	*(required, string) Name of the policy document to get.
	 */
	-(void)setPolicyName:(NSString*)PolicyName {
		[super setInput:@"PolicyName" toValue:PolicyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to retrieve.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserPolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetUserPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the specified policy document for the specified user.
 */
@implementation TMBAmazon_IAM_GetUserPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetUserPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetUserPolicy"] autorelease];
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
		TMBAmazon_IAM_GetUserPolicy_ResultSet *results = [[[TMBAmazon_IAM_GetUserPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetUserPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetUserPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListVirtualMFADevices Choreo.
 */
@implementation TMBAmazon_IAM_ListVirtualMFADevices_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AssignmentStatus input for this Choreo.
	*(optional, string) Filters by the whether the device is assigned or unassigned to a specific user. Valid values: "Unassigned", "Assigned" or "Any" (default - both assigned and unassigned devices).
	 */
	-(void)setAssignmentStatus:(NSString*)AssignmentStatus {
		[super setInput:@"AssignmentStatus" toValue:AssignmentStatus];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListVirtualMFADevices Choreo.
 */
@implementation TMBAmazon_IAM_ListVirtualMFADevices_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the virtual MFA devices under the AWS account.
 */
@implementation TMBAmazon_IAM_ListVirtualMFADevices

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListVirtualMFADevices Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListVirtualMFADevices"] autorelease];
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
		TMBAmazon_IAM_ListVirtualMFADevices_ResultSet *results = [[[TMBAmazon_IAM_ListVirtualMFADevices_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListVirtualMFADevices Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListVirtualMFADevices_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListVirtualMFADevices_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ModifyDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_ModifyDBInstance_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllocatedStorage input for this Choreo.
	*(required, integer) Storage amount (in gigabytes) to be configured for the DB. Use 5 to 1024 for MySQL or 10 to 1024 for Oracle. Value supplied must be at least 10% greater than the current value
	 */
	-(void)setAllocatedStorage:(NSString*)AllocatedStorage {
		[super setInput:@"AllocatedStorage" toValue:AllocatedStorage];
	}

	/*!
	 * Set the value of the AllowMajorVersionUpgrade input for this Choreo.
	*(optional, boolean) Indicates that major version upgrades are allowed. Defaults to 0 (false).
	 */
	-(void)setAllowMajorVersionUpgrade:(NSString*)AllowMajorVersionUpgrade {
		[super setInput:@"AllowMajorVersionUpgrade" toValue:AllowMajorVersionUpgrade];
	}

	/*!
	 * Set the value of the ApplyImmediately input for this Choreo.
	*(optional, boolean) Specifies whether or not the modifications applied as soon as possible, regardless of the PreferredMaintenanceWindow setting for the DB Instance. Defaults to 0 (false).
	 */
	-(void)setApplyImmediately:(NSString*)ApplyImmediately {
		[super setInput:@"ApplyImmediately" toValue:ApplyImmediately];
	}

	/*!
	 * Set the value of the AutoMinorVersionUpgrade input for this Choreo.
	*(optional, boolean) Indicates that minor version upgrades will be applied automatically to the DB Instance during the maintenance window. Defaults to 0 (false).
	 */
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade {
		[super setInput:@"AutoMinorVersionUpgrade" toValue:AutoMinorVersionUpgrade];
	}

	/*!
	 * Set the value of the BackupRetentionPeriod input for this Choreo.
	*(optional, integer) Number of days to retain automated backups. Setting to a positive number enables backups. Setting to 0 disables automated backups. Must be a value from 0 to 8. Defaults to 0 (disabled).
	 */
	-(void)setBackupRetentionPeriod:(NSString*)BackupRetentionPeriod {
		[super setInput:@"BackupRetentionPeriod" toValue:BackupRetentionPeriod];
	}

	/*!
	 * Set the value of the DBInstanceClass input for this Choreo.
	*(required, string) Capacity for the DB instance.  (db.m1.small, db.m1.large, db.m1.xlarge, db.m2.xlarge, db.m2.2xlarge, or db.m2.4xlarge).
	 */
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass {
		[super setInput:@"DBInstanceClass" toValue:DBInstanceClass];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(required, string) The DB Instance identifier. Should be in all lowercase.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}

	/*!
	 * Set the value of the DBParameterGroupName input for this Choreo.
	*(optional, string) The name of the DB Parameter Group to apply to this DB Instance.
	 */
	-(void)setDBParameterGroupName:(NSString*)DBParameterGroupName {
		[super setInput:@"DBParameterGroupName" toValue:DBParameterGroupName];
	}

	/*!
	 * Set the value of the DBSecurityGroup input for this Choreo.
	*(optional, string) A DB Security Groups to authorize on this DB Instance.
	 */
	-(void)setDBSecurityGroup:(NSString*)DBSecurityGroup {
		[super setInput:@"DBSecurityGroup" toValue:DBSecurityGroup];
	}

	/*!
	 * Set the value of the EngineVersion input for this Choreo.
	*(optional, string) The version number of the database engine to upgrade to.
	 */
	-(void)setEngineVersion:(NSString*)EngineVersion {
		[super setInput:@"EngineVersion" toValue:EngineVersion];
	}

	/*!
	 * Set the value of the MasterUserPassword input for this Choreo.
	*(required, string) The new password for the DB Instance master user.
	 */
	-(void)setMasterUserPassword:(NSString*)MasterUserPassword {
		[super setInput:@"MasterUserPassword" toValue:MasterUserPassword];
	}

	/*!
	 * Set the value of the MultiAZ input for this Choreo.
	*(optional, boolean) Specifies if the DB Instance is a Multi-AZ deployment.
	 */
	-(void)setMultiAZ:(NSString*)MultiAZ {
		[super setInput:@"MultiAZ" toValue:MultiAZ];
	}

	/*!
	 * Set the value of the PreferredBackupWindow input for this Choreo.
	*(optional, string) The daily time range during which automated backups are created. Format: hh24:mi-hh24:mi (in UTC). Must be at least 30 minutes. Can not conflict with PreferredMaintenanceWindow setting.
	 */
	-(void)setPreferredBackupWindow:(NSString*)PreferredBackupWindow {
		[super setInput:@"PreferredBackupWindow" toValue:PreferredBackupWindow];
	}

	/*!
	 * Set the value of the PreferredMaintenanceWindow input for this Choreo.
	*(optional, string) The weekly time range (in UTC) during which system maintenance can occur, which may result in an outage. Format: ddd:hh24:mi-ddd:hh24:mi. Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun.
	 */
	-(void)setPreferredMaintenanceWindow:(NSString*)PreferredMaintenanceWindow {
		[super setInput:@"PreferredMaintenanceWindow" toValue:PreferredMaintenanceWindow];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ModifyDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_ModifyDBInstance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Modify settings for a DB Instance. You can change one or more database configuration parameters by specifying values for the Choreo inputs.
 */
@implementation TMBAmazon_RDS_ModifyDBInstance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_ModifyDBInstance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/ModifyDBInstance"] autorelease];
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
		TMBAmazon_RDS_ModifyDBInstance_ResultSet *results = [[[TMBAmazon_RDS_ModifyDBInstance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ModifyDBInstance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_ModifyDBInstance_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_ModifyDBInstance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateSnapshot Choreo.
 */
@implementation TMBAmazon_EC2_CreateSnapshot_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description for the volume that you want to create.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VolumeId input for this Choreo.
	*(required, string) The id of the EBS volume to snapshot.
	 */
	-(void)setVolumeId:(NSString*)VolumeId {
		[super setInput:@"VolumeId" toValue:VolumeId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSnapshot Choreo.
 */
@implementation TMBAmazon_EC2_CreateSnapshot_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a snapshot from a specified EBS volume.
 */
@implementation TMBAmazon_EC2_CreateSnapshot

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_CreateSnapshot Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/CreateSnapshot"] autorelease];
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
		TMBAmazon_EC2_CreateSnapshot_ResultSet *results = [[[TMBAmazon_EC2_CreateSnapshot_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateSnapshot Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_CreateSnapshot_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_CreateSnapshot_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AllocateAddress Choreo.
 */
@implementation TMBAmazon_EC2_AllocateAddress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Domain input for this Choreo.
	*(conditional, string) Set to "vpc" to allocate the address for use with instances in a VPC.
	 */
	-(void)setDomain:(NSString*)Domain {
		[super setInput:@"Domain" toValue:Domain];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AllocateAddress Choreo.
 */
@implementation TMBAmazon_EC2_AllocateAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Acquires an Elastic IP address for use with your AWS account.
 */
@implementation TMBAmazon_EC2_AllocateAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_AllocateAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/AllocateAddress"] autorelease];
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
		TMBAmazon_EC2_AllocateAddress_ResultSet *results = [[[TMBAmazon_EC2_AllocateAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AllocateAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_AllocateAddress_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_AllocateAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRolePolicies Choreo.
 */
@implementation TMBAmazon_IAM_ListRolePolicies_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the Role that you would like to retrieve policies for.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRolePolicies Choreo.
 */
@implementation TMBAmazon_IAM_ListRolePolicies_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the names of the policies associated with the specified role. 
 */
@implementation TMBAmazon_IAM_ListRolePolicies

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListRolePolicies Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListRolePolicies"] autorelease];
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
		TMBAmazon_IAM_ListRolePolicies_ResultSet *results = [[[TMBAmazon_IAM_ListRolePolicies_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRolePolicies Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListRolePolicies_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListRolePolicies_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDBSecurityGroup Choreo.
 */
@implementation TMBAmazon_RDS_DeleteDBSecurityGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBSecurityGroupName input for this Choreo.
	*(required, string) The name for the security group you want to delete.
	 */
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName {
		[super setInput:@"DBSecurityGroupName" toValue:DBSecurityGroupName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDBSecurityGroup Choreo.
 */
@implementation TMBAmazon_RDS_DeleteDBSecurityGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified database security group.
 */
@implementation TMBAmazon_RDS_DeleteDBSecurityGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_DeleteDBSecurityGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/DeleteDBSecurityGroup"] autorelease];
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
		TMBAmazon_RDS_DeleteDBSecurityGroup_ResultSet *results = [[[TMBAmazon_RDS_DeleteDBSecurityGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDBSecurityGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_DeleteDBSecurityGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_DeleteDBSecurityGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendMessage Choreo.
 */
@implementation TMBAmazon_SQS_SendMessage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The id for the AWS account associated with the queue you're sending a message to (remove all dashes in the account number).
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the MessageBody input for this Choreo.
	*(required, string) The message to send. Maximum size is 64 KB.
	 */
	-(void)setMessageBody:(NSString*)MessageBody {
		[super setInput:@"MessageBody" toValue:MessageBody];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue you want to send a message to.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMessage Choreo.
 */
@implementation TMBAmazon_SQS_SendMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sends a message to a specified queue.
 */
@implementation TMBAmazon_SQS_SendMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_SendMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/SendMessage"] autorelease];
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
		TMBAmazon_SQS_SendMessage_ResultSet *results = [[[TMBAmazon_SQS_SendMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_SendMessage_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_SendMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListServerCertificates Choreo.
 */
@implementation TMBAmazon_IAM_ListServerCertificates_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the PathPrefix input for this Choreo.
	*(optional, string) The path prefix for filtering the results. For example, "/division_abc/subdivision_xyz/" retrieves all groups whose path starts with that string. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPathPrefix:(NSString*)PathPrefix {
		[super setInput:@"PathPrefix" toValue:PathPrefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListServerCertificates Choreo.
 */
@implementation TMBAmazon_IAM_ListServerCertificates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the server certificates that have the specified path prefix. If none exist, the action returns an empty list.
 */
@implementation TMBAmazon_IAM_ListServerCertificates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListServerCertificates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListServerCertificates"] autorelease];
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
		TMBAmazon_IAM_ListServerCertificates_ResultSet *results = [[[TMBAmazon_IAM_ListServerCertificates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListServerCertificates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListServerCertificates_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListServerCertificates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSigningCertificate Choreo.
 */
@implementation TMBAmazon_IAM_DeleteSigningCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CertificateId input for this Choreo.
	*(required, string) ID of the signing certificate to delete.
	 */
	-(void)setCertificateId:(NSString*)CertificateId {
		[super setInput:@"CertificateId" toValue:CertificateId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(optional, string) Name of the user the signing certificate belongs to.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSigningCertificate Choreo.
 */
@implementation TMBAmazon_IAM_DeleteSigningCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified signing certificate associated with the specified user.
 */
@implementation TMBAmazon_IAM_DeleteSigningCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteSigningCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteSigningCertificate"] autorelease];
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
		TMBAmazon_IAM_DeleteSigningCertificate_ResultSet *results = [[[TMBAmazon_IAM_DeleteSigningCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteSigningCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteSigningCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteSigningCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketCORS Choreo.
 */
@implementation TMBAmazon_S3_PutBucketCORS_Inputs

	/*!
	 * Set the value of the CORSConfiguration input for this Choreo.
	*(optional, xml) The CORS Configuration XML containing one or more CORS Rules for advanced configuration. If provided the Choreo will ignore all other inputs except your AWS Key/Secret and BucketName.
	 */
	-(void)setCORSConfiguration:(NSString*)CORSConfiguration {
		[super setInput:@"CORSConfiguration" toValue:CORSConfiguration];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllowedHeader input for this Choreo.
	*(optional, string) Specifies which headers are allowed in a pre-flight OPTIONS request via the Access-Control-Request-Headers header.
	 */
	-(void)setAllowedHeader:(NSString*)AllowedHeader {
		[super setInput:@"AllowedHeader" toValue:AllowedHeader];
	}

	/*!
	 * Set the value of the AllowedMethod input for this Choreo.
	*(conditional, string) The HTTP verb that you want to allow the origin to execute. Valid values are: GET, PUT, HEAD, POST, DELETE.
	 */
	-(void)setAllowedMethod:(NSString*)AllowedMethod {
		[super setInput:@"AllowedMethod" toValue:AllowedMethod];
	}

	/*!
	 * Set the value of the AllowedOrigin input for this Choreo.
	*(conditional, string) An origin that you want to allow cross-domain requests from. This can contain at most one * wild character (i.e. http://*.example.com).
	 */
	-(void)setAllowedOrigin:(NSString*)AllowedOrigin {
		[super setInput:@"AllowedOrigin" toValue:AllowedOrigin];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to set a CORS configuration for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ExposeHeader input for this Choreo.
	*(optional, string) A header in the response that you want customers to be able to access from their applications.
	 */
	-(void)setExposeHeader:(NSString*)ExposeHeader {
		[super setInput:@"ExposeHeader" toValue:ExposeHeader];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(optional, string) A unique identifier for the rule. The ID value can be up to 255 characters long.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the MaxAgeSeconds input for this Choreo.
	*(optional, integer) The time in seconds that your browser is to cache the preflight response for the specified resource.
	 */
	-(void)setMaxAgeSeconds:(NSString*)MaxAgeSeconds {
		[super setInput:@"MaxAgeSeconds" toValue:MaxAgeSeconds];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketCORS Choreo.
 */
@implementation TMBAmazon_S3_PutBucketCORS_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that for a successful exection, this API operation returns an empty 200 response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the CORS (Cross-Origin Resource Sharing) configuration for a specified bucket.
 */
@implementation TMBAmazon_S3_PutBucketCORS

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketCORS Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketCORS"] autorelease];
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
		TMBAmazon_S3_PutBucketCORS_ResultSet *results = [[[TMBAmazon_S3_PutBucketCORS_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketCORS Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketCORS_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketCORS_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetGroupPolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetGroupPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group to return.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the PolicyName input for this Choreo.
	*(required, string) Name of the policy document to get.
	 */
	-(void)setPolicyName:(NSString*)PolicyName {
		[super setInput:@"PolicyName" toValue:PolicyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGroupPolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetGroupPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the specified policy document for the specified group.
 */
@implementation TMBAmazon_IAM_GetGroupPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetGroupPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetGroupPolicy"] autorelease];
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
		TMBAmazon_IAM_GetGroupPolicy_ResultSet *results = [[[TMBAmazon_IAM_GetGroupPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetGroupPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetGroupPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetGroupPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ChangePassword Choreo.
 */
@implementation TMBAmazon_IAM_ChangePassword_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The user's Access Key ID.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The user's Secret Key ID.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the NewPassword input for this Choreo.
	*(required, string) The new password.
	 */
	-(void)setNewPassword:(NSString*)NewPassword {
		[super setInput:@"NewPassword" toValue:NewPassword];
	}

	/*!
	 * Set the value of the OldPassword input for this Choreo.
	*(required, string) The old password.
	 */
	-(void)setOldPassword:(NSString*)OldPassword {
		[super setInput:@"OldPassword" toValue:OldPassword];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChangePassword Choreo.
 */
@implementation TMBAmazon_IAM_ChangePassword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows the authenticating user to change their password.
 */
@implementation TMBAmazon_IAM_ChangePassword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ChangePassword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ChangePassword"] autorelease];
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
		TMBAmazon_IAM_ChangePassword_ResultSet *results = [[[TMBAmazon_IAM_ChangePassword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ChangePassword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ChangePassword_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ChangePassword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TerminateInstances Choreo.
 */
@implementation TMBAmazon_EC2_TerminateInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The instance ID to terminate. This can be a comma-separated list of up to 10 instance IDs.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TerminateInstances Choreo.
 */
@implementation TMBAmazon_EC2_TerminateInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Shuts down one or more instances.
 */
@implementation TMBAmazon_EC2_TerminateInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_TerminateInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/TerminateInstances"] autorelease];
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
		TMBAmazon_EC2_TerminateInstances_ResultSet *results = [[[TMBAmazon_EC2_TerminateInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TerminateInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_TerminateInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_TerminateInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketLifecycle Choreo.
 */
@implementation TMBAmazon_S3_GetBucketLifecycle_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the lifecycle you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketLifecycle Choreo.
 */
@implementation TMBAmazon_S3_GetBucketLifecycle_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the lifecycle configuration information set on the bucket.
 */
@implementation TMBAmazon_S3_GetBucketLifecycle

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketLifecycle Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketLifecycle"] autorelease];
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
		TMBAmazon_S3_GetBucketLifecycle_ResultSet *results = [[[TMBAmazon_S3_GetBucketLifecycle_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketLifecycle Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketLifecycle_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketLifecycle_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteGroup Choreo.
 */
@implementation TMBAmazon_IAM_DeleteGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group to delete.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteGroup Choreo.
 */
@implementation TMBAmazon_IAM_DeleteGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified group.
 */
@implementation TMBAmazon_IAM_DeleteGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteGroup"] autorelease];
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
		TMBAmazon_IAM_DeleteGroup_ResultSet *results = [[[TMBAmazon_IAM_DeleteGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_RetrieveReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) The end of a date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ReportType input for this Choreo.
	*(optional, string) A ReportType enumeration value. Defaults to _GET_FLAT_FILE_OPEN_LISTINGS_DATA_.
	 */
	-(void)setReportType:(NSString*)ReportType {
		[super setInput:@"ReportType" toValue:ReportType];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) The start of a date range used for selecting the data to report, in ISO8601 date format (i.e. 2012-01-01).
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_RetrieveReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Report" output from an execution of this Choreo.
	 * @return - NSString* The report contents.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReport {
		return [super getOutputByName:@"Report"];
	}
	
@end

/*!
 * Creates a report request of any report type, polls for the status of the report, and downloads the report when it's available.
 */
@implementation TMBAmazon_Marketplace_Reports_RetrieveReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_RetrieveReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/RetrieveReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_RetrieveReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_RetrieveReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_RetrieveReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_RetrieveReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSnapshot Choreo.
 */
@implementation TMBAmazon_EC2_DeleteSnapshot_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SnapshotId input for this Choreo.
	*(required, string) The id of the snapshot to delete.
	 */
	-(void)setSnapshotId:(NSString*)SnapshotId {
		[super setInput:@"SnapshotId" toValue:SnapshotId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSnapshot Choreo.
 */
@implementation TMBAmazon_EC2_DeleteSnapshot_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a snapshot using a snapshot id that you specify.
 */
@implementation TMBAmazon_EC2_DeleteSnapshot

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DeleteSnapshot Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DeleteSnapshot"] autorelease];
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
		TMBAmazon_EC2_DeleteSnapshot_ResultSet *results = [[[TMBAmazon_EC2_DeleteSnapshot_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteSnapshot Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DeleteSnapshot_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DeleteSnapshot_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddPermission Choreo.
 */
@implementation TMBAmazon_SNS_AddPermission_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account number of the user that will be granted access to a specified action. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ActionName input for this Choreo.
	*(required, string) The action you want to allow for a specified user (i.e. DeleteTopic, Publish, GetTopicAttributes, etc).
	 */
	-(void)setActionName:(NSString*)ActionName {
		[super setInput:@"ActionName" toValue:ActionName];
	}

	/*!
	 * Set the value of the Label input for this Choreo.
	*(required, string) The unique identifier for the new policy statement.
	 */
	-(void)setLabel:(NSString*)Label {
		[super setInput:@"Label" toValue:Label];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic whos access control policy you want to adjust.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPermission Choreo.
 */
@implementation TMBAmazon_SNS_AddPermission_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a statement for a topic's access control policy which allows an AWS account to have access to the specified Amazon SNS actions.
 */
@implementation TMBAmazon_SNS_AddPermission

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_AddPermission Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/AddPermission"] autorelease];
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
		TMBAmazon_SNS_AddPermission_ResultSet *results = [[[TMBAmazon_SNS_AddPermission_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddPermission Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_AddPermission_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_AddPermission_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EnableMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_EnableMFADevice_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AuthenticationCode1 input for this Choreo.
	*(required, string) An authentication code emitted by the device.
	 */
	-(void)setAuthenticationCode1:(NSString*)AuthenticationCode1 {
		[super setInput:@"AuthenticationCode1" toValue:AuthenticationCode1];
	}

	/*!
	 * Set the value of the AuthenticationCode2 input for this Choreo.
	*(required, string) A subsequent authentication code emitted by the device.
	 */
	-(void)setAuthenticationCode2:(NSString*)AuthenticationCode2 {
		[super setInput:@"AuthenticationCode2" toValue:AuthenticationCode2];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user for whom you want to enable the MFA device.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EnableMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_EnableMFADevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Enables the specified MFA device and associates it with the specified user name. When enabled, the MFA device is required for every subsequent login by the user name associated with the device.
 */
@implementation TMBAmazon_IAM_EnableMFADevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_EnableMFADevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/EnableMFADevice"] autorelease];
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
		TMBAmazon_IAM_EnableMFADevice_ResultSet *results = [[[TMBAmazon_IAM_EnableMFADevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EnableMFADevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_EnableMFADevice_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_EnableMFADevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_UpdateLoginProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the MustChangePassword input for this Choreo.
	*(optional, boolean) Specifies whether or not the user should be required to change their password immediately.  Valid values are true/false or 1/0.
	 */
	-(void)setMustChangePassword:(NSString*)MustChangePassword {
		[super setInput:@"MustChangePassword" toValue:MustChangePassword];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The new password for the user name.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to update.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_UpdateLoginProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Changes the password for the specified user.
 */
@implementation TMBAmazon_IAM_UpdateLoginProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateLoginProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateLoginProfile"] autorelease];
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
		TMBAmazon_IAM_UpdateLoginProfile_ResultSet *results = [[[TMBAmazon_IAM_UpdateLoginProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateLoginProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateLoginProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateLoginProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketLifecycle Choreo.
 */
@implementation TMBAmazon_S3_PutBucketLifecycle_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to create or update a policy for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CustomLifecycleConfiguration input for this Choreo.
	*(optional, xml) Write a custom LifecycleConfiguration xml request for advanced customization. Note - this will overwrite all other inputs other than the AWS AccessKeyId, SecretKeyId, and BucketName.
	 */
	-(void)setCustomLifecycleConfiguration:(NSString*)CustomLifecycleConfiguration {
		[super setInput:@"CustomLifecycleConfiguration" toValue:CustomLifecycleConfiguration];
	}

	/*!
	 * Set the value of the DateOfExpiration input for this Choreo.
	*(optional, date) Date when the rule takes effect. You can specify either DateOfExpiration OR NumberOfDays. The date value must be in ISO 8601 format, time is always midnight UTC. Ex: 2013-04-24T00:00:00.000Z.
	 */
	-(void)setDateOfExpiration:(NSString*)DateOfExpiration {
		[super setInput:@"DateOfExpiration" toValue:DateOfExpiration];
	}

	/*!
	 * Set the value of the LifecycleId input for this Choreo.
	*(optional, string) A unique ID for this lifecycle (i.e. delete-logs-in-30-days-rule).
	 */
	-(void)setLifecycleId:(NSString*)LifecycleId {
		[super setInput:@"LifecycleId" toValue:LifecycleId];
	}

	/*!
	 * Set the value of the NumberOfDays input for this Choreo.
	*(conditional, integer) The number of days to wait until the lifecycle expiration kicks in. Required unless you specify DateOfExpiration or a CustomLifecycleConfiguration instead.
	 */
	-(void)setNumberOfDays:(NSString*)NumberOfDays {
		[super setInput:@"NumberOfDays" toValue:NumberOfDays];
	}

	/*!
	 * Set the value of the Prefix input for this Choreo.
	*(optional, string) Indicating that objects with this prefix will expire and be removed after the number of days specified. If not specified this lifecycle will apply to all objects in the bucket.
	 */
	-(void)setPrefix:(NSString*)Prefix {
		[super setInput:@"Prefix" toValue:Prefix];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) The lifecycle status. Accepted values are: "Enabled" or "Disabled". Defaults to "Enabled".
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketLifecycle Choreo.
 */
@implementation TMBAmazon_S3_PutBucketLifecycle_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful lifecycle creation, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets lifecycle configuration for your bucket. This is used to remove objects from a bucket automatically after a certain time or at a certain date.
 */
@implementation TMBAmazon_S3_PutBucketLifecycle

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketLifecycle Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketLifecycle"] autorelease];
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
		TMBAmazon_S3_PutBucketLifecycle_ResultSet *results = [[[TMBAmazon_S3_PutBucketLifecycle_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketLifecycle Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketLifecycle_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketLifecycle_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetService Choreo.
 */
@implementation TMBAmazon_S3_GetService_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetService Choreo.
 */
@implementation TMBAmazon_S3_GetService_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of buckets owned by the authenticated user.
 */
@implementation TMBAmazon_S3_GetService

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetService Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetService"] autorelease];
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
		TMBAmazon_S3_GetService_ResultSet *results = [[[TMBAmazon_S3_GetService_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetService Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetService_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetService_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketWebsiteRedirect Choreo.
 */
@implementation TMBAmazon_S3_PutBucketWebsiteRedirect_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that you wish to configure.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the CustomWebsiteRedirection input for this Choreo.
	*(optional, xml) A custom xml file for adding advanced website redirection rule(s). See description and Amazon  docs for details. Note - inputting a custom xml file will overwrite all other optional input values.
	 */
	-(void)setCustomWebsiteRedirection:(NSString*)CustomWebsiteRedirection {
		[super setInput:@"CustomWebsiteRedirection" toValue:CustomWebsiteRedirection];
	}

	/*!
	 * Set the value of the ErrorDocument input for this Choreo.
	*(optional, string) The object key name to use when a 4XX class error occurs. Returns specified page when such an error occurs. Ex.: Error.html.
	 */
	-(void)setErrorDocument:(NSString*)ErrorDocument {
		[super setInput:@"ErrorDocument" toValue:ErrorDocument];
	}

	/*!
	 * Set the value of the HostName input for this Choreo.
	*(optional, string) Name of the host where requests will be redirected. Used when setting redirect rules, optional if specifying ReplaceKeyPrefixWith or ReplaceKeyWith input variables). Ex.: example.com.
	 */
	-(void)setHostName:(NSString*)HostName {
		[super setInput:@"HostName" toValue:HostName];
	}

	/*!
	 * Set the value of the HttpErrorCodeReturnedEquals input for this Choreo.
	*(optional, string) The HTTP error code condition for which a redirect occurs. If there's an error and the error code equals this value, then the specified redirect is applied. Can use with KeyPrefixEquals. Ex:  404.
	 */
	-(void)setHttpErrorCodeReturnedEquals:(NSString*)HttpErrorCodeReturnedEquals {
		[super setInput:@"HttpErrorCodeReturnedEquals" toValue:HttpErrorCodeReturnedEquals];
	}

	/*!
	 * Set the value of the HttpRedirectCode input for this Choreo.
	*(optional, string) The HTTP redirect code to use on the response.
	 */
	-(void)setHttpRedirectCode:(NSString*)HttpRedirectCode {
		[super setInput:@"HttpRedirectCode" toValue:HttpRedirectCode];
	}

	/*!
	 * Set the value of the KeyPrefixEquals input for this Choreo.
	*(optional, string) The name or prefix condition of the object that will trigger the redirect action. Can use with HttpErrorCodeReturnedEquals. Ex:  Single page: ExamplePage.html, All pages with prefix: /images.
	 */
	-(void)setKeyPrefixEquals:(NSString*)KeyPrefixEquals {
		[super setInput:@"KeyPrefixEquals" toValue:KeyPrefixEquals];
	}

	/*!
	 * Set the value of the Protocol input for this Choreo.
	*(optional, string) Sets protocol to use when redirecting requests. Optional if you are specifying either ReplaceKeyPrefixWith or ReplaceKeyWith optional inputs. Possible values: http, https.
	 */
	-(void)setProtocol:(NSString*)Protocol {
		[super setInput:@"Protocol" toValue:Protocol];
	}

	/*!
	 * Set the value of the ReplaceKeyPrefixWith input for this Choreo.
	*(optional, string) The object key prefix to use in the redirect request. Redirects requests to the specified prefix. Cannot be used with ReplaceKeyWith. Ex.: /documents.
	 */
	-(void)setReplaceKeyPrefixWith:(NSString*)ReplaceKeyPrefixWith {
		[super setInput:@"ReplaceKeyPrefixWith" toValue:ReplaceKeyPrefixWith];
	}

	/*!
	 * Set the value of the ReplaceKeyWith input for this Choreo.
	*(optional, string) The specific object key to use in the redirect request. Cannot be used with ReplaceKeyPrefixWith. Ex.: error.html.
	 */
	-(void)setReplaceKeyWith:(NSString*)ReplaceKeyWith {
		[super setInput:@"ReplaceKeyWith" toValue:ReplaceKeyWith];
	}

	/*!
	 * Set the value of the Suffix input for this Choreo.
	*(optional, string) The default page returned when there is a request to a directory. I.e.: if you input index.html, a request for /images/ will return the data for the object '/images/index.html'. Default is index.html.
	 */
	-(void)setSuffix:(NSString*)Suffix {
		[super setInput:@"Suffix" toValue:Suffix];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketWebsiteRedirect Choreo.
 */
@implementation TMBAmazon_S3_PutBucketWebsiteRedirect_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful website configuration request, no content is returned and this output variable will be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Configures the specified bucket as a website and sets the web request redirects to a designated endpoint.
 */
@implementation TMBAmazon_S3_PutBucketWebsiteRedirect

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketWebsiteRedirect Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketWebsiteRedirect"] autorelease];
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
		TMBAmazon_S3_PutBucketWebsiteRedirect_ResultSet *results = [[[TMBAmazon_S3_PutBucketWebsiteRedirect_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketWebsiteRedirect Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketWebsiteRedirect_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketWebsiteRedirect_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteGroupPolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteGroupPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) Name of the group the policy is associated with.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the PolicyName input for this Choreo.
	*(required, string) Name of the policy document.
	 */
	-(void)setPolicyName:(NSString*)PolicyName {
		[super setInput:@"PolicyName" toValue:PolicyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteGroupPolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteGroupPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified policy that is associated with the specified group.
 */
@implementation TMBAmazon_IAM_DeleteGroupPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteGroupPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteGroupPolicy"] autorelease];
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
		TMBAmazon_IAM_DeleteGroupPolicy_ResultSet *results = [[[TMBAmazon_IAM_DeleteGroupPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteGroupPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteGroupPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteGroupPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MonitorInstances Choreo.
 */
@implementation TMBAmazon_EC2_MonitorInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The ID(s) of the instance(s) you want to monitor. This can be a comma-separated list of up to 10 instance IDs.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MonitorInstances Choreo.
 */
@implementation TMBAmazon_EC2_MonitorInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Enable monitoring for a specified instance.
 */
@implementation TMBAmazon_EC2_MonitorInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_MonitorInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/MonitorInstances"] autorelease];
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
		TMBAmazon_EC2_MonitorInstances_ResultSet *results = [[[TMBAmazon_EC2_MonitorInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MonitorInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_MonitorInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_MonitorInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAccountAliases Choreo.
 */
@implementation TMBAmazon_IAM_ListAccountAliases_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAccountAliases Choreo.
 */
@implementation TMBAmazon_IAM_ListAccountAliases_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the account aliases associated with the account. 
 */
@implementation TMBAmazon_IAM_ListAccountAliases

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListAccountAliases Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListAccountAliases"] autorelease];
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
		TMBAmazon_IAM_ListAccountAliases_ResultSet *results = [[[TMBAmazon_IAM_ListAccountAliases_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAccountAliases Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListAccountAliases_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListAccountAliases_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGroupsForUser Choreo.
 */
@implementation TMBAmazon_IAM_ListGroupsForUser_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the PathPrefix input for this Choreo.
	*(optional, string) The path prefix for filtering the results. For example, "/division_abc/subdivision_xyz/" retrieves all groups whose path starts with that string. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPathPrefix:(NSString*)PathPrefix {
		[super setInput:@"PathPrefix" toValue:PathPrefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Lists the groups the specified user belongs to.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGroupsForUser Choreo.
 */
@implementation TMBAmazon_IAM_ListGroupsForUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the groups the specified user belongs to.
 */
@implementation TMBAmazon_IAM_ListGroupsForUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListGroupsForUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListGroupsForUser"] autorelease];
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
		TMBAmazon_IAM_ListGroupsForUser_ResultSet *results = [[[TMBAmazon_IAM_ListGroupsForUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGroupsForUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListGroupsForUser_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListGroupsForUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateGroup Choreo.
 */
@implementation TMBAmazon_IAM_CreateGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group to create.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The path to the group. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateGroup Choreo.
 */
@implementation TMBAmazon_IAM_CreateGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new group in your AWS account.
 */
@implementation TMBAmazon_IAM_CreateGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateGroup"] autorelease];
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
		TMBAmazon_IAM_CreateGroup_ResultSet *results = [[[TMBAmazon_IAM_CreateGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnmonitorInstances Choreo.
 */
@implementation TMBAmazon_EC2_UnmonitorInstances_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(required, string) The ID(s) of the instance(s) you want to stop monitoring. This can be a comma-separated list of up to 10 instance IDs.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnmonitorInstances Choreo.
 */
@implementation TMBAmazon_EC2_UnmonitorInstances_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Disable monitoring for a specified instance.
 */
@implementation TMBAmazon_EC2_UnmonitorInstances

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_UnmonitorInstances Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/UnmonitorInstances"] autorelease];
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
		TMBAmazon_EC2_UnmonitorInstances_ResultSet *results = [[[TMBAmazon_EC2_UnmonitorInstances_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnmonitorInstances Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_UnmonitorInstances_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_UnmonitorInstances_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePriceAndQuantity Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the Price input for this Choreo.
	*(required, decimal) Enter the unit price for this product. The price must be greater than 0.00. Do NOT include the currency symbol (e.g. $).
	 */
	-(void)setPrice:(NSString*)Price {
		[super setInput:@"Price" toValue:Price];
	}

	/*!
	 * Set the value of the Quantity input for this Choreo.
	*(required, integer) Enter the quantity of the product you have for sale. The quantity must be a whole number, and should be greater than zero.
	 */
	-(void)setQuantity:(NSString*)Quantity {
		[super setInput:@"Quantity" toValue:Quantity];
	}

	/*!
	 * Set the value of the SKU input for this Choreo.
	*(required, string) A SKU is a "Stock Keeping Unit" which you can assign to your products to track your inventory. Provide the SKU that you want to modify.
	 */
	-(void)setSKU:(NSString*)SKU {
		[super setInput:@"SKU" toValue:SKU];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePriceAndQuantity Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the feed submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Updates only the price and quantity of a particular product with a given product SKU.
 */
@implementation TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/UpdatePriceAndQuantity"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePriceAndQuantity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_UpdatePriceAndQuantity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddRoleToInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_AddRoleToInstanceProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceProfileName input for this Choreo.
	*(required, string) Name of the instance profile to update.
	 */
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName {
		[super setInput:@"InstanceProfileName" toValue:InstanceProfileName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the role to add.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddRoleToInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_AddRoleToInstanceProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds the specified role to the specified instance profile.
 */
@implementation TMBAmazon_IAM_AddRoleToInstanceProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_AddRoleToInstanceProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/AddRoleToInstanceProfile"] autorelease];
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
		TMBAmazon_IAM_AddRoleToInstanceProfile_ResultSet *results = [[[TMBAmazon_IAM_AddRoleToInstanceProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddRoleToInstanceProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_AddRoleToInstanceProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_AddRoleToInstanceProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_CreateLoginProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the MustChangePassword input for this Choreo.
	*(optional, boolean) Whether or not the user is required to change their password immediately.  Valid values are true/false or 1/0.
	 */
	-(void)setMustChangePassword:(NSString*)MustChangePassword {
		[super setInput:@"MustChangePassword" toValue:MustChangePassword];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The new password for the user.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to create a password for.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_CreateLoginProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a password for the specified user, which gives the user the ability to access AWS services through the AWS Management Console.
 */
@implementation TMBAmazon_IAM_CreateLoginProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateLoginProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateLoginProfile"] autorelease];
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
		TMBAmazon_IAM_CreateLoginProfile_ResultSet *results = [[[TMBAmazon_IAM_CreateLoginProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateLoginProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateLoginProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateLoginProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopicAttributes Choreo.
 */
@implementation TMBAmazon_SNS_GetTopicAttributes_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic you want to retrieve attributes for.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopicAttributes Choreo.
 */
@implementation TMBAmazon_SNS_GetTopicAttributes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns properties for a specified topic.
 */
@implementation TMBAmazon_SNS_GetTopicAttributes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_GetTopicAttributes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/GetTopicAttributes"] autorelease];
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
		TMBAmazon_SNS_GetTopicAttributes_ResultSet *results = [[[TMBAmazon_SNS_GetTopicAttributes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopicAttributes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_GetTopicAttributes_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_GetTopicAttributes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMatchingProduct Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetMatchingProduct_Inputs

	/*!
	 * Set the value of the ASIN input for this Choreo.
	*(required, string) A comma-separated list of up to 10 ASIN values used to identify products in the given marketplace.
	 */
	-(void)setASIN:(NSString*)ASIN {
		[super setInput:@"ASIN" toValue:ASIN];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMatchingProduct Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetMatchingProduct_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of products and their attributes, based on ASIN values that you specify.
 */
@implementation TMBAmazon_Marketplace_Products_GetMatchingProduct

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetMatchingProduct Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetMatchingProduct"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetMatchingProduct_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetMatchingProduct_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMatchingProduct Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetMatchingProduct_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetMatchingProduct_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_CreateDBInstance_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllocatedStorage input for this Choreo.
	*(required, integer) Storage amount (in gigabytes) to be configured for the DB. Use 5 to 1024 for MySQL , 10 to 1024 for Oracle, or 200 to 1024 for SQLServer.
	 */
	-(void)setAllocatedStorage:(NSString*)AllocatedStorage {
		[super setInput:@"AllocatedStorage" toValue:AllocatedStorage];
	}

	/*!
	 * Set the value of the AutoMinorVersionUpgrade input for this Choreo.
	*(optional, boolean) Indicates that minor engine upgrades will be applied to the DB Instance automatically during the maintenance window.
	 */
	-(void)setAutoMinorVersionUpgrade:(NSString*)AutoMinorVersionUpgrade {
		[super setInput:@"AutoMinorVersionUpgrade" toValue:AutoMinorVersionUpgrade];
	}

	/*!
	 * Set the value of the AvailabilityZone input for this Choreo.
	*(optional, string) The EC2 Availability Zone that the database instance will be created in (e.g. us-east-1a, us-east-1b, us-east-1c).
	 */
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone {
		[super setInput:@"AvailabilityZone" toValue:AvailabilityZone];
	}

	/*!
	 * Set the value of the BackupRetentionPeriod input for this Choreo.
	*(optional, integer) The number of days for which automated backups are retained. When set to a positive number, backups are enabled. Set to 0 to disable automated backups.
	 */
	-(void)setBackupRetentionPeriod:(NSString*)BackupRetentionPeriod {
		[super setInput:@"BackupRetentionPeriod" toValue:BackupRetentionPeriod];
	}

	/*!
	 * Set the value of the CharacterSetName input for this Choreo.
	*(optional, string) Indicates that the DB Instance should be associated with the specified CharacterSet.
	 */
	-(void)setCharacterSetName:(NSString*)CharacterSetName {
		[super setInput:@"CharacterSetName" toValue:CharacterSetName];
	}

	/*!
	 * Set the value of the DBInstanceClass input for this Choreo.
	*(required, string) Capacity for the DB instance.  (db.m1.small, db.m1.large, db.m1.xlarge, db.m2.xlarge, db.m2.2xlarge, or db.m2.4xlarge).
	 */
	-(void)setDBInstanceClass:(NSString*)DBInstanceClass {
		[super setInput:@"DBInstanceClass" toValue:DBInstanceClass];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(required, string) The DB Instance identifier. Should be in all lowercase.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}

	/*!
	 * Set the value of the DBName input for this Choreo.
	*(conditional, string) For MySQL, this is the name of the db that is created on the instance. For Oracle, it refers to the SID. Must be null for SQLServer.
	 */
	-(void)setDBName:(NSString*)DBName {
		[super setInput:@"DBName" toValue:DBName];
	}

	/*!
	 * Set the value of the DBParameterGroupName input for this Choreo.
	*(optional, string) The name of the DB Parameter Group to associate with this DB instance. If this argument is omitted, the default DBParameterGroup for the specified engine will be used.
	 */
	-(void)setDBParameterGroupName:(NSString*)DBParameterGroupName {
		[super setInput:@"DBParameterGroupName" toValue:DBParameterGroupName];
	}

	/*!
	 * Set the value of the DBSecurityGroups input for this Choreo.
	*(optional, string) A comma separated list of up to 10 DB Security Groups to associate with this DB Instance.
	 */
	-(void)setDBSecurityGroups:(NSString*)DBSecurityGroups {
		[super setInput:@"DBSecurityGroups" toValue:DBSecurityGroups];
	}

	/*!
	 * Set the value of the DBSubnetGroupName input for this Choreo.
	*(optional, string) A DB Subnet Group to associate with this DB Instance. When not specified, it indicates that this is a non-VPC DB instance.
	 */
	-(void)setDBSubnetGroupName:(NSString*)DBSubnetGroupName {
		[super setInput:@"DBSubnetGroupName" toValue:DBSubnetGroupName];
	}

	/*!
	 * Set the value of the EngineVersion input for this Choreo.
	*(optional, string) The version number of the database engine to use.
	 */
	-(void)setEngineVersion:(NSString*)EngineVersion {
		[super setInput:@"EngineVersion" toValue:EngineVersion];
	}

	/*!
	 * Set the value of the Engine input for this Choreo.
	*(required, string) The name of the database engine to use for the instance. Options are: MySQL, oracle-se1, oracle-se, oracle-ee, sqlserver-ee, sqlserver-se, sqlserver-ex, sqlserver-web.
	 */
	-(void)setEngine:(NSString*)Engine {
		[super setInput:@"Engine" toValue:Engine];
	}

	/*!
	 * Set the value of the Iops input for this Choreo.
	*(optional, string) The amount of provisioned input/output operations per second to be initially allocated for the DB Instance.
	 */
	-(void)setIops:(NSString*)Iops {
		[super setInput:@"Iops" toValue:Iops];
	}

	/*!
	 * Set the value of the LicenseModel input for this Choreo.
	*(optional, string) License model information for this DB Instance. Valid values are: license-included, bring-your-own-license, general-public-license.
	 */
	-(void)setLicenseModel:(NSString*)LicenseModel {
		[super setInput:@"LicenseModel" toValue:LicenseModel];
	}

	/*!
	 * Set the value of the MasterUserPassword input for this Choreo.
	*(required, string) The master password for the DB instance.
	 */
	-(void)setMasterUserPassword:(NSString*)MasterUserPassword {
		[super setInput:@"MasterUserPassword" toValue:MasterUserPassword];
	}

	/*!
	 * Set the value of the MasterUsername input for this Choreo.
	*(required, string) The master username for the DB instance.
	 */
	-(void)setMasterUsername:(NSString*)MasterUsername {
		[super setInput:@"MasterUsername" toValue:MasterUsername];
	}

	/*!
	 * Set the value of the MultiAZ input for this Choreo.
	*(optional, boolean) Specifies if the DB Instance is a Multi-AZ deployment. You cannot set the AvailabilityZone parameter if the MultiAZ parameter is set to true.
	 */
	-(void)setMultiAZ:(NSString*)MultiAZ {
		[super setInput:@"MultiAZ" toValue:MultiAZ];
	}

	/*!
	 * Set the value of the OptionGroupName input for this Choreo.
	*(optional, string) Indicates that the DB Instance should be associated with the specified option group.
	 */
	-(void)setOptionGroupName:(NSString*)OptionGroupName {
		[super setInput:@"OptionGroupName" toValue:OptionGroupName];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(optional, integer) The port number on which the database accepts connections. Valid range for MySQL is 1150-65535. Valid range for Oracle is 1150-65535. Valid range for SQLServer is 1150-65535 except for 1434 and 3389.
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}

	/*!
	 * Set the value of the PreferredBackupWindow input for this Choreo.
	*(optional, string) The daily time range during which automated backups are created if automated backups are enabled, using the BackupRetentionPeriod parameter. Must be in the format hh24:mi-hh24:mi (in UTC).
	 */
	-(void)setPreferredBackupWindow:(NSString*)PreferredBackupWindow {
		[super setInput:@"PreferredBackupWindow" toValue:PreferredBackupWindow];
	}

	/*!
	 * Set the value of the PreferredMaintenanceWindow input for this Choreo.
	*(optional, string) The weekly time range (in UTC) during which system maintenance can occur. Format: ddd:hh24:mi-ddd:hh24:mi.
	 */
	-(void)setPreferredMaintenanceWindow:(NSString*)PreferredMaintenanceWindow {
		[super setInput:@"PreferredMaintenanceWindow" toValue:PreferredMaintenanceWindow];
	}

	/*!
	 * Set the value of the PubliclyAccessible input for this Choreo.
	*(optional, boolean) Specifies the accessibility options for the DB Instance. The default behavior varies depending on whether a VPC has been requested or not.
	 */
	-(void)setPubliclyAccessible:(NSString*)PubliclyAccessible {
		[super setInput:@"PubliclyAccessible" toValue:PubliclyAccessible];
	}

	/*!
	 * Set the value of the VpcSecurityGroupIds input for this Choreo.
	*(optional, string) A comma separated list of up to 10 EC2 VPC Security Groups to associate with this DB Instance.
	 */
	-(void)setVpcSecurityGroupIds:(NSString*)VpcSecurityGroupIds {
		[super setInput:@"VpcSecurityGroupIds" toValue:VpcSecurityGroupIds];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDBInstance Choreo.
 */
@implementation TMBAmazon_RDS_CreateDBInstance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new database instance.
 */
@implementation TMBAmazon_RDS_CreateDBInstance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_CreateDBInstance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/CreateDBInstance"] autorelease];
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
		TMBAmazon_RDS_CreateDBInstance_ResultSet *results = [[[TMBAmazon_RDS_CreateDBInstance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateDBInstance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_CreateDBInstance_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_CreateDBInstance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLowestOfferListingsForASIN Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_Inputs

	/*!
	 * Set the value of the ASIN input for this Choreo.
	*(required, string) A comma-separated list of up to 20 ASIN values used to identify products in the given marketplace.
	 */
	-(void)setASIN:(NSString*)ASIN {
		[super setInput:@"ASIN" toValue:ASIN];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ItemCondition input for this Choreo.
	*(optional, string) Filters the offer listings to be considered based on item condition. Valid values: New, Used, Collectible, Refurbished, Club.
	 */
	-(void)setItemCondition:(NSString*)ItemCondition {
		[super setInput:@"ItemCondition" toValue:ItemCondition];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLowestOfferListingsForASIN Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the lowest price offer listings for specific products by item condition. This method uses a MarketplaceId and ASIN values to uniquely identify products.
 */
@implementation TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetLowestOfferListingsForASIN"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLowestOfferListingsForASIN Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetLowestOfferListingsForASIN_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateVolume Choreo.
 */
@implementation TMBAmazon_EC2_CreateVolume_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AvailabilityZone input for this Choreo.
	*(required, string) The Availability Zone to use when creating thew new volume (i.e us-east-1a).
	 */
	-(void)setAvailabilityZone:(NSString*)AvailabilityZone {
		[super setInput:@"AvailabilityZone" toValue:AvailabilityZone];
	}

	/*!
	 * Set the value of the Iops input for this Choreo.
	*(optional, integer) The number of I/O operations per second (IOPS) that the volume supports. Valid range is 100 to 2000. Required when the volume type is io1.
	 */
	-(void)setIops:(NSString*)Iops {
		[super setInput:@"Iops" toValue:Iops];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Size input for this Choreo.
	*(conditional, integer) The size for the volume (in gigabytes) that you are creating. Valid Values are 1-1024. Required if you're not creating a volume from a snapshot. If the volume type is io1, the min size is 10 GiB.
	 */
	-(void)setSize:(NSString*)Size {
		[super setInput:@"Size" toValue:Size];
	}

	/*!
	 * Set the value of the SnapshotId input for this Choreo.
	*(conditional, string) The snapshot from which to create the new volume. Required if you are creating a volume from a snapshot.
	 */
	-(void)setSnapshotId:(NSString*)SnapshotId {
		[super setInput:@"SnapshotId" toValue:SnapshotId];
	}

	/*!
	 * Set the value of the VolumeType input for this Choreo.
	*(optional, string) The volume type.Valid values are: "standard" (the default) and "io1".
	 */
	-(void)setVolumeType:(NSString*)VolumeType {
		[super setInput:@"VolumeType" toValue:VolumeType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateVolume Choreo.
 */
@implementation TMBAmazon_EC2_CreateVolume_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new EBS volume that your EC2 instance can attach to.
 */
@implementation TMBAmazon_EC2_CreateVolume

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_CreateVolume Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/CreateVolume"] autorelease];
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
		TMBAmazon_EC2_CreateVolume_ResultSet *results = [[[TMBAmazon_EC2_CreateVolume_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateVolume Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_CreateVolume_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_CreateVolume_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@implementation TMBAmazon_IAM_CreateUser_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The path for the user name. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) The name of the user to create.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@implementation TMBAmazon_IAM_CreateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new user for your AWS account.
 */
@implementation TMBAmazon_IAM_CreateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_CreateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/CreateUser"] autorelease];
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
		TMBAmazon_IAM_CreateUser_ResultSet *results = [[[TMBAmazon_IAM_CreateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_CreateUser_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_CreateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketLogging Choreo.
 */
@implementation TMBAmazon_S3_GetBucketLogging_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to retrieve logging information for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketLogging Choreo.
 */
@implementation TMBAmazon_S3_GetBucketLogging_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the logging status and user logging permissions for the specified bucket.
 */
@implementation TMBAmazon_S3_GetBucketLogging

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketLogging Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketLogging"] autorelease];
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
		TMBAmazon_S3_GetBucketLogging_ResultSet *results = [[[TMBAmazon_S3_GetBucketLogging_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketLogging Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketLogging_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketLogging_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteMultipleObjects Choreo.
 */
@implementation TMBAmazon_S3_DeleteMultipleObjects_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The the name of the bucket that contains the objects that you want to delete.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the FileNames input for this Choreo.
	*(required, string) A list of file names to delete (separated by commas).
	 */
	-(void)setFileNames:(NSString*)FileNames {
		[super setInput:@"FileNames" toValue:FileNames];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteMultipleObjects Choreo.
 */
@implementation TMBAmazon_S3_DeleteMultipleObjects_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that no content is returned for a successful delete operation.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes multiple objects from an S3 Bucket.
 */
@implementation TMBAmazon_S3_DeleteMultipleObjects

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteMultipleObjects Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteMultipleObjects"] autorelease];
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
		TMBAmazon_S3_DeleteMultipleObjects_ResultSet *results = [[[TMBAmazon_S3_DeleteMultipleObjects_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteMultipleObjects Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteMultipleObjects_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteMultipleObjects_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_CreateDBSnapshot_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBInstanceIdentifier input for this Choreo.
	*(required, string) The DB Instance identifier. Should be in all lowercase.
	 */
	-(void)setDBInstanceIdentifier:(NSString*)DBInstanceIdentifier {
		[super setInput:@"DBInstanceIdentifier" toValue:DBInstanceIdentifier];
	}

	/*!
	 * Set the value of the DBSnapshotIdentifier input for this Choreo.
	*(required, string) The unique identifier for the db snapshot you're creating.
	 */
	-(void)setDBSnapshotIdentifier:(NSString*)DBSnapshotIdentifier {
		[super setInput:@"DBSnapshotIdentifier" toValue:DBSnapshotIdentifier];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDBSnapshot Choreo.
 */
@implementation TMBAmazon_RDS_CreateDBSnapshot_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a snapshot of an existing database instance.
 */
@implementation TMBAmazon_RDS_CreateDBSnapshot

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_CreateDBSnapshot Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/CreateDBSnapshot"] autorelease];
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
		TMBAmazon_RDS_CreateDBSnapshot_ResultSet *results = [[[TMBAmazon_RDS_CreateDBSnapshot_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateDBSnapshot Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_CreateDBSnapshot_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_CreateDBSnapshot_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetObjectTorrent Choreo.
 */
@implementation TMBAmazon_S3_GetObjectTorrent_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that contains the object to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the torrent file to retrieve.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetObjectTorrent Choreo.
 */
@implementation TMBAmazon_S3_GetObjectTorrent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The retrieved file. The response is a Bencoded dictionary as defined by the BitTorrent specification, which is then Base64-encoded by Temboo. Decode to get the Bencoded dictionary.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a base64-encoded torrent file from an Amazon S3 bucket.
 */
@implementation TMBAmazon_S3_GetObjectTorrent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetObjectTorrent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetObjectTorrent"] autorelease];
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
		TMBAmazon_S3_GetObjectTorrent_ResultSet *results = [[[TMBAmazon_S3_GetObjectTorrent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetObjectTorrent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetObjectTorrent_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetObjectTorrent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAccountPasswordPolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteAccountPasswordPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAccountPasswordPolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteAccountPasswordPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the password policy for the AWS account.
 */
@implementation TMBAmazon_IAM_DeleteAccountPasswordPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteAccountPasswordPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteAccountPasswordPolicy"] autorelease];
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
		TMBAmazon_IAM_DeleteAccountPasswordPolicy_ResultSet *results = [[[TMBAmazon_IAM_DeleteAccountPasswordPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteAccountPasswordPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteAccountPasswordPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteAccountPasswordPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Unsubscribe Choreo.
 */
@implementation TMBAmazon_SNS_Unsubscribe_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the SubscriptionArn input for this Choreo.
	*(required, string) The ARN of the subscription you want to delete.
	 */
	-(void)setSubscriptionArn:(NSString*)SubscriptionArn {
		[super setInput:@"SubscriptionArn" toValue:SubscriptionArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Unsubscribe Choreo.
 */
@implementation TMBAmazon_SNS_Unsubscribe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified subscription.
 */
@implementation TMBAmazon_SNS_Unsubscribe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_Unsubscribe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/Unsubscribe"] autorelease];
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
		TMBAmazon_SNS_Unsubscribe_ResultSet *results = [[[TMBAmazon_SNS_Unsubscribe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Unsubscribe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_Unsubscribe_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_Unsubscribe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRoles Choreo.
 */
@implementation TMBAmazon_IAM_ListRoles_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the PathPrefix input for this Choreo.
	*(optional, string) The path prefix for filtering the results. For example, "/division_abc/subdivision_xyz/" retrieves all groups whose path starts with that string. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPathPrefix:(NSString*)PathPrefix {
		[super setInput:@"PathPrefix" toValue:PathPrefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRoles Choreo.
 */
@implementation TMBAmazon_IAM_ListRoles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the roles that have the specified path prefix. If there are none, the action returns an empty list.
 */
@implementation TMBAmazon_IAM_ListRoles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListRoles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListRoles"] autorelease];
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
		TMBAmazon_IAM_ListRoles_ResultSet *results = [[[TMBAmazon_IAM_ListRoles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRoles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListRoles_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListRoles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_DeleteServerCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ServerCertificateName input for this Choreo.
	*(required, string) The name of the server certificate you want to delete.
	 */
	-(void)setServerCertificateName:(NSString*)ServerCertificateName {
		[super setInput:@"ServerCertificateName" toValue:ServerCertificateName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_DeleteServerCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified server certificate.
 */
@implementation TMBAmazon_IAM_DeleteServerCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteServerCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteServerCertificate"] autorelease];
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
		TMBAmazon_IAM_DeleteServerCertificate_ResultSet *results = [[[TMBAmazon_IAM_DeleteServerCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteServerCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteServerCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteServerCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeAvailabilityZones Choreo.
 */
@implementation TMBAmazon_EC2_DescribeAvailabilityZones_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ZoneName input for this Choreo.
	*(optional, string) One or more Availability Zones.  This can be a comma-separated list of up to 10 instance Zones.
	 */
	-(void)setZoneName:(NSString*)ZoneName {
		[super setInput:@"ZoneName" toValue:ZoneName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeAvailabilityZones Choreo.
 */
@implementation TMBAmazon_EC2_DescribeAvailabilityZones_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns Availability Zones that are available for your EC2 account.
 */
@implementation TMBAmazon_EC2_DescribeAvailabilityZones

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeAvailabilityZones Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeAvailabilityZones"] autorelease];
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
		TMBAmazon_EC2_DescribeAvailabilityZones_ResultSet *results = [[[TMBAmazon_EC2_DescribeAvailabilityZones_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeAvailabilityZones Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeAvailabilityZones_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeAvailabilityZones_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTags Choreo.
 */
@implementation TMBAmazon_EC2_DeleteTags_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResourceId input for this Choreo.
	*(required, string) The ID of a resource to tag. This can be a comma-separated list of up to 10  Resource IDs.
	 */
	-(void)setResourceId:(NSString*)ResourceId {
		[super setInput:@"ResourceId" toValue:ResourceId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TagKey input for this Choreo.
	*(required, string) The key for a tag.
	 */
	-(void)setTagKey:(NSString*)TagKey {
		[super setInput:@"TagKey" toValue:TagKey];
	}

	/*!
	 * Set the value of the TagValue input for this Choreo.
	*(optional, string) Indicates a tag should be deleted only if the value matches.To delete a tag regardless of its value, leave this blank. To delete a tag with an empty string value (""), pass the string value "null".
	 */
	-(void)setTagValue:(NSString*)TagValue {
		[super setInput:@"TagValue" toValue:TagValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTags Choreo.
 */
@implementation TMBAmazon_EC2_DeleteTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specific set of tags from a specific set of resources.
 */
@implementation TMBAmazon_EC2_DeleteTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DeleteTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DeleteTags"] autorelease];
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
		TMBAmazon_EC2_DeleteTags_ResultSet *results = [[[TMBAmazon_EC2_DeleteTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DeleteTags_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DeleteTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemovePermission Choreo.
 */
@implementation TMBAmazon_SQS_RemovePermission_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account number of the queue owner. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Label input for this Choreo.
	*(required, string) The unique identifier for the permission that is being removed.
	 */
	-(void)setLabel:(NSString*)Label {
		[super setInput:@"Label" toValue:Label];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue that that has the policy you want to adjust.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemovePermission Choreo.
 */
@implementation TMBAmazon_SQS_RemovePermission_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes any permission in the queue policy by specifying the permission label.
 */
@implementation TMBAmazon_SQS_RemovePermission

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_RemovePermission Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/RemovePermission"] autorelease];
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
		TMBAmazon_SQS_RemovePermission_ResultSet *results = [[[TMBAmazon_SQS_RemovePermission_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemovePermission Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_RemovePermission_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_RemovePermission_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_DeleteLoginProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user whose login profile you want to delete.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteLoginProfile Choreo.
 */
@implementation TMBAmazon_IAM_DeleteLoginProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the password for the specified user, which terminates the user's ability to access AWS services through the AWS Management Console.
 */
@implementation TMBAmazon_IAM_DeleteLoginProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteLoginProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteLoginProfile"] autorelease];
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
		TMBAmazon_IAM_DeleteLoginProfile_ResultSet *results = [[[TMBAmazon_IAM_DeleteLoginProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteLoginProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteLoginProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteLoginProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountPasswordPolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetAccountPasswordPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountPasswordPolicy Choreo.
 */
@implementation TMBAmazon_IAM_GetAccountPasswordPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the password policy for the AWS account.
 */
@implementation TMBAmazon_IAM_GetAccountPasswordPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetAccountPasswordPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetAccountPasswordPolicy"] autorelease];
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
		TMBAmazon_IAM_GetAccountPasswordPolicy_ResultSet *results = [[[TMBAmazon_IAM_GetAccountPasswordPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccountPasswordPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetAccountPasswordPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetAccountPasswordPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetQueueAttributes Choreo.
 */
@implementation TMBAmazon_SQS_GetQueueAttributes_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account number of the queue owner. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AttributeName input for this Choreo.
	*(optional, string) The name of the attribute that you want to retrieve for the specified queue. Defaults to 'All'.
	 */
	-(void)setAttributeName:(NSString*)AttributeName {
		[super setInput:@"AttributeName" toValue:AttributeName];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue to retrieve attributes for.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetQueueAttributes Choreo.
 */
@implementation TMBAmazon_SQS_GetQueueAttributes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or all attributes of a queue.
 */
@implementation TMBAmazon_SQS_GetQueueAttributes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_GetQueueAttributes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/GetQueueAttributes"] autorelease];
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
		TMBAmazon_SQS_GetQueueAttributes_ResultSet *results = [[[TMBAmazon_SQS_GetQueueAttributes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetQueueAttributes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_GetQueueAttributes_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_GetQueueAttributes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FlatFileOrderReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_FlatFileOrderReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 5 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FlatFileOrderReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_FlatFileOrderReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Report" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The report contents.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReport {
		return [super getOutputByName:@"Report"];
	}
	
@end

/*!
 * Returns a tab-delimited flat file order report. The report shows orders from the previous 60 days.
 */
@implementation TMBAmazon_Marketplace_Reports_FlatFileOrderReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_FlatFileOrderReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/FlatFileOrderReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_FlatFileOrderReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_FlatFileOrderReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FlatFileOrderReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_FlatFileOrderReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_FlatFileOrderReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteVirtualMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_DeleteVirtualMFADevice_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SerialNumber input for this Choreo.
	*(required, string) The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.
	 */
	-(void)setSerialNumber:(NSString*)SerialNumber {
		[super setInput:@"SerialNumber" toValue:SerialNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteVirtualMFADevice Choreo.
 */
@implementation TMBAmazon_IAM_DeleteVirtualMFADevice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a virtual MFA device.  You must deactivate a user's virtual MFA device before you can delete it.
 */
@implementation TMBAmazon_IAM_DeleteVirtualMFADevice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteVirtualMFADevice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteVirtualMFADevice"] autorelease];
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
		TMBAmazon_IAM_DeleteVirtualMFADevice_ResultSet *results = [[[TMBAmazon_IAM_DeleteVirtualMFADevice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteVirtualMFADevice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteVirtualMFADevice_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteVirtualMFADevice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveRoleFromInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_RemoveRoleFromInstanceProfile_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the InstanceProfileName input for this Choreo.
	*(required, string) Name of the instance profile to update.
	 */
	-(void)setInstanceProfileName:(NSString*)InstanceProfileName {
		[super setInput:@"InstanceProfileName" toValue:InstanceProfileName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the role to remove.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveRoleFromInstanceProfile Choreo.
 */
@implementation TMBAmazon_IAM_RemoveRoleFromInstanceProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes the specified Role from the specified Instance Profile.
 */
@implementation TMBAmazon_IAM_RemoveRoleFromInstanceProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_RemoveRoleFromInstanceProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/RemoveRoleFromInstanceProfile"] autorelease];
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
		TMBAmazon_IAM_RemoveRoleFromInstanceProfile_ResultSet *results = [[[TMBAmazon_IAM_RemoveRoleFromInstanceProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveRoleFromInstanceProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_RemoveRoleFromInstanceProfile_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_RemoveRoleFromInstanceProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListInstanceProfiles Choreo.
 */
@implementation TMBAmazon_IAM_ListInstanceProfiles_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the PathPrefix input for this Choreo.
	*(optional, string) The path prefix for filtering the results. For example, "/division_abc/subdivision_xyz/" retrieves all groups whose path starts with that string. If it is not included, it defaults to a slash (/).
	 */
	-(void)setPathPrefix:(NSString*)PathPrefix {
		[super setInput:@"PathPrefix" toValue:PathPrefix];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInstanceProfiles Choreo.
 */
@implementation TMBAmazon_IAM_ListInstanceProfiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the instance profiles that have the specified path prefix.
 */
@implementation TMBAmazon_IAM_ListInstanceProfiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListInstanceProfiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListInstanceProfiles"] autorelease];
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
		TMBAmazon_IAM_ListInstanceProfiles_ResultSet *results = [[[TMBAmazon_IAM_ListInstanceProfiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListInstanceProfiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListInstanceProfiles_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListInstanceProfiles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Publish Choreo.
 */
@implementation TMBAmazon_SNS_Publish_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the MessageStructure input for this Choreo.
	*(optional, string) Can be set to 'json' if you are providing a valid JSON object for the Message input variable.
	 */
	-(void)setMessageStructure:(NSString*)MessageStructure {
		[super setInput:@"MessageStructure" toValue:MessageStructure];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The text for the message you want to send to the topic.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) The "Subject" line of the message when the message is delivered to e-mail endpoints or as a JSON message.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic you want to publish to.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Publish Choreo.
 */
@implementation TMBAmazon_SNS_Publish_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sends a message to a topic's subscribed endpoints.
 */
@implementation TMBAmazon_SNS_Publish

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_Publish Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/Publish"] autorelease];
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
		TMBAmazon_SNS_Publish_ResultSet *results = [[[TMBAmazon_SNS_Publish_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Publish Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_Publish_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_Publish_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddOrUpdateProductImage Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ImageLocation input for this Choreo.
	*(required, string) The URL for the image location.
	 */
	-(void)setImageLocation:(NSString*)ImageLocation {
		[super setInput:@"ImageLocation" toValue:ImageLocation];
	}

	/*!
	 * Set the value of the ImageType input for this Choreo.
	*(optional, string) The type of image (Main, Alternate, or Swatch). Defaults to "Main".
	 */
	-(void)setImageType:(NSString*)ImageType {
		[super setInput:@"ImageType" toValue:ImageType];
	}

	/*!
	 * Set the value of the SKU input for this Choreo.
	*(required, string) A SKU is a "Stock Keeping Unit" which you can assign to your products to track your inventory. Provide the SKU for the product that is associated with the image you are uploading.
	 */
	-(void)setSKU:(NSString*)SKU {
		[super setInput:@"SKU" toValue:SKU];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 10 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddOrUpdateProductImage Choreo.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The processing status of the feed submission which is parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getProcessingStatus {
		return [super getOutputByName:@"ProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon after submitting the feed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SubmissionId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The submission id parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionId {
		return [super getOutputByName:@"SubmissionId"];
	}

	/*!
	 * Retrieve the value of the "SubmissionResult" output from an execution of this Choreo.
	 * @return - NSString* (string) The submission result returned from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSubmissionResult {
		return [super getOutputByName:@"SubmissionResult"];
	}
	
@end

/*!
 * Adds or updates a product image with a given image location and SKU.
 */
@implementation TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Feeds/AddOrUpdateProductImage"] autorelease];
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
		TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_ResultSet *results = [[[TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddOrUpdateProductImage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Feeds_AddOrUpdateProductImage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketCORS Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketCORS_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that the CORS configuration should be removed from.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketCORS Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketCORS_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. Note that for a successful exection, this API operation returns an empty 204 response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the CORS (Cross-Origin Resource Sharing) configuration information set for the specified bucket.
 */
@implementation TMBAmazon_S3_DeleteBucketCORS

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteBucketCORS Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteBucketCORS"] autorelease];
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
		TMBAmazon_S3_DeleteBucketCORS_ResultSet *results = [[[TMBAmazon_S3_DeleteBucketCORS_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBucketCORS Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteBucketCORS_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteBucketCORS_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSigningCertificates Choreo.
 */
@implementation TMBAmazon_IAM_ListSigningCertificates_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(optional, string) The name of the user.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSigningCertificates Choreo.
 */
@implementation TMBAmazon_IAM_ListSigningCertificates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the signing certificates associated with the specified user. If there are none, the action returns an empty list.
 */
@implementation TMBAmazon_IAM_ListSigningCertificates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListSigningCertificates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListSigningCertificates"] autorelease];
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
		TMBAmazon_IAM_ListSigningCertificates_ResultSet *results = [[[TMBAmazon_IAM_ListSigningCertificates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSigningCertificates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListSigningCertificates_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListSigningCertificates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AuthorizeDBSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CIDRIP input for this Choreo.
	*(conditional, string) IP range that should have access. Required unless EC2SecurityGroupName and EC2SecurityGroupOwnerId are used.
	 */
	-(void)setCIDRIP:(NSString*)CIDRIP {
		[super setInput:@"CIDRIP" toValue:CIDRIP];
	}

	/*!
	 * Set the value of the DBSecurityGroupName input for this Choreo.
	*(required, string) A unique name for the security group you want to authorize.
	 */
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName {
		[super setInput:@"DBSecurityGroupName" toValue:DBSecurityGroupName];
	}

	/*!
	 * Set the value of the EC2SecurityGroupName input for this Choreo.
	*(conditional, string) The EC2 security group to authorize. This and EC2SecurityGroupOwnerId are required if CIDRIP is not used.
	 */
	-(void)setEC2SecurityGroupName:(NSString*)EC2SecurityGroupName {
		[super setInput:@"EC2SecurityGroupName" toValue:EC2SecurityGroupName];
	}

	/*!
	 * Set the value of the EC2SecurityGroupOwnerId input for this Choreo.
	*(conditional, string) The AWS account number for the security group owner. This and EC2SecurityGroupName are required if CIDRIP is not used.
	 */
	-(void)setEC2SecurityGroupOwnerId:(NSString*)EC2SecurityGroupOwnerId {
		[super setInput:@"EC2SecurityGroupOwnerId" toValue:EC2SecurityGroupOwnerId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AuthorizeDBSecurityGroupIngress Choreo.
 */
@implementation TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows restricted access to your database instance by adding EC2 Security Groups to the DBSecurityGroup or by specifying an allowed IP range.
 */
@implementation TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/AuthorizeDBSecurityGroupIngress"] autorelease];
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
		TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_ResultSet *results = [[[TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AuthorizeDBSecurityGroupIngress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_AuthorizeDBSecurityGroupIngress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReleaseAddress Choreo.
 */
@implementation TMBAmazon_EC2_ReleaseAddress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllocationId input for this Choreo.
	*(conditional, string) [EC2-VPC] The allocation ID that AWS provided when you allocated the address for use with a VPC.
	 */
	-(void)setAllocationId:(NSString*)AllocationId {
		[super setInput:@"AllocationId" toValue:AllocationId];
	}

	/*!
	 * Set the value of the PublicIp input for this Choreo.
	*(conditional, string) [EC2-Classic] The Elastic IP address.
	 */
	-(void)setPublicIp:(NSString*)PublicIp {
		[super setInput:@"PublicIp" toValue:PublicIp];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReleaseAddress Choreo.
 */
@implementation TMBAmazon_EC2_ReleaseAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Releases an Elastic IP address allocated to your account.
 */
@implementation TMBAmazon_EC2_ReleaseAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_ReleaseAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/ReleaseAddress"] autorelease];
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
		TMBAmazon_EC2_ReleaseAddress_ResultSet *results = [[[TMBAmazon_EC2_ReleaseAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReleaseAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_ReleaseAddress_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_ReleaseAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateDBSecurityGroup Choreo.
 */
@implementation TMBAmazon_RDS_CreateDBSecurityGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the DBSecurityGroupDescription input for this Choreo.
	*(required, string) A description for the security group you're creating.
	 */
	-(void)setDBSecurityGroupDescription:(NSString*)DBSecurityGroupDescription {
		[super setInput:@"DBSecurityGroupDescription" toValue:DBSecurityGroupDescription];
	}

	/*!
	 * Set the value of the DBSecurityGroupName input for this Choreo.
	*(required, string) A unique name for the security group you want to create.
	 */
	-(void)setDBSecurityGroupName:(NSString*)DBSecurityGroupName {
		[super setInput:@"DBSecurityGroupName" toValue:DBSecurityGroupName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDBSecurityGroup Choreo.
 */
@implementation TMBAmazon_RDS_CreateDBSecurityGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new database security group which you can use to control the access to the database instance.
 */
@implementation TMBAmazon_RDS_CreateDBSecurityGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_RDS_CreateDBSecurityGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/RDS/CreateDBSecurityGroup"] autorelease];
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
		TMBAmazon_RDS_CreateDBSecurityGroup_ResultSet *results = [[[TMBAmazon_RDS_CreateDBSecurityGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateDBSecurityGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_RDS_CreateDBSecurityGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_RDS_CreateDBSecurityGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemovePermission Choreo.
 */
@implementation TMBAmazon_SNS_RemovePermission_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Label input for this Choreo.
	*(required, string) The unique identifier for the policy statement that you want to delete.
	 */
	-(void)setLabel:(NSString*)Label {
		[super setInput:@"Label" toValue:Label];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic that has an access control policy you want to adjust.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemovePermission Choreo.
 */
@implementation TMBAmazon_SNS_RemovePermission_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes the statement from a topic's access control policy that was created with the AddPermission action.
 */
@implementation TMBAmazon_SNS_RemovePermission

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_RemovePermission Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/RemovePermission"] autorelease];
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
		TMBAmazon_SNS_RemovePermission_ResultSet *results = [[[TMBAmazon_SNS_RemovePermission_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemovePermission Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_RemovePermission_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_RemovePermission_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListInventorySupplyBySKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ResponseGroup input for this Choreo.
	*(optional, string) Indicates whether or not to return the SupplyDetail element in the response. Valid values are: "Basic" (does not include SupplyDetail), and "Detailed" (includes SupplyDetail). Defaults to "Basic".
	 */
	-(void)setResponseGroup:(NSString*)ResponseGroup {
		[super setInput:@"ResponseGroup" toValue:ResponseGroup];
	}

	/*!
	 * Set the value of the SellerSKU input for this Choreo.
	*(required, string) A seller SKU for an item that you want inventory availability information about.
	 */
	-(void)setSellerSKU:(NSString*)SellerSKU {
		[super setInput:@"SellerSKU" toValue:SellerSKU];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListInventorySupplyBySKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the availability of a seller's inventory using a given SellerSKU.
 */
@implementation TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Inventory/ListInventorySupplyBySKU"] autorelease];
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
		TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_ResultSet *results = [[[TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListInventorySupplyBySKU Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Inventory_ListInventorySupplyBySKU_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAccessKeys Choreo.
 */
@implementation TMBAmazon_IAM_ListAccessKeys_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Marker input for this Choreo.
	*(optional, string) Used for pagination to indicate the starting point of the results to return.
	 */
	-(void)setMarker:(NSString*)Marker {
		[super setInput:@"Marker" toValue:Marker];
	}

	/*!
	 * Set the value of the MaxItems input for this Choreo.
	*(optional, integer) Used for pagination to limit the number of results returned. Defaults to 100.
	 */
	-(void)setMaxItems:(NSString*)MaxItems {
		[super setInput:@"MaxItems" toValue:MaxItems];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(conditional, string) Name of the user.  If the UserName field is not specified, the UserName is determined implicitly based on the AWS Access Key ID used to sign the request.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAccessKeys Choreo.
 */
@implementation TMBAmazon_IAM_ListAccessKeys_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the Access Key IDs associated with the specified user.
 */
@implementation TMBAmazon_IAM_ListAccessKeys

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_ListAccessKeys Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/ListAccessKeys"] autorelease];
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
		TMBAmazon_IAM_ListAccessKeys_ResultSet *results = [[[TMBAmazon_IAM_ListAccessKeys_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAccessKeys Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_ListAccessKeys_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_ListAccessKeys_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeSecurityGroups Choreo.
 */
@implementation TMBAmazon_EC2_DescribeSecurityGroups_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(optional, string) The name of a supported filter to narrow results with.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(optional, string) A value for the specified filter.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the GroupId input for this Choreo.
	*(optional, string) One or more security group IDs.  This can be a comma-separated list of up to 10 GroupIDs.  If no group names nor group IDs supplied, returns all groups.
	 */
	-(void)setGroupId:(NSString*)GroupId {
		[super setInput:@"GroupId" toValue:GroupId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(optional, string) One or more security group names. This can be a comma-separated list of up to 10 group names.  If no group names nor group IDs supplied, returns all groups.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeSecurityGroups Choreo.
 */
@implementation TMBAmazon_EC2_DescribeSecurityGroups_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns security group information associated with your AWS Account.
 */
@implementation TMBAmazon_EC2_DescribeSecurityGroups

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeSecurityGroups Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeSecurityGroups"] autorelease];
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
		TMBAmazon_EC2_DescribeSecurityGroups_ResultSet *results = [[[TMBAmazon_EC2_DescribeSecurityGroups_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeSecurityGroups Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeSecurityGroups_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeSecurityGroups_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketNotification Choreo.
 */
@implementation TMBAmazon_S3_PutBucketNotification_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to create a notification for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the Event input for this Choreo.
	*(optional, string) A bucket event for which to send notifications. Valid value:  "s3:ReducedRedundancyLostObject" (The default and currently only supported notification event).
	 */
	-(void)setEvent:(NSString*)Event {
		[super setInput:@"Event" toValue:Event];
	}

	/*!
	 * Set the value of the Topic input for this Choreo.
	*(conditional, string) The Amazon SNS topic arn that  Amazon S3 will publish a message to report the specified events for the bucket. If this is not supplied, notifications will be turned off.
	 */
	-(void)setTopic:(NSString*)Topic {
		[super setInput:@"Topic" toValue:Topic];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketNotification Choreo.
 */
@implementation TMBAmazon_S3_PutBucketNotification_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Stores the response from Amazon. Note that for a successful execution, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Enables Amazon SNS notifications of specified events for a bucket.
 */
@implementation TMBAmazon_S3_PutBucketNotification

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketNotification Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketNotification"] autorelease];
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
		TMBAmazon_S3_PutBucketNotification_ResultSet *results = [[[TMBAmazon_S3_PutBucketNotification_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketNotification Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketNotification_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketNotification_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AssociateAddress Choreo.
 */
@implementation TMBAmazon_EC2_AssociateAddress_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AllocationId input for this Choreo.
	*(optional, string) [EC2-VPC] The allocation ID.  Required for a VPC.
	 */
	-(void)setAllocationId:(NSString*)AllocationId {
		[super setInput:@"AllocationId" toValue:AllocationId];
	}

	/*!
	 * Set the value of the AllowReassociation input for this Choreo.
	*(optional, string) [EC2-VPC] Allows an Elastic IP address that is already associated with an instance or network interface to be re-associated with the specified instance or network interface. False if not specified.
	 */
	-(void)setAllowReassociation:(NSString*)AllowReassociation {
		[super setInput:@"AllowReassociation" toValue:AllowReassociation];
	}

	/*!
	 * Set the value of the InstanceId input for this Choreo.
	*(conditional, string) The ID of the instance.  Required for EC2-Classic. For a VPC, you can specify either an instance ID or a network interface ID, but not both.
	 */
	-(void)setInstanceId:(NSString*)InstanceId {
		[super setInput:@"InstanceId" toValue:InstanceId];
	}

	/*!
	 * Set the value of the NetworkInterfaceId input for this Choreo.
	*(optional, string) [EC2-VPC] The ID of the network interface. Association fails when specifying an instance ID unless exactly one interface is attached.
	 */
	-(void)setNetworkInterfaceId:(NSString*)NetworkInterfaceId {
		[super setInput:@"NetworkInterfaceId" toValue:NetworkInterfaceId];
	}

	/*!
	 * Set the value of the PrivateIpAddress input for this Choreo.
	*(optional, string) [EC2-VPC] The primary or secondary private IP address to associate with the Elastic IP address. If nothing is specified, the Elastic IP address is associated with the primary private IP address.
	 */
	-(void)setPrivateIpAddress:(NSString*)PrivateIpAddress {
		[super setInput:@"PrivateIpAddress" toValue:PrivateIpAddress];
	}

	/*!
	 * Set the value of the PublicIp input for this Choreo.
	*(conditional, string) The Elastic IP address.
	 */
	-(void)setPublicIp:(NSString*)PublicIp {
		[super setInput:@"PublicIp" toValue:PublicIp];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AssociateAddress Choreo.
 */
@implementation TMBAmazon_EC2_AssociateAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Associates an Elastic IP address with an instance or a network interface.
 */
@implementation TMBAmazon_EC2_AssociateAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_AssociateAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/AssociateAddress"] autorelease];
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
		TMBAmazon_EC2_AssociateAddress_ResultSet *results = [[[TMBAmazon_EC2_AssociateAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AssociateAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_AssociateAddress_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_AssociateAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListOrdersWithBuyerEmail Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BuyerEmail input for this Choreo.
	*(required, string) The e-mail address of a buyer. Used to select only the orders that contain the specified e-mail address.
	 */
	-(void)setBuyerEmail:(NSString*)BuyerEmail {
		[super setInput:@"BuyerEmail" toValue:BuyerEmail];
	}

	/*!
	 * Set the value of the CreatedAfter input for this Choreo.
	*(optional, date) A date used for selecting orders created after (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01). Defaults to today's date if not provided.
	 */
	-(void)setCreatedAfter:(NSString*)CreatedAfter {
		[super setInput:@"CreatedAfter" toValue:CreatedAfter];
	}

	/*!
	 * Set the value of the CreatedBefore input for this Choreo.
	*(optional, date) A date used for selecting orders created before (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01).
	 */
	-(void)setCreatedBefore:(NSString*)CreatedBefore {
		[super setInput:@"CreatedBefore" toValue:CreatedBefore];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MaxResultsPerPage input for this Choreo.
	*(optional, integer) A number that indicates the maximum number of orders that can be returned per page. Valid values are: 1-100.
	 */
	-(void)setMaxResultsPerPage:(NSString*)MaxResultsPerPage {
		[super setInput:@"MaxResultsPerPage" toValue:MaxResultsPerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListOrdersWithBuyerEmail Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns orders associated with a buyer's email address that you specify.
 */
@implementation TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Orders/ListOrdersWithBuyerEmail"] autorelease];
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
		TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_ResultSet *results = [[[TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListOrdersWithBuyerEmail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Orders_ListOrdersWithBuyerEmail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTopics Choreo.
 */
@implementation TMBAmazon_SNS_ListTopics_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the NextToken input for this Choreo.
	*(optional, string) The token returned from a previous LIstTopics request.
	 */
	-(void)setNextToken:(NSString*)NextToken {
		[super setInput:@"NextToken" toValue:NextToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTopics Choreo.
 */
@implementation TMBAmazon_SNS_ListTopics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the user's topics.
 */
@implementation TMBAmazon_SNS_ListTopics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_ListTopics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/ListTopics"] autorelease];
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
		TMBAmazon_SNS_ListTopics_ResultSet *results = [[[TMBAmazon_SNS_ListTopics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTopics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_ListTopics_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_ListTopics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateSigningCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UpdateSigningCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CertificateId input for this Choreo.
	*(required, string) The ID of the signing certificate you want to update.
	 */
	-(void)setCertificateId:(NSString*)CertificateId {
		[super setInput:@"CertificateId" toValue:CertificateId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(required, string) The status you want to assign to the certificate. Active means the certificate can be used for API calls to AWS, while Inactive means the certificate cannot be used.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(optional, string) Name of the user the signing certificate belongs to.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateSigningCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UpdateSigningCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Changes the status of the specified signing certificate from active to disabled, or vice versa. This action can be used to disable a user's signing certificate as part of a certificate rotation workflow.
 */
@implementation TMBAmazon_IAM_UpdateSigningCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateSigningCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateSigningCertificate"] autorelease];
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
		TMBAmazon_IAM_UpdateSigningCertificate_ResultSet *results = [[[TMBAmazon_IAM_UpdateSigningCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateSigningCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateSigningCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateSigningCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketLogging Choreo.
 */
@implementation TMBAmazon_S3_PutBucketLogging_Inputs

	/*!
	 * Set the value of the BucketLoggingStatus input for this Choreo.
	*(optional, xml) An XML file that allows custom config, this can be used as an alternative to the other bucket logging inputs. If provided, the Choreo will ignore all inputs except your AWS Key/Secret and BucketName.
	 */
	-(void)setBucketLoggingStatus:(NSString*)BucketLoggingStatus {
		[super setInput:@"BucketLoggingStatus" toValue:BucketLoggingStatus];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket that you are setting the logging for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(conditional, string) The email address of the person being granted logging permissions.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the Permission input for this Choreo.
	*(conditional, string) The logging permissions given to the Grantee for the bucket. Valid values are: FULL_CONTROL, READ, or WRITE.
	 */
	-(void)setPermission:(NSString*)Permission {
		[super setInput:@"Permission" toValue:Permission];
	}

	/*!
	 * Set the value of the TargetBucket input for this Choreo.
	*(conditional, string) The name of the target bucket. To disable logging, just leave this blank.
	 */
	-(void)setTargetBucket:(NSString*)TargetBucket {
		[super setInput:@"TargetBucket" toValue:TargetBucket];
	}

	/*!
	 * Set the value of the TargetPrefix input for this Choreo.
	*(conditional, string) Lets you specify a prefix for the keys that the log files will be stored under. Defaults to "/logs"
	 */
	-(void)setTargetPrefix:(NSString*)TargetPrefix {
		[super setInput:@"TargetPrefix" toValue:TargetPrefix];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketLogging Choreo.
 */
@implementation TMBAmazon_S3_PutBucketLogging_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon. A successful execution returns an empty 200 response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the logging parameters for a bucket and specifies permissions for who can view and modify the logging parameters. Can also be used to disable logging.
 */
@implementation TMBAmazon_S3_PutBucketLogging

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketLogging Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketLogging"] autorelease];
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
		TMBAmazon_S3_PutBucketLogging_ResultSet *results = [[[TMBAmazon_S3_PutBucketLogging_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketLogging Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketLogging_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketLogging_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UploadServerCertificate_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the CertificateBody input for this Choreo.
	*(required, multiline) The contents of the signing certificate.
	 */
	-(void)setCertificateBody:(NSString*)CertificateBody {
		[super setInput:@"CertificateBody" toValue:CertificateBody];
	}

	/*!
	 * Set the value of the CertificateChain input for this Choreo.
	*(optional, multiline) The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.
	 */
	-(void)setCertificateChain:(NSString*)CertificateChain {
		[super setInput:@"CertificateChain" toValue:CertificateChain];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The path for the server certificate.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the PrivateKey input for this Choreo.
	*(required, multiline) The contents of the private key in PEM-encoded format.
	 */
	-(void)setPrivateKey:(NSString*)PrivateKey {
		[super setInput:@"PrivateKey" toValue:PrivateKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ServerCertificateName input for this Choreo.
	*(required, string) The name for the server certificate. Do not include the path in this value.
	 */
	-(void)setServerCertificateName:(NSString*)ServerCertificateName {
		[super setInput:@"ServerCertificateName" toValue:ServerCertificateName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadServerCertificate Choreo.
 */
@implementation TMBAmazon_IAM_UploadServerCertificate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.
 */
@implementation TMBAmazon_IAM_UploadServerCertificate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UploadServerCertificate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UploadServerCertificate"] autorelease];
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
		TMBAmazon_IAM_UploadServerCertificate_ResultSet *results = [[[TMBAmazon_IAM_UploadServerCertificate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadServerCertificate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UploadServerCertificate_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UploadServerCertificate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketWebsite Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketWebsite_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the website configuration you want to delete.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketWebsite Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketWebsite_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful delete operation, no content is returned and this output variable is empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the website configuration for the specified bucket.
 */
@implementation TMBAmazon_S3_DeleteBucketWebsite

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteBucketWebsite Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteBucketWebsite"] autorelease];
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
		TMBAmazon_S3_DeleteBucketWebsite_ResultSet *results = [[[TMBAmazon_S3_DeleteBucketWebsite_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBucketWebsite Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteBucketWebsite_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteBucketWebsite_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionStatus Choreo.
 */
@implementation TMBAmazon_FPS_GetTransactionStatus_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) The endpoint should be fps.sandbox.amazonaws.com when accessing the sandbox. Defaults to production setting:  fps.amazonaws.com.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionId input for this Choreo.
	*(required, string) The ID for the transaction status you want to retrieve.
	 */
	-(void)setTransactionId:(NSString*)TransactionId {
		[super setInput:@"TransactionId" toValue:TransactionId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionStatus Choreo.
 */
@implementation TMBAmazon_FPS_GetTransactionStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the status of a specified transaction.
 */
@implementation TMBAmazon_FPS_GetTransactionStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_FPS_GetTransactionStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/FPS/GetTransactionStatus"] autorelease];
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
		TMBAmazon_FPS_GetTransactionStatus_ResultSet *results = [[[TMBAmazon_FPS_GetTransactionStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTransactionStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_FPS_GetTransactionStatus_Inputs*)newInputSet {
		return [[[TMBAmazon_FPS_GetTransactionStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllFulfillmentOrders Choreo.
 */
@implementation TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FulfillmentMethod input for this Choreo.
	*(optional, string) A value used for selecting fulfillment orders based on their fulfillment method. "Consumer" indicates a customer order, and "Removal" indicates that the inventory should be returned to the specified.
	 */
	-(void)setFulfillmentMethod:(NSString*)FulfillmentMethod {
		[super setInput:@"FulfillmentMethod" toValue:FulfillmentMethod];
	}

	/*!
	 * Set the value of the QueryStartDateTime input for this Choreo.
	*(optional, date) A date used for selecting items that have had changes in inventory availability after (or at) a specified time, in ISO 8601 date format (i.e. 2012-01-01).
	 */
	-(void)setQueryStartDateTime:(NSString*)QueryStartDateTime {
		[super setInput:@"QueryStartDateTime" toValue:QueryStartDateTime];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllFulfillmentOrders Choreo.
 */
@implementation TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of fulfillment orders fulfilled after (or at) a specified date or by fulfillment method.
 */
@implementation TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/OutboundShipments/ListAllFulfillmentOrders"] autorelease];
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
		TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_ResultSet *results = [[[TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllFulfillmentOrders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_OutboundShipments_ListAllFulfillmentOrders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListQueues Choreo.
 */
@implementation TMBAmazon_SQS_ListQueues_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the QueueNamePrefix input for this Choreo.
	*(optional, string) A string used to filter the list of queues.
	 */
	-(void)setQueueNamePrefix:(NSString*)QueueNamePrefix {
		[super setInput:@"QueueNamePrefix" toValue:QueueNamePrefix];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListQueues Choreo.
 */
@implementation TMBAmazon_SQS_ListQueues_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of your queues.
 */
@implementation TMBAmazon_SQS_ListQueues

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_ListQueues Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/ListQueues"] autorelease];
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
		TMBAmazon_SQS_ListQueues_ResultSet *results = [[[TMBAmazon_SQS_ListQueues_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListQueues Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_ListQueues_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_ListQueues_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUser Choreo.
 */
@implementation TMBAmazon_IAM_GetUser_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(conditional, string) The name of the user to retrieve. If you do not specify a user name, IAM determines the user name implicitly based on the AWS Access Key ID signing the request.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUser Choreo.
 */
@implementation TMBAmazon_IAM_GetUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details about a specified user, including the user's path, GUID, and ARN.
 */
@implementation TMBAmazon_IAM_GetUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_GetUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/GetUser"] autorelease];
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
		TMBAmazon_IAM_GetUser_ResultSet *results = [[[TMBAmazon_IAM_GetUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_GetUser_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_GetUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DescribeImageAttribute Choreo.
 */
@implementation TMBAmazon_EC2_DescribeImageAttribute_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Attribute input for this Choreo.
	*(required, string) The AMI attribute to get. Valid Values are: description | kernel | ramdisk | launchPermission | productCodes | blockDeviceMapping.
	 */
	-(void)setAttribute:(NSString*)Attribute {
		[super setInput:@"Attribute" toValue:Attribute];
	}

	/*!
	 * Set the value of the ImageId input for this Choreo.
	*(required, string) The AMI ID.
	 */
	-(void)setImageId:(NSString*)ImageId {
		[super setInput:@"ImageId" toValue:ImageId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DescribeImageAttribute Choreo.
 */
@implementation TMBAmazon_EC2_DescribeImageAttribute_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about an attribute of an AMI.
 */
@implementation TMBAmazon_EC2_DescribeImageAttribute

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DescribeImageAttribute Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DescribeImageAttribute"] autorelease];
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
		TMBAmazon_EC2_DescribeImageAttribute_ResultSet *results = [[[TMBAmazon_EC2_DescribeImageAttribute_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DescribeImageAttribute Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DescribeImageAttribute_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DescribeImageAttribute_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveUserFromGroup Choreo.
 */
@implementation TMBAmazon_IAM_RemoveUserFromGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) Name of the group to update.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Name of the user to remove.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveUserFromGroup Choreo.
 */
@implementation TMBAmazon_IAM_RemoveUserFromGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes the specified user from the specified group.
 */
@implementation TMBAmazon_IAM_RemoveUserFromGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_RemoveUserFromGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/RemoveUserFromGroup"] autorelease];
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
		TMBAmazon_IAM_RemoveUserFromGroup_ResultSet *results = [[[TMBAmazon_IAM_RemoveUserFromGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveUserFromGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_RemoveUserFromGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_RemoveUserFromGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSecurityGroup Choreo.
 */
@implementation TMBAmazon_EC2_DeleteSecurityGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupId input for this Choreo.
	*(conditional, string) The id of the security group to delete. Required unless providing the GroupName.
	 */
	-(void)setGroupId:(NSString*)GroupId {
		[super setInput:@"GroupId" toValue:GroupId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(conditional, string) The name of the security group to delete.Required unless providing the GroupId.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, any) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSecurityGroup Choreo.
 */
@implementation TMBAmazon_EC2_DeleteSecurityGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a security group using the group name you specify.
 */
@implementation TMBAmazon_EC2_DeleteSecurityGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DeleteSecurityGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DeleteSecurityGroup"] autorelease];
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
		TMBAmazon_EC2_DeleteSecurityGroup_ResultSet *results = [[[TMBAmazon_EC2_DeleteSecurityGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteSecurityGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DeleteSecurityGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DeleteSecurityGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnshippedOrdersReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TimeToWait input for this Choreo.
	*(optional, integer) By default, the Choreo will wait for 5 minutes to see if the report is ready for retrieval. Max is 120 minutes.
	 */
	-(void)setTimeToWait:(NSString*)TimeToWait {
		[super setInput:@"TimeToWait" toValue:TimeToWait];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnshippedOrdersReport Choreo.
 */
@implementation TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "GeneratedReportId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The GeneratedReportId parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getGeneratedReportId {
		return [super getOutputByName:@"GeneratedReportId"];
	}

	/*!
	 * Retrieve the value of the "ReportProcessingStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the report request parsed from the Amazon response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportProcessingStatus {
		return [super getOutputByName:@"ReportProcessingStatus"];
	}

	/*!
	 * Retrieve the value of the "ReportRequestId" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ReportRequestId parsed from the Amazon response. This id is used in GetReportRequestList.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReportRequestId {
		return [super getOutputByName:@"ReportRequestId"];
	}

	/*!
	 * Retrieve the value of the "Report" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The report contents.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getReport {
		return [super getOutputByName:@"Report"];
	}
	
@end

/*!
 * Returns a tab-delimited flat file report that contains only orders that are not confirmed as shipped.
 */
@implementation TMBAmazon_Marketplace_Reports_UnshippedOrdersReport

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Reports_UnshippedOrdersReport Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Reports/UnshippedOrdersReport"] autorelease];
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
		TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_ResultSet *results = [[[TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnshippedOrdersReport Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Reports_UnshippedOrdersReport_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteKeyPair Choreo.
 */
@implementation TMBAmazon_EC2_DeleteKeyPair_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the KeyName input for this Choreo.
	*(required, string) A unique name for the key pair.
	 */
	-(void)setKeyName:(NSString*)KeyName {
		[super setInput:@"KeyName" toValue:KeyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteKeyPair Choreo.
 */
@implementation TMBAmazon_EC2_DeleteKeyPair_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified key pair by removing the public key from Amazon EC2. You must own the key pair.
 */
@implementation TMBAmazon_EC2_DeleteKeyPair

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DeleteKeyPair Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DeleteKeyPair"] autorelease];
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
		TMBAmazon_EC2_DeleteKeyPair_ResultSet *results = [[[TMBAmazon_EC2_DeleteKeyPair_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteKeyPair Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DeleteKeyPair_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DeleteKeyPair_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompetitivePricingForSKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SellerSKU input for this Choreo.
	*(required, string) A comma-separated list of up to 20 SellerSKU values used to identify products in the given marketplace.
	 */
	-(void)setSellerSKU:(NSString*)SellerSKU {
		[super setInput:@"SellerSKU" toValue:SellerSKU];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompetitivePricingForSKU Choreo.
 */
@implementation TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the current competitive pricing of products, based on SellerSKU values and the MarketplaceId that you specify.
 */
@implementation TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Products/GetCompetitivePricingForSKU"] autorelease];
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
		TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_ResultSet *results = [[[TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompetitivePricingForSKU Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Products_GetCompetitivePricingForSKU_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBucketPolicy Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketPolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the policy you want to delete.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBucketPolicy Choreo.
 */
@implementation TMBAmazon_S3_DeleteBucketPolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful delete operation, no content is returned, and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the policy on a specified bucket.
 */
@implementation TMBAmazon_S3_DeleteBucketPolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_DeleteBucketPolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/DeleteBucketPolicy"] autorelease];
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
		TMBAmazon_S3_DeleteBucketPolicy_ResultSet *results = [[[TMBAmazon_S3_DeleteBucketPolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBucketPolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_DeleteBucketPolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_DeleteBucketPolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PutBucketTagging Choreo.
 */
@implementation TMBAmazon_S3_PutBucketTagging_Inputs

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, xml) An XML file describing the key/values for the tag set. Note - if you use this input, the Key and Value input variables will be ignored.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to add tags to.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the Key input for this Choreo.
	*(conditional, string) The tag name.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the Value input for this Choreo.
	*(conditional, string) The tag value.
	 */
	-(void)setValue:(NSString*)Value {
		[super setInput:@"Value" toValue:Value];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PutBucketTagging Choreo.
 */
@implementation TMBAmazon_S3_PutBucketTagging_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon. Note that for a successful execution, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a set of billing tags to an existing bucket.
 */
@implementation TMBAmazon_S3_PutBucketTagging

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_PutBucketTagging Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/PutBucketTagging"] autorelease];
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
		TMBAmazon_S3_PutBucketTagging_ResultSet *results = [[[TMBAmazon_S3_PutBucketTagging_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PutBucketTagging Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_PutBucketTagging_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_PutBucketTagging_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketWebsite Choreo.
 */
@implementation TMBAmazon_S3_GetBucketWebsite_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket associated with the website configuration you want to retrieve.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketWebsite Choreo.
 */
@implementation TMBAmazon_S3_GetBucketWebsite_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "StaticURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL of the Amazon static website. Note that the region code included in the URL is required for static websites.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getStaticURL {
		return [super getOutputByName:@"StaticURL"];
	}
	
@end

/*!
 * Returns the website configuration and static URL of a bucket if it is setup as a website.
 */
@implementation TMBAmazon_S3_GetBucketWebsite

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketWebsite Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketWebsite"] autorelease];
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
		TMBAmazon_S3_GetBucketWebsite_ResultSet *results = [[[TMBAmazon_S3_GetBucketWebsite_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketWebsite Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketWebsite_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketWebsite_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetOrder Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_GetOrder_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSMarketplaceId input for this Choreo.
	*(required, string) The Marketplace ID provided by Amazon Web Services.
	 */
	-(void)setAWSMarketplaceId:(NSString*)AWSMarketplaceId {
		[super setInput:@"AWSMarketplaceId" toValue:AWSMarketplaceId];
	}

	/*!
	 * Set the value of the AWSMerchantId input for this Choreo.
	*(required, string) The Merchant ID provided by Amazon Web Services.
	 */
	-(void)setAWSMerchantId:(NSString*)AWSMerchantId {
		[super setInput:@"AWSMerchantId" toValue:AWSMerchantId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AmazonOrderId input for this Choreo.
	*(required, string) An AmazonOrderId value used to retrieve the order.
	 */
	-(void)setAmazonOrderId:(NSString*)AmazonOrderId {
		[super setInput:@"AmazonOrderId" toValue:AmazonOrderId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(conditional, string) The base URL for the MWS endpoint. Defaults to mws.amazonservices.co.uk.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetOrder Choreo.
 */
@implementation TMBAmazon_Marketplace_Orders_GetOrder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Stores the response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns orders based on the AmazonOrderId values that you specify.
 */
@implementation TMBAmazon_Marketplace_Orders_GetOrder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_Marketplace_Orders_GetOrder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/Marketplace/Orders/GetOrder"] autorelease];
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
		TMBAmazon_Marketplace_Orders_GetOrder_ResultSet *results = [[[TMBAmazon_Marketplace_Orders_GetOrder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetOrder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_Marketplace_Orders_GetOrder_Inputs*)newInputSet {
		return [[[TMBAmazon_Marketplace_Orders_GetOrder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountBalance Choreo.
 */
@implementation TMBAmazon_FPS_GetAccountBalance_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) The endpoint should be fps.sandbox.amazonaws.com when accessing the sandbox. Defaults to production setting:  fps.amazonaws.com.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountBalance Choreo.
 */
@implementation TMBAmazon_FPS_GetAccountBalance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the current balance of your account.
 */
@implementation TMBAmazon_FPS_GetAccountBalance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_FPS_GetAccountBalance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/FPS/GetAccountBalance"] autorelease];
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
		TMBAmazon_FPS_GetAccountBalance_ResultSet *results = [[[TMBAmazon_FPS_GetAccountBalance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccountBalance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_FPS_GetAccountBalance_Inputs*)newInputSet {
		return [[[TMBAmazon_FPS_GetAccountBalance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBucketCORS Choreo.
 */
@implementation TMBAmazon_S3_GetBucketCORS_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the BucketName input for this Choreo.
	*(required, string) The name of the bucket to retrieve the CORS configuration for.
	 */
	-(void)setBucketName:(NSString*)BucketName {
		[super setInput:@"BucketName" toValue:BucketName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBucketCORS Choreo.
 */
@implementation TMBAmazon_S3_GetBucketCORS_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the CORS (Cross-Origin Resource Sharing) configuration information set for the bucket.
 */
@implementation TMBAmazon_S3_GetBucketCORS

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_S3_GetBucketCORS Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/S3/GetBucketCORS"] autorelease];
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
		TMBAmazon_S3_GetBucketCORS_ResultSet *results = [[[TMBAmazon_S3_GetBucketCORS_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBucketCORS Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_S3_GetBucketCORS_Inputs*)newInputSet {
		return [[[TMBAmazon_S3_GetBucketCORS_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SetTopicAttributes Choreo.
 */
@implementation TMBAmazon_SNS_SetTopicAttributes_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the AttributeName input for this Choreo.
	*(required, string) The name of the attribute you want to modify. Valid values are: Policy and DisplayName.
	 */
	-(void)setAttributeName:(NSString*)AttributeName {
		[super setInput:@"AttributeName" toValue:AttributeName];
	}

	/*!
	 * Set the value of the AttributeValue input for this Choreo.
	*(required, string) The new value for the attribute that you want to update.
	 */
	-(void)setAttributeValue:(NSString*)AttributeValue {
		[super setInput:@"AttributeValue" toValue:AttributeValue];
	}

	/*!
	 * Set the value of the TopicArn input for this Choreo.
	*(required, string) The ARN of the topic that has an attribute that you want to set.
	 */
	-(void)setTopicArn:(NSString*)TopicArn {
		[super setInput:@"TopicArn" toValue:TopicArn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetTopicAttributes Choreo.
 */
@implementation TMBAmazon_SNS_SetTopicAttributes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a topic owner to update the attribute of a topic to a new value.
 */
@implementation TMBAmazon_SNS_SetTopicAttributes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SNS_SetTopicAttributes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SNS/SetTopicAttributes"] autorelease];
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
		TMBAmazon_SNS_SetTopicAttributes_ResultSet *results = [[[TMBAmazon_SNS_SetTopicAttributes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SetTopicAttributes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SNS_SetTopicAttributes_Inputs*)newInputSet {
		return [[[TMBAmazon_SNS_SetTopicAttributes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteMessage Choreo.
 */
@implementation TMBAmazon_SQS_DeleteMessage_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account id associated with the queue. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue that contains the message you want to delete.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}

	/*!
	 * Set the value of the ReceiptHandle input for this Choreo.
	*(required, string) The receipt handle associated with the message you want to delete. This is returned in the RecieveMessage request.
	 */
	-(void)setReceiptHandle:(NSString*)ReceiptHandle {
		[super setInput:@"ReceiptHandle" toValue:ReceiptHandle];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteMessage Choreo.
 */
@implementation TMBAmazon_SQS_DeleteMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a particular message from a specified queue.
 */
@implementation TMBAmazon_SQS_DeleteMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_DeleteMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/DeleteMessage"] autorelease];
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
		TMBAmazon_SQS_DeleteMessage_ResultSet *results = [[[TMBAmazon_SQS_DeleteMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_DeleteMessage_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_DeleteMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ChangeMessageVisibility Choreo.
 */
@implementation TMBAmazon_SQS_ChangeMessageVisibility_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSAccountId input for this Choreo.
	*(required, integer) The AWS account id associated with the queue. Enter account number omitting any dashes.
	 */
	-(void)setAWSAccountId:(NSString*)AWSAccountId {
		[super setInput:@"AWSAccountId" toValue:AWSAccountId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the QueueName input for this Choreo.
	*(required, string) The name of the queue that contains the message.
	 */
	-(void)setQueueName:(NSString*)QueueName {
		[super setInput:@"QueueName" toValue:QueueName];
	}

	/*!
	 * Set the value of the ReceiptHandle input for this Choreo.
	*(required, string) The receipt handle associated with the message you want to modify. This is returned in the RecieveMessage request.
	 */
	-(void)setReceiptHandle:(NSString*)ReceiptHandle {
		[super setInput:@"ReceiptHandle" toValue:ReceiptHandle];
	}

	/*!
	 * Set the value of the VisibilityTimeout input for this Choreo.
	*(required, integer) The new value for the visibility timeout of the message (in seconds).
	 */
	-(void)setVisibilityTimeout:(NSString*)VisibilityTimeout {
		[super setInput:@"VisibilityTimeout" toValue:VisibilityTimeout];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChangeMessageVisibility Choreo.
 */
@implementation TMBAmazon_SQS_ChangeMessageVisibility_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the visibility timeout parameter of a message.
 */
@implementation TMBAmazon_SQS_ChangeMessageVisibility

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_SQS_ChangeMessageVisibility Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/SQS/ChangeMessageVisibility"] autorelease];
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
		TMBAmazon_SQS_ChangeMessageVisibility_ResultSet *results = [[[TMBAmazon_SQS_ChangeMessageVisibility_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ChangeMessageVisibility Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_SQS_ChangeMessageVisibility_Inputs*)newInputSet {
		return [[[TMBAmazon_SQS_ChangeMessageVisibility_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateGroup Choreo.
 */
@implementation TMBAmazon_IAM_UpdateGroup_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the GroupName input for this Choreo.
	*(required, string) The name of the group to update.
	 */
	-(void)setGroupName:(NSString*)GroupName {
		[super setInput:@"GroupName" toValue:GroupName];
	}

	/*!
	 * Set the value of the NewGroupName input for this Choreo.
	*(optional, string) The new name of the group. Include a value here only if you are updating the group's name.
	 */
	-(void)setNewGroupName:(NSString*)NewGroupName {
		[super setInput:@"NewGroupName" toValue:NewGroupName];
	}

	/*!
	 * Set the value of the NewPath input for this Choreo.
	*(optional, string) The new path for the group. Include a value here only if you are changing the user's existing path.
	 */
	-(void)setNewPath:(NSString*)NewPath {
		[super setInput:@"NewPath" toValue:NewPath];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateGroup Choreo.
 */
@implementation TMBAmazon_IAM_UpdateGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the name and/or the path of a specified group.
 */
@implementation TMBAmazon_IAM_UpdateGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_UpdateGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/UpdateGroup"] autorelease];
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
		TMBAmazon_IAM_UpdateGroup_ResultSet *results = [[[TMBAmazon_IAM_UpdateGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_UpdateGroup_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_UpdateGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRolePolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteRolePolicy_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the PolicyName input for this Choreo.
	*(required, string) Name of the policy document.
	 */
	-(void)setPolicyName:(NSString*)PolicyName {
		[super setInput:@"PolicyName" toValue:PolicyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RoleName input for this Choreo.
	*(required, string) Name of the role the associated with the policy.
	 */
	-(void)setRoleName:(NSString*)RoleName {
		[super setInput:@"RoleName" toValue:RoleName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRolePolicy Choreo.
 */
@implementation TMBAmazon_IAM_DeleteRolePolicy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes the specified policy associated with the specified role.
 */
@implementation TMBAmazon_IAM_DeleteRolePolicy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_IAM_DeleteRolePolicy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/IAM/DeleteRolePolicy"] autorelease];
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
		TMBAmazon_IAM_DeleteRolePolicy_ResultSet *results = [[[TMBAmazon_IAM_DeleteRolePolicy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRolePolicy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_IAM_DeleteRolePolicy_Inputs*)newInputSet {
		return [[[TMBAmazon_IAM_DeleteRolePolicy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteVolume Choreo.
 */
@implementation TMBAmazon_EC2_DeleteVolume_Inputs

	/*!
	 * Set the value of the AWSAccessKeyId input for this Choreo.
	*(required, string) The Access Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSAccessKeyId:(NSString*)AWSAccessKeyId {
		[super setInput:@"AWSAccessKeyId" toValue:AWSAccessKeyId];
	}

	/*!
	 * Set the value of the AWSSecretKeyId input for this Choreo.
	*(required, string) The Secret Key ID provided by Amazon Web Services.
	 */
	-(void)setAWSSecretKeyId:(NSString*)AWSSecretKeyId {
		[super setInput:@"AWSSecretKeyId" toValue:AWSSecretKeyId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VolumeId input for this Choreo.
	*(required, string) The id of the volume to delete.
	 */
	-(void)setVolumeId:(NSString*)VolumeId {
		[super setInput:@"VolumeId" toValue:VolumeId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteVolume Choreo.
 */
@implementation TMBAmazon_EC2_DeleteVolume_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Amazon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a volume using a volume id that you specify.
 */
@implementation TMBAmazon_EC2_DeleteVolume

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAmazon_EC2_DeleteVolume Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Amazon/EC2/DeleteVolume"] autorelease];
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
		TMBAmazon_EC2_DeleteVolume_ResultSet *results = [[[TMBAmazon_EC2_DeleteVolume_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteVolume Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAmazon_EC2_DeleteVolume_Inputs*)newInputSet {
		return [[[TMBAmazon_EC2_DeleteVolume_Inputs alloc] init] autorelease];
	}
@end
	