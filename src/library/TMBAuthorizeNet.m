/*!
 * @TMBAuthorizeNet.m
 *
 * Execute Choreographies from the Temboo AuthorizeNet bundle.
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

#import "TMBAuthorizeNet.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetUnsettledTransactionList Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUnsettledTransactionList Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns limited details for unsettled transactions.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/TransactionDetailsAPI/GetUnsettledTransactionList"] autorelease];
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
		TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_ResultSet *results = [[[TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUnsettledTransactionList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerShippingAddress Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the CustomerAddressId input for this Choreo.
	*(required, integer) The id for the shipping profile you want to retrieve.
	 */
	-(void)setCustomerAddressId:(NSString*)CustomerAddressId {
		[super setInput:@"CustomerAddressId" toValue:CustomerAddressId];
	}

	/*!
	 * Set the value of the CustomerProfileId input for this Choreo.
	*(required, integer) The id of the customer who's shipping address you want to return.
	 */
	-(void)setCustomerProfileId:(NSString*)CustomerProfileId {
		[super setInput:@"CustomerProfileId" toValue:CustomerProfileId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerShippingAddress Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a customer shipping address for an existing customer profile.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/CustomerInformationManager/GetCustomerShippingAddress"] autorelease];
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
		TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_ResultSet *results = [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCustomerShippingAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBatchStatistics Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the BatchId input for this Choreo.
	*(required, integer) The id of the batch that you want to retrieve a list of transactions for.
	 */
	-(void)setBatchId:(NSString*)BatchId {
		[super setInput:@"BatchId" toValue:BatchId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBatchStatistics Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns batch statistics by payment type for a specified batch ID.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/TransactionDetailsAPI/GetBatchStatistics"] autorelease];
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
		TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_ResultSet *results = [[[TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBatchStatistics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CancelSubscription Choreo.
 */
@implementation TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the RefId input for this Choreo.
	*(optional, string) The merchant assigned reference id for the subscription.
	 */
	-(void)setRefId:(NSString*)RefId {
		[super setInput:@"RefId" toValue:RefId];
	}

	/*!
	 * Set the value of the SubscriptionId input for this Choreo.
	*(required, integer) The id of the subscription that you want to cancel.
	 */
	-(void)setSubscriptionId:(NSString*)SubscriptionId {
		[super setInput:@"SubscriptionId" toValue:SubscriptionId];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelSubscription Choreo.
 */
@implementation TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Cancels an existing subscription.
 */
@implementation TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/AutomatedRecurringBilling/CancelSubscription"] autorelease];
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
		TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_ResultSet *results = [[[TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CancelSubscription Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSettledBatchList Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the FirstSettlementDate input for this Choreo.
	*(required, date) Can be an epoch timestamp in milliseconds or formatted like 2010-12-01T00:00:00Z.
	 */
	-(void)setFirstSettlementDate:(NSString*)FirstSettlementDate {
		[super setInput:@"FirstSettlementDate" toValue:FirstSettlementDate];
	}

	/*!
	 * Set the value of the IncludeStatistics input for this Choreo.
	*(optional, boolean) When 1 is specified, batch statistics by payment type are returned. Defaults to 1.
	 */
	-(void)setIncludeStatistics:(NSString*)IncludeStatistics {
		[super setInput:@"IncludeStatistics" toValue:IncludeStatistics];
	}

	/*!
	 * Set the value of the LastSettlementDate input for this Choreo.
	*(required, date) Can be an epoch timestamp in milliseconds or formatted like 2010-12-01T00:00:00Z.
	 */
	-(void)setLastSettlementDate:(NSString*)LastSettlementDate {
		[super setInput:@"LastSettlementDate" toValue:LastSettlementDate];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSettledBatchList Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns data about a settled batch including: Batch ID, Settlement Time, and Settlement State, and Batch Statistics by payment type.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/TransactionDetailsAPI/GetSettledBatchList"] autorelease];
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
		TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_ResultSet *results = [[[TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSettledBatchList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionDetails Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionId input for this Choreo.
	*(required, integer) The id of the transaction that you want to retrieve information for.
	 */
	-(void)setTransactionId:(NSString*)TransactionId {
		[super setInput:@"TransactionId" toValue:TransactionId];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionDetails Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns transaction details for a specified transaction ID.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/TransactionDetailsAPI/GetTransactionDetails"] autorelease];
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
		TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_ResultSet *results = [[[TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTransactionDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerProfileIds Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerProfileIds Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all existing customer profile IDs.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/CustomerInformationManager/GetCustomerProfileIds"] autorelease];
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
		TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_ResultSet *results = [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCustomerProfileIds Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerPaymentProfile Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the CustomerPaymentProfileId input for this Choreo.
	*(required, integer) The id for the payment profile you want to retrieve.
	 */
	-(void)setCustomerPaymentProfileId:(NSString*)CustomerPaymentProfileId {
		[super setInput:@"CustomerPaymentProfileId" toValue:CustomerPaymentProfileId];
	}

	/*!
	 * Set the value of the CustomerProfileId input for this Choreo.
	*(required, integer) The id of the customer who's payment profile you want to return.
	 */
	-(void)setCustomerProfileId:(NSString*)CustomerProfileId {
		[super setInput:@"CustomerProfileId" toValue:CustomerProfileId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerPaymentProfile Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a payment profile associated with an existing customer profile.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/CustomerInformationManager/GetCustomerPaymentProfile"] autorelease];
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
		TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_ResultSet *results = [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCustomerPaymentProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerProfile Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the CustomerProfileId input for this Choreo.
	*(required, integer) The id of the customer who's profile you want to return.
	 */
	-(void)setCustomerProfileId:(NSString*)CustomerProfileId {
		[super setInput:@"CustomerProfileId" toValue:CustomerProfileId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerProfile Choreo.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an existing customer profile by id with relevant payment profiles and shipping addresses.
 */
@implementation TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/CustomerInformationManager/GetCustomerProfile"] autorelease];
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
		TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_ResultSet *results = [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCustomerProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSubscriptionStatus Choreo.
 */
@implementation TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the RefId input for this Choreo.
	*(optional, string) The merchant assigned reference id for the subscription.
	 */
	-(void)setRefId:(NSString*)RefId {
		[super setInput:@"RefId" toValue:RefId];
	}

	/*!
	 * Set the value of the SubscriptionId input for this Choreo.
	*(required, integer) The id of the subscription that you want to retrieve the status for.
	 */
	-(void)setSubscriptionId:(NSString*)SubscriptionId {
		[super setInput:@"SubscriptionId" toValue:SubscriptionId];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSubscriptionStatus Choreo.
 */
@implementation TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns status information for a specified subscription.
 */
@implementation TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/AutomatedRecurringBilling/GetSubscriptionStatus"] autorelease];
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
		TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_ResultSet *results = [[[TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSubscriptionStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionList Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_Inputs

	/*!
	 * Set the value of the APILoginId input for this Choreo.
	*(required, string) The API Login Id provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setAPILoginId:(NSString*)APILoginId {
		[super setInput:@"APILoginId" toValue:APILoginId];
	}

	/*!
	 * Set the value of the BatchId input for this Choreo.
	*(required, integer) The id of the batch that you want to retrieve a list of transactions for.
	 */
	-(void)setBatchId:(NSString*)BatchId {
		[super setInput:@"BatchId" toValue:BatchId];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to api.authorize.net when running in production. Defaults to apitest.authorize.net for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the TransactionKey input for this Choreo.
	*(required, string) The TransactionKey provided by Authorize.net when signing up for a developer account.
	 */
	-(void)setTransactionKey:(NSString*)TransactionKey {
		[super setInput:@"TransactionKey" toValue:TransactionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionList Choreo.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Authorize.net.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of transactions and their details for a specified batch ID.
 */
@implementation TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AuthorizeNet/TransactionDetailsAPI/GetTransactionList"] autorelease];
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
		TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_ResultSet *results = [[[TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTransactionList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_Inputs*)newInputSet {
		return [[[TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_Inputs alloc] init] autorelease];
	}
@end
	