/*!
 * @header Temboo iOS SDK AuthorizeNet classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBAuthorizeNet.TransactionDetailsAPI.GetUnsettledTransactionList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUnsettledTransactionList Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUnsettledTransactionList Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns limited details for unsettled transactions.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetUnsettledTransactionList_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.TransactionDetailsAPI_GetUnsettledTransactionList Choreo */


/*! group TMBAuthorizeNet.CustomerInformationManager.GetCustomerShippingAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerShippingAddress Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setCustomerAddressId:(NSString*)CustomerAddressId;
	-(void)setCustomerProfileId:(NSString*)CustomerProfileId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerShippingAddress Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a customer shipping address for an existing customer profile.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerShippingAddress_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.CustomerInformationManager_GetCustomerShippingAddress Choreo */


/*! group TMBAuthorizeNet.TransactionDetailsAPI.GetBatchStatistics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBatchStatistics Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setBatchId:(NSString*)BatchId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBatchStatistics Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns batch statistics by payment type for a specified batch ID.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetBatchStatistics_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.TransactionDetailsAPI_GetBatchStatistics Choreo */


/*! group TMBAuthorizeNet.AutomatedRecurringBilling.CancelSubscription Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CancelSubscription Choreo.
 */
@interface TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setRefId:(NSString*)RefId;
	-(void)setSubscriptionId:(NSString*)SubscriptionId;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelSubscription Choreo.
 */
@interface TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Cancels an existing subscription.
 */
@interface TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_AutomatedRecurringBilling_CancelSubscription_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.AutomatedRecurringBilling_CancelSubscription Choreo */


/*! group TMBAuthorizeNet.TransactionDetailsAPI.GetSettledBatchList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSettledBatchList Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setFirstSettlementDate:(NSString*)FirstSettlementDate;
	-(void)setIncludeStatistics:(NSString*)IncludeStatistics;
	-(void)setLastSettlementDate:(NSString*)LastSettlementDate;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSettledBatchList Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns data about a settled batch including: Batch ID, Settlement Time, and Settlement State, and Batch Statistics by payment type.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetSettledBatchList_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.TransactionDetailsAPI_GetSettledBatchList Choreo */


/*! group TMBAuthorizeNet.TransactionDetailsAPI.GetTransactionDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionDetails Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionId:(NSString*)TransactionId;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionDetails Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns transaction details for a specified transaction ID.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionDetails_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.TransactionDetailsAPI_GetTransactionDetails Choreo */


/*! group TMBAuthorizeNet.CustomerInformationManager.GetCustomerProfileIds Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerProfileIds Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerProfileIds Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all existing customer profile IDs.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfileIds_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.CustomerInformationManager_GetCustomerProfileIds Choreo */


/*! group TMBAuthorizeNet.CustomerInformationManager.GetCustomerPaymentProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerPaymentProfile Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setCustomerPaymentProfileId:(NSString*)CustomerPaymentProfileId;
	-(void)setCustomerProfileId:(NSString*)CustomerProfileId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerPaymentProfile Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a payment profile associated with an existing customer profile.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerPaymentProfile_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.CustomerInformationManager_GetCustomerPaymentProfile Choreo */


/*! group TMBAuthorizeNet.CustomerInformationManager.GetCustomerProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCustomerProfile Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setCustomerProfileId:(NSString*)CustomerProfileId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCustomerProfile Choreo.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an existing customer profile by id with relevant payment profiles and shipping addresses.
 */
@interface TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_CustomerInformationManager_GetCustomerProfile_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.CustomerInformationManager_GetCustomerProfile Choreo */


/*! group TMBAuthorizeNet.AutomatedRecurringBilling.GetSubscriptionStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSubscriptionStatus Choreo.
 */
@interface TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setRefId:(NSString*)RefId;
	-(void)setSubscriptionId:(NSString*)SubscriptionId;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSubscriptionStatus Choreo.
 */
@interface TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns status information for a specified subscription.
 */
@interface TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_AutomatedRecurringBilling_GetSubscriptionStatus_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.AutomatedRecurringBilling_GetSubscriptionStatus Choreo */


/*! group TMBAuthorizeNet.TransactionDetailsAPI.GetTransactionList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionList Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_Inputs : TMBChoreographyInputSet
	-(void)setAPILoginId:(NSString*)APILoginId;
	-(void)setBatchId:(NSString*)BatchId;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setTransactionKey:(NSString*)TransactionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionList Choreo.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of transactions and their details for a specified batch ID.
 */
@interface TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAuthorizeNet_TransactionDetailsAPI_GetTransactionList_Inputs*)newInputSet;
@end

/*! group TMBAuthorizeNet.TransactionDetailsAPI_GetTransactionList Choreo */
