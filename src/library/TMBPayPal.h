/*!
 * @header Temboo iOS SDK PayPal classes
 *
 * Execute Choreographies from the Temboo PayPal bundle.
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

/*! group TMBPayPal.Payments.LookupPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupPayment Choreo.
 */
@interface TMBPayPal_Payments_LookupPayment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setPaymentID:(NSString*)PaymentID;
	-(void)setScope:(NSString*)Scope;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupPayment Choreo.
 */
@interface TMBPayPal_Payments_LookupPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCurrency;
	-(NSString*)getNewAccessToken;
	-(NSString*)getPaymentState;
	-(NSString*)getResponse;
	-(NSString*)getSaleState;
	-(NSString*)getTotal;	
@end

/*!
 * Retrieves a specific payment resource by ID.
 */
@interface TMBPayPal_Payments_LookupPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_LookupPayment_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_LookupPayment Choreo */


/*! group TMBPayPal.AdaptivePayments.ConvertCurrency Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ConvertCurrency Choreo.
 */
@interface TMBPayPal_AdaptivePayments_ConvertCurrency_Inputs : TMBChoreographyInputSet
	-(void)setAmount:(NSString*)Amount;
	-(void)setAppID:(NSString*)AppID;
	-(void)setConvertToCurrency:(NSString*)ConvertToCurrency;
	-(void)setCurrencyCode:(NSString*)CurrencyCode;
	-(void)setPassword:(NSString*)Password;
	-(void)setSignature:(NSString*)Signature;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ConvertCurrency Choreo.
 */
@interface TMBPayPal_AdaptivePayments_ConvertCurrency_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Converts a payment amount from one currency to another.
 */
@interface TMBPayPal_AdaptivePayments_ConvertCurrency : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_AdaptivePayments_ConvertCurrency_Inputs*)newInputSet;
@end

/*! group TMBPayPal.AdaptivePayments_ConvertCurrency Choreo */


/*! group TMBPayPal.Payments.ListPayments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPayments Choreo.
 */
@interface TMBPayPal_Payments_ListPayments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setScope:(NSString*)Scope;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartID:(NSString*)StartID;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPayments Choreo.
 */
@interface TMBPayPal_Payments_ListPayments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of payments.
 */
@interface TMBPayPal_Payments_ListPayments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_ListPayments_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_ListPayments Choreo */


/*! group TMBPayPal.Merchant.GetBalance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBalance Choreo.
 */
@interface TMBPayPal_Merchant_GetBalance_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSignature:(NSString*)Signature;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBalance Choreo.
 */
@interface TMBPayPal_Merchant_GetBalance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the available balance for a PayPal account.
 */
@interface TMBPayPal_Merchant_GetBalance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_GetBalance_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_GetBalance Choreo */


/*! group TMBPayPal.Merchant.AddressVerify Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddressVerify Choreo.
 */
@interface TMBPayPal_Merchant_AddressVerify_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setPostalCode:(NSString*)PostalCode;
	-(void)setSignature:(NSString*)Signature;
	-(void)setStreet:(NSString*)Street;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddressVerify Choreo.
 */
@interface TMBPayPal_Merchant_AddressVerify_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Confirms whether a postal address and postal code match those of the specified PayPal account holder.
 */
@interface TMBPayPal_Merchant_AddressVerify : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_AddressVerify_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_AddressVerify Choreo */


/*! group TMBPayPal.Payments.AcceptPayPalPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AcceptPayPalPayment Choreo.
 */
@interface TMBPayPal_Payments_AcceptPayPalPayment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCancelURL:(NSString*)CancelURL;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setDescription:(NSString*)Description;
	-(void)setReturnURL:(NSString*)ReturnURL;
	-(void)setScope:(NSString*)Scope;
	-(void)setTotal:(NSString*)Total;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AcceptPayPalPayment Choreo.
 */
@interface TMBPayPal_Payments_AcceptPayPalPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getApprovalURL;
	-(NSString*)getNewAccessToken;
	-(NSString*)getPaymentID;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new PayPal payment which can then be approved and executed.
 */
@interface TMBPayPal_Payments_AcceptPayPalPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_AcceptPayPalPayment_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_AcceptPayPalPayment Choreo */


/*! group TMBPayPal.Merchant.TransactionSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TransactionSearch Choreo.
 */
@interface TMBPayPal_Merchant_TransactionSearch_Inputs : TMBChoreographyInputSet
	-(void)setAccount:(NSString*)Account;
	-(void)setAuctionItemNumber:(NSString*)AuctionItemNumber;
	-(void)setCurrencyCode:(NSString*)CurrencyCode;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setInvoiceNumber:(NSString*)InvoiceNumber;
	-(void)setPassword:(NSString*)Password;
	-(void)setReceiptId:(NSString*)ReceiptId;
	-(void)setReceiver:(NSString*)Receiver;
	-(void)setSignature:(NSString*)Signature;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTransactionAmount:(NSString*)TransactionAmount;
	-(void)setTransactionClass:(NSString*)TransactionClass;
	-(void)setTransactionId:(NSString*)TransactionId;
	-(void)setTransactionStatus:(NSString*)TransactionStatus;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TransactionSearch Choreo.
 */
@interface TMBPayPal_Merchant_TransactionSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves transaction history for transactions that meet a specified criteria.
 */
@interface TMBPayPal_Merchant_TransactionSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_TransactionSearch_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_TransactionSearch Choreo */


/*! group TMBPayPal.Merchant.GetTransactionDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionDetails Choreo.
 */
@interface TMBPayPal_Merchant_GetTransactionDetails_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSignature:(NSString*)Signature;
	-(void)setTransactionID:(NSString*)TransactionID;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionDetails Choreo.
 */
@interface TMBPayPal_Merchant_GetTransactionDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a specific transaction.
 */
@interface TMBPayPal_Merchant_GetTransactionDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_GetTransactionDetails_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_GetTransactionDetails Choreo */


/*! group TMBPayPal.Payments.VerifyAllPayments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VerifyAllPayments Choreo.
 */
@interface TMBPayPal_Payments_VerifyAllPayments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppID:(NSString*)AppID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setPassword:(NSString*)Password;
	-(void)setProofOfPayment:(NSString*)ProofOfPayment;
	-(void)setSignature:(NSString*)Signature;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VerifyAllPayments Choreo.
 */
@interface TMBPayPal_Payments_VerifyAllPayments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFailureDescription;
	-(NSString*)getResponse;
	-(NSString*)getVerificationStatus;	
@end

/*!
 * Verifies that a payment has been successfully completed.
 */
@interface TMBPayPal_Payments_VerifyAllPayments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_VerifyAllPayments_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_VerifyAllPayments Choreo */


/*! group TMBPayPal.SaleTransactions.LookupSale Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupSale Choreo.
 */
@interface TMBPayPal_SaleTransactions_LookupSale_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setSaleID:(NSString*)SaleID;
	-(void)setScope:(NSString*)Scope;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupSale Choreo.
 */
@interface TMBPayPal_SaleTransactions_LookupSale_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details about a sale transaction.
 */
@interface TMBPayPal_SaleTransactions_LookupSale : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_SaleTransactions_LookupSale_Inputs*)newInputSet;
@end

/*! group TMBPayPal.SaleTransactions_LookupSale Choreo */


/*! group TMBPayPal.Vault.LookupCreditCard Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupCreditCard Choreo.
 */
@interface TMBPayPal_Vault_LookupCreditCard_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCreditCardID:(NSString*)CreditCardID;
	-(void)setScope:(NSString*)Scope;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupCreditCard Choreo.
 */
@interface TMBPayPal_Vault_LookupCreditCard_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details for a specific stored credit card.
 */
@interface TMBPayPal_Vault_LookupCreditCard : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Vault_LookupCreditCard_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Vault_LookupCreditCard Choreo */


/*! group TMBPayPal.Merchant.MakeIndividualPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MakeIndividualPayment Choreo.
 */
@interface TMBPayPal_Merchant_MakeIndividualPayment_Inputs : TMBChoreographyInputSet
	-(void)setCurrencyCode:(NSString*)CurrencyCode;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setEmailSubject:(NSString*)EmailSubject;
	-(void)setPassword:(NSString*)Password;
	-(void)setPaymentAmount:(NSString*)PaymentAmount;
	-(void)setSignature:(NSString*)Signature;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MakeIndividualPayment Choreo.
 */
@interface TMBPayPal_Merchant_MakeIndividualPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAcknowledged;
	-(NSString*)getCorrelationId;
	-(NSString*)getErrorMessage;
	-(NSString*)getResponse;
	-(NSString*)getTimestamp;	
@end

/*!
 * Retrieves the available balance for a PayPal account.
 */
@interface TMBPayPal_Merchant_MakeIndividualPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_MakeIndividualPayment_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_MakeIndividualPayment Choreo */


/*! group TMBPayPal.Payments.VerifyCreditCardPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VerifyCreditCardPayment Choreo.
 */
@interface TMBPayPal_Payments_VerifyCreditCardPayment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setProofOfPayment:(NSString*)ProofOfPayment;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VerifyCreditCardPayment Choreo.
 */
@interface TMBPayPal_Payments_VerifyCreditCardPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFailureDescription;
	-(NSString*)getResponse;
	-(NSString*)getVerificationStatus;	
@end

/*!
 * Verifies that a credit card payment from the PayPal REST API has been completed successfully.
 */
@interface TMBPayPal_Payments_VerifyCreditCardPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_VerifyCreditCardPayment_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_VerifyCreditCardPayment Choreo */


/*! group TMBPayPal.Payments.ExecutePayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ExecutePayment Choreo.
 */
@interface TMBPayPal_Payments_ExecutePayment_Inputs : TMBChoreographyInputSet
	-(void)setPayerID:(NSString*)PayerID;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setPaymentID:(NSString*)PaymentID;
	-(void)setScope:(NSString*)Scope;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ExecutePayment Choreo.
 */
@interface TMBPayPal_Payments_ExecutePayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	-(NSString*)getSaleID;	
@end

/*!
 * Executes a PayPal payment that has been accepted and approved.
 */
@interface TMBPayPal_Payments_ExecutePayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_ExecutePayment_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_ExecutePayment Choreo */


/*! group TMBPayPal.SaleTransactions.RefundSale Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefundSale Choreo.
 */
@interface TMBPayPal_SaleTransactions_RefundSale_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setSaleID:(NSString*)SaleID;
	-(void)setScope:(NSString*)Scope;
	-(void)setTotal:(NSString*)Total;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundSale Choreo.
 */
@interface TMBPayPal_SaleTransactions_RefundSale_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getRefundID;
	-(NSString*)getResponse;	
@end

/*!
 * Allows your application to refund a completed payment.
 */
@interface TMBPayPal_SaleTransactions_RefundSale : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_SaleTransactions_RefundSale_Inputs*)newInputSet;
@end

/*! group TMBPayPal.SaleTransactions_RefundSale Choreo */


/*! group TMBPayPal.AdaptivePayments.PaymentDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PaymentDetails Choreo.
 */
@interface TMBPayPal_AdaptivePayments_PaymentDetails_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPassword:(NSString*)Password;
	-(void)setPayKey:(NSString*)PayKey;
	-(void)setSignature:(NSString*)Signature;
	-(void)setTrackingID:(NSString*)TrackingID;
	-(void)setTransactionID:(NSString*)TransactionID;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PaymentDetails Choreo.
 */
@interface TMBPayPal_AdaptivePayments_PaymentDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccountID;
	-(NSString*)getAmount;
	-(NSString*)getCurrencyCode;
	-(NSString*)getEmail;
	-(NSString*)getResponse;
	-(NSString*)getStatus;
	-(NSString*)getTransactionStatus;	
@end

/*!
 * Retrieves information about a specific payment.
 */
@interface TMBPayPal_AdaptivePayments_PaymentDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_AdaptivePayments_PaymentDetails_Inputs*)newInputSet;
@end

/*! group TMBPayPal.AdaptivePayments_PaymentDetails Choreo */


/*! group TMBPayPal.Payments.VerifyPayPalPayment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VerifyPayPalPayment Choreo.
 */
@interface TMBPayPal_Payments_VerifyPayPalPayment_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setPassword:(NSString*)Password;
	-(void)setProofOfPayment:(NSString*)ProofOfPayment;
	-(void)setSignature:(NSString*)Signature;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VerifyPayPalPayment Choreo.
 */
@interface TMBPayPal_Payments_VerifyPayPalPayment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFailureDescription;
	-(NSString*)getResponse;
	-(NSString*)getVerificationStatus;	
@end

/*!
 * Verifies that a PayPal payment from the Adaptive Payments API has been successfully completed.
 */
@interface TMBPayPal_Payments_VerifyPayPalPayment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Payments_VerifyPayPalPayment_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Payments_VerifyPayPalPayment Choreo */


/*! group TMBPayPal.Merchant.RefundTransaction Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefundTransaction Choreo.
 */
@interface TMBPayPal_Merchant_RefundTransaction_Inputs : TMBChoreographyInputSet
	-(void)setAmount:(NSString*)Amount;
	-(void)setCurrencyCode:(NSString*)CurrencyCode;
	-(void)setInvoiceID:(NSString*)InvoiceID;
	-(void)setNote:(NSString*)Note;
	-(void)setPassword:(NSString*)Password;
	-(void)setRefundType:(NSString*)RefundType;
	-(void)setSignature:(NSString*)Signature;
	-(void)setTransactionID:(NSString*)TransactionID;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundTransaction Choreo.
 */
@interface TMBPayPal_Merchant_RefundTransaction_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Issue a refund to a PayPal buyer by specifying a transaction ID.
 */
@interface TMBPayPal_Merchant_RefundTransaction : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_RefundTransaction_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_RefundTransaction Choreo */


/*! group TMBPayPal.Merchant.MassPayments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MassPayments Choreo.
 */
@interface TMBPayPal_Merchant_MassPayments_Inputs : TMBChoreographyInputSet
	-(void)setInputFile:(NSString*)InputFile;
	-(void)setEmailSubject:(NSString*)EmailSubject;
	-(void)setInputFormat:(NSString*)InputFormat;
	-(void)setPassword:(NSString*)Password;
	-(void)setSignature:(NSString*)Signature;
	-(void)setUseSandbox:(NSString*)UseSandbox;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MassPayments Choreo.
 */
@interface TMBPayPal_Merchant_MassPayments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResult;	
@end

/*!
 * Generates multiple payments from your PayPal Premier account or Business account to existing PayPal account holders.
 */
@interface TMBPayPal_Merchant_MassPayments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Merchant_MassPayments_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Merchant_MassPayments Choreo */


/*! group TMBPayPal.OAuth.GetAccessToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccessToken Choreo.
 */
@interface TMBPayPal_OAuth_GetAccessToken_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setScope:(NSString*)Scope;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccessToken Choreo.
 */
@interface TMBPayPal_OAuth_GetAccessToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an Access Token from PayPal.
 */
@interface TMBPayPal_OAuth_GetAccessToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_OAuth_GetAccessToken_Inputs*)newInputSet;
@end

/*! group TMBPayPal.OAuth_GetAccessToken Choreo */


/*! group TMBPayPal.Refunds.LookupRefund Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupRefund Choreo.
 */
@interface TMBPayPal_Refunds_LookupRefund_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefundID:(NSString*)RefundID;
	-(void)setScope:(NSString*)Scope;
	-(void)setUseSandbox:(NSString*)UseSandbox;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupRefund Choreo.
 */
@interface TMBPayPal_Refunds_LookupRefund_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details about a specific refund.
 */
@interface TMBPayPal_Refunds_LookupRefund : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPayPal_Refunds_LookupRefund_Inputs*)newInputSet;
@end

/*! group TMBPayPal.Refunds_LookupRefund Choreo */
