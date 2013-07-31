/*!
 * @header Temboo iOS SDK Stripe classes
 *
 * Execute Choreographies from the Temboo Stripe bundle.
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

/*! group TMBStripe.InvoiceItems.ListAllInvoiceItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllInvoiceItems Choreo.
 */
@interface TMBStripe_InvoiceItems_ListAllInvoiceItems_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllInvoiceItems Choreo.
 */
@interface TMBStripe_InvoiceItems_ListAllInvoiceItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of all invoice items or a list of invoice items for a specified customer.
 */
@interface TMBStripe_InvoiceItems_ListAllInvoiceItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_InvoiceItems_ListAllInvoiceItems_Inputs*)newInputSet;
@end

/*! group TMBStripe.InvoiceItems_ListAllInvoiceItems Choreo */


/*! group TMBStripe.Invoices.UpdateInvoice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateInvoice Choreo.
 */
@interface TMBStripe_Invoices_UpdateInvoice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setClosed:(NSString*)Closed;
	-(void)setInvoiceID:(NSString*)InvoiceID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateInvoice Choreo.
 */
@interface TMBStripe_Invoices_UpdateInvoice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates an existing invoice.
 */
@interface TMBStripe_Invoices_UpdateInvoice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_UpdateInvoice_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_UpdateInvoice Choreo */


/*! group TMBStripe.Subscriptions.UpdateSubscription Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateSubscription Choreo.
 */
@interface TMBStripe_Subscriptions_UpdateSubscription_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCoupon:(NSString*)Coupon;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setPlan:(NSString*)Plan;
	-(void)setProrate:(NSString*)Prorate;
	-(void)setToken:(NSString*)Token;
	-(void)setTrialEnd:(NSString*)TrialEnd;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateSubscription Choreo.
 */
@interface TMBStripe_Subscriptions_UpdateSubscription_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Subscribes a customer to a specified plan.
 */
@interface TMBStripe_Subscriptions_UpdateSubscription : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Subscriptions_UpdateSubscription_Inputs*)newInputSet;
@end

/*! group TMBStripe.Subscriptions_UpdateSubscription Choreo */


/*! group TMBStripe.Customers.ListAllCustomers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCustomers Choreo.
 */
@interface TMBStripe_Customers_ListAllCustomers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCustomers Choreo.
 */
@interface TMBStripe_Customers_ListAllCustomers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of all customers. 
 */
@interface TMBStripe_Customers_ListAllCustomers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Customers_ListAllCustomers_Inputs*)newInputSet;
@end

/*! group TMBStripe.Customers_ListAllCustomers Choreo */


/*! group TMBStripe.Plans.RetrievePlan Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrievePlan Choreo.
 */
@interface TMBStripe_Plans_RetrievePlan_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPlanID:(NSString*)PlanID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrievePlan Choreo.
 */
@interface TMBStripe_Plans_RetrievePlan_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves plan details with a specified plan id.
 */
@interface TMBStripe_Plans_RetrievePlan : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Plans_RetrievePlan_Inputs*)newInputSet;
@end

/*! group TMBStripe.Plans_RetrievePlan Choreo */


/*! group TMBStripe.Customers.CreateCustomerWithToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCustomerWithToken Choreo.
 */
@interface TMBStripe_Customers_CreateCustomerWithToken_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountBalance:(NSString*)AccountBalance;
	-(void)setCoupon:(NSString*)Coupon;
	-(void)setDescription:(NSString*)Description;
	-(void)setEmail:(NSString*)Email;
	-(void)setPlan:(NSString*)Plan;
	-(void)setQuantity:(NSString*)Quantity;
	-(void)setToken:(NSString*)Token;
	-(void)setTrialEnd:(NSString*)TrialEnd;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCustomerWithToken Choreo.
 */
@interface TMBStripe_Customers_CreateCustomerWithToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a new customer record using a Stripe generated token that represents the customer's credit card information.
 */
@interface TMBStripe_Customers_CreateCustomerWithToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Customers_CreateCustomerWithToken_Inputs*)newInputSet;
@end

/*! group TMBStripe.Customers_CreateCustomerWithToken Choreo */


/*! group TMBStripe.Coupons.DeleteCoupon Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCoupon Choreo.
 */
@interface TMBStripe_Coupons_DeleteCoupon_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCouponID:(NSString*)CouponID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCoupon Choreo.
 */
@interface TMBStripe_Coupons_DeleteCoupon_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a specified coupon.
 */
@interface TMBStripe_Coupons_DeleteCoupon : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Coupons_DeleteCoupon_Inputs*)newInputSet;
@end

/*! group TMBStripe.Coupons_DeleteCoupon Choreo */


/*! group TMBStripe.Invoices.CreateInvoice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateInvoice Choreo.
 */
@interface TMBStripe_Invoices_CreateInvoice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomerID:(NSString*)CustomerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInvoice Choreo.
 */
@interface TMBStripe_Invoices_CreateInvoice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a new invoice for a customer.
 */
@interface TMBStripe_Invoices_CreateInvoice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_CreateInvoice_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_CreateInvoice Choreo */


/*! group TMBStripe.Invoices.RetrieveInvoice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvoice Choreo.
 */
@interface TMBStripe_Invoices_RetrieveInvoice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setInvoiceID:(NSString*)InvoiceID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvoice Choreo.
 */
@interface TMBStripe_Invoices_RetrieveInvoice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves invoice details using the invoice id.
 */
@interface TMBStripe_Invoices_RetrieveInvoice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_RetrieveInvoice_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_RetrieveInvoice Choreo */


/*! group TMBStripe.Charges.CreateNewChargeForExistingCustomer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateNewChargeForExistingCustomer Choreo.
 */
@interface TMBStripe_Charges_CreateNewChargeForExistingCustomer_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setDescription:(NSString*)Description;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateNewChargeForExistingCustomer Choreo.
 */
@interface TMBStripe_Charges_CreateNewChargeForExistingCustomer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a new charge object in order to charge a credit card for an existing customer.
 */
@interface TMBStripe_Charges_CreateNewChargeForExistingCustomer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Charges_CreateNewChargeForExistingCustomer_Inputs*)newInputSet;
@end

/*! group TMBStripe.Charges_CreateNewChargeForExistingCustomer Choreo */


/*! group TMBStripe.Customers.RetrieveCustomer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCustomer Choreo.
 */
@interface TMBStripe_Customers_RetrieveCustomer_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomerID:(NSString*)CustomerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCustomer Choreo.
 */
@interface TMBStripe_Customers_RetrieveCustomer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the details of an existing customer record.
 */
@interface TMBStripe_Customers_RetrieveCustomer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Customers_RetrieveCustomer_Inputs*)newInputSet;
@end

/*! group TMBStripe.Customers_RetrieveCustomer Choreo */


/*! group TMBStripe.Events.ListAllEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllEvents Choreo.
 */
@interface TMBStripe_Events_ListAllEvents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setCreated:(NSString*)Created;
	-(void)setGreaterThanEqualTo:(NSString*)GreaterThanEqualTo;
	-(void)setGreaterThan:(NSString*)GreaterThan;
	-(void)setLessThanEqualTo:(NSString*)LessThanEqualTo;
	-(void)setLessThan:(NSString*)LessThan;
	-(void)setOffset:(NSString*)Offset;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllEvents Choreo.
 */
@interface TMBStripe_Events_ListAllEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of events that have happened in your account.
 */
@interface TMBStripe_Events_ListAllEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Events_ListAllEvents_Inputs*)newInputSet;
@end

/*! group TMBStripe.Events_ListAllEvents Choreo */


/*! group TMBStripe.InvoiceItems.RetrieveInvoiceItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_RetrieveInvoiceItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setInvoiceItemID:(NSString*)InvoiceItemID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_RetrieveInvoiceItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves invoice items with a specified id.
 */
@interface TMBStripe_InvoiceItems_RetrieveInvoiceItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_InvoiceItems_RetrieveInvoiceItem_Inputs*)newInputSet;
@end

/*! group TMBStripe.InvoiceItems_RetrieveInvoiceItem Choreo */


/*! group TMBStripe.Charges.ListAllCharges Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCharges Choreo.
 */
@interface TMBStripe_Charges_ListAllCharges_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCharges Choreo.
 */
@interface TMBStripe_Charges_ListAllCharges_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of all charges or a list of charges for a specified customer.
 */
@interface TMBStripe_Charges_ListAllCharges : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Charges_ListAllCharges_Inputs*)newInputSet;
@end

/*! group TMBStripe.Charges_ListAllCharges Choreo */


/*! group TMBStripe.Plans.UpdatePlan Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePlan Choreo.
 */
@interface TMBStripe_Plans_UpdatePlan_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPlanID:(NSString*)PlanID;
	-(void)setPlanName:(NSString*)PlanName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePlan Choreo.
 */
@interface TMBStripe_Plans_UpdatePlan_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates the name of an existing plan.
 */
@interface TMBStripe_Plans_UpdatePlan : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Plans_UpdatePlan_Inputs*)newInputSet;
@end

/*! group TMBStripe.Plans_UpdatePlan Choreo */


/*! group TMBStripe.InvoiceItems.CreateInvoiceItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_CreateInvoiceItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setDescription:(NSString*)Description;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_CreateInvoiceItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Adds a charge or credit to the customer's next invoice.
 */
@interface TMBStripe_InvoiceItems_CreateInvoiceItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_InvoiceItems_CreateInvoiceItem_Inputs*)newInputSet;
@end

/*! group TMBStripe.InvoiceItems_CreateInvoiceItem Choreo */


/*! group TMBStripe.Plans.ListAllPlans Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllPlans Choreo.
 */
@interface TMBStripe_Plans_ListAllPlans_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllPlans Choreo.
 */
@interface TMBStripe_Plans_ListAllPlans_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of all plans. 
 */
@interface TMBStripe_Plans_ListAllPlans : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Plans_ListAllPlans_Inputs*)newInputSet;
@end

/*! group TMBStripe.Plans_ListAllPlans Choreo */


/*! group TMBStripe.Invoices.PayInvoice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PayInvoice Choreo.
 */
@interface TMBStripe_Invoices_PayInvoice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setInvoiceID:(NSString*)InvoiceID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PayInvoice Choreo.
 */
@interface TMBStripe_Invoices_PayInvoice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Allows your application to attempt to collect payment on an invoice outside of the normal recurring payment schedule.
 */
@interface TMBStripe_Invoices_PayInvoice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_PayInvoice_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_PayInvoice Choreo */


/*! group TMBStripe.Subscriptions.CancelSubscription Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CancelSubscription Choreo.
 */
@interface TMBStripe_Subscriptions_CancelSubscription_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAtPeriodEnd:(NSString*)AtPeriodEnd;
	-(void)setCustomerID:(NSString*)CustomerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelSubscription Choreo.
 */
@interface TMBStripe_Subscriptions_CancelSubscription_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Cancels an existing subscription.
 */
@interface TMBStripe_Subscriptions_CancelSubscription : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Subscriptions_CancelSubscription_Inputs*)newInputSet;
@end

/*! group TMBStripe.Subscriptions_CancelSubscription Choreo */


/*! group TMBStripe.Coupons.ListAllCoupons Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCoupons Choreo.
 */
@interface TMBStripe_Coupons_ListAllCoupons_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCoupons Choreo.
 */
@interface TMBStripe_Coupons_ListAllCoupons_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a a list of your coupons.
 */
@interface TMBStripe_Coupons_ListAllCoupons : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Coupons_ListAllCoupons_Inputs*)newInputSet;
@end

/*! group TMBStripe.Coupons_ListAllCoupons Choreo */


/*! group TMBStripe.Tokens.RetrieveCardToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCardToken Choreo.
 */
@interface TMBStripe_Tokens_RetrieveCardToken_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setTokenID:(NSString*)TokenID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCardToken Choreo.
 */
@interface TMBStripe_Tokens_RetrieveCardToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a card token based on a given id.
 */
@interface TMBStripe_Tokens_RetrieveCardToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Tokens_RetrieveCardToken_Inputs*)newInputSet;
@end

/*! group TMBStripe.Tokens_RetrieveCardToken Choreo */


/*! group TMBStripe.Charges.RefundCharge Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefundCharge Choreo.
 */
@interface TMBStripe_Charges_RefundCharge_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setChargeID:(NSString*)ChargeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundCharge Choreo.
 */
@interface TMBStripe_Charges_RefundCharge_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Issues a refund of an existing credit card charge.
 */
@interface TMBStripe_Charges_RefundCharge : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Charges_RefundCharge_Inputs*)newInputSet;
@end

/*! group TMBStripe.Charges_RefundCharge Choreo */


/*! group TMBStripe.Invoices.ListAllInvoices Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllInvoices Choreo.
 */
@interface TMBStripe_Invoices_ListAllInvoices_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllInvoices Choreo.
 */
@interface TMBStripe_Invoices_ListAllInvoices_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of all invoices or a list of invoices for a specified customer.
 */
@interface TMBStripe_Invoices_ListAllInvoices : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_ListAllInvoices_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_ListAllInvoices Choreo */


/*! group TMBStripe.Customers.UpdateCustomer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCustomer Choreo.
 */
@interface TMBStripe_Customers_UpdateCustomer_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountBalance:(NSString*)AccountBalance;
	-(void)setCoupon:(NSString*)Coupon;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setDescription:(NSString*)Description;
	-(void)setEmail:(NSString*)Email;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCustomer Choreo.
 */
@interface TMBStripe_Customers_UpdateCustomer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates a specified customer record.
 */
@interface TMBStripe_Customers_UpdateCustomer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Customers_UpdateCustomer_Inputs*)newInputSet;
@end

/*! group TMBStripe.Customers_UpdateCustomer Choreo */


/*! group TMBStripe.Coupons.RetrieveCoupon Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCoupon Choreo.
 */
@interface TMBStripe_Coupons_RetrieveCoupon_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCouponID:(NSString*)CouponID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCoupon Choreo.
 */
@interface TMBStripe_Coupons_RetrieveCoupon_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a coupon with specified coupon id.
 */
@interface TMBStripe_Coupons_RetrieveCoupon : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Coupons_RetrieveCoupon_Inputs*)newInputSet;
@end

/*! group TMBStripe.Coupons_RetrieveCoupon Choreo */


/*! group TMBStripe.Customers.DeleteCustomer Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCustomer Choreo.
 */
@interface TMBStripe_Customers_DeleteCustomer_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomerID:(NSString*)CustomerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCustomer Choreo.
 */
@interface TMBStripe_Customers_DeleteCustomer_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a specified customer record.
 */
@interface TMBStripe_Customers_DeleteCustomer : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Customers_DeleteCustomer_Inputs*)newInputSet;
@end

/*! group TMBStripe.Customers_DeleteCustomer Choreo */


/*! group TMBStripe.InvoiceItems.UpdateInvoiceItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_UpdateInvoiceItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setDescription:(NSString*)Description;
	-(void)setInvoiceItemID:(NSString*)InvoiceItemID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_UpdateInvoiceItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates the amount or description of an existing invoice item.
 */
@interface TMBStripe_InvoiceItems_UpdateInvoiceItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_InvoiceItems_UpdateInvoiceItem_Inputs*)newInputSet;
@end

/*! group TMBStripe.InvoiceItems_UpdateInvoiceItem Choreo */


/*! group TMBStripe.Events.RetrieveEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEvent Choreo.
 */
@interface TMBStripe_Events_RetrieveEvent_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEventID:(NSString*)EventID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEvent Choreo.
 */
@interface TMBStripe_Events_RetrieveEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the details of an event.
 */
@interface TMBStripe_Events_RetrieveEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Events_RetrieveEvent_Inputs*)newInputSet;
@end

/*! group TMBStripe.Events_RetrieveEvent Choreo */


/*! group TMBStripe.Invoices.RetrieveUpcomingInvoice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUpcomingInvoice Choreo.
 */
@interface TMBStripe_Invoices_RetrieveUpcomingInvoice_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCustomerID:(NSString*)CustomerID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUpcomingInvoice Choreo.
 */
@interface TMBStripe_Invoices_RetrieveUpcomingInvoice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a customer's upcoming invoice.
 */
@interface TMBStripe_Invoices_RetrieveUpcomingInvoice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_RetrieveUpcomingInvoice_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_RetrieveUpcomingInvoice Choreo */


/*! group TMBStripe.Invoices.RetrieveInvoiceLineItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvoiceLineItems Choreo.
 */
@interface TMBStripe_Invoices_RetrieveInvoiceLineItems_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setCustomerID:(NSString*)CustomerID;
	-(void)setInvoiceID:(NSString*)InvoiceID;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvoiceLineItems Choreo.
 */
@interface TMBStripe_Invoices_RetrieveInvoiceLineItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a full list of line items contained in an invoice.
 */
@interface TMBStripe_Invoices_RetrieveInvoiceLineItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Invoices_RetrieveInvoiceLineItems_Inputs*)newInputSet;
@end

/*! group TMBStripe.Invoices_RetrieveInvoiceLineItems Choreo */


/*! group TMBStripe.Plans.CreatePlan Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePlan Choreo.
 */
@interface TMBStripe_Plans_CreatePlan_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setInterval:(NSString*)Interval;
	-(void)setPlanID:(NSString*)PlanID;
	-(void)setPlanName:(NSString*)PlanName;
	-(void)setTrialPeriodDays:(NSString*)TrialPeriodDays;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePlan Choreo.
 */
@interface TMBStripe_Plans_CreatePlan_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a subscription plan
 */
@interface TMBStripe_Plans_CreatePlan : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Plans_CreatePlan_Inputs*)newInputSet;
@end

/*! group TMBStripe.Plans_CreatePlan Choreo */


/*! group TMBStripe.Charges.RetrieveCharge Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCharge Choreo.
 */
@interface TMBStripe_Charges_RetrieveCharge_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setChargeID:(NSString*)ChargeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCharge Choreo.
 */
@interface TMBStripe_Charges_RetrieveCharge_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the details of an existing charge.
 */
@interface TMBStripe_Charges_RetrieveCharge : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Charges_RetrieveCharge_Inputs*)newInputSet;
@end

/*! group TMBStripe.Charges_RetrieveCharge Choreo */


/*! group TMBStripe.Coupons.CreateCoupon Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCoupon Choreo.
 */
@interface TMBStripe_Coupons_CreateCoupon_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCouponID:(NSString*)CouponID;
	-(void)setDurationInMonths:(NSString*)DurationInMonths;
	-(void)setDuration:(NSString*)Duration;
	-(void)setMaxRedemptions:(NSString*)MaxRedemptions;
	-(void)setPercentOff:(NSString*)PercentOff;
	-(void)setRedeemBy:(NSString*)RedeemBy;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCoupon Choreo.
 */
@interface TMBStripe_Coupons_CreateCoupon_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a coupon that can be redeemed by customers for a discount.
 */
@interface TMBStripe_Coupons_CreateCoupon : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Coupons_CreateCoupon_Inputs*)newInputSet;
@end

/*! group TMBStripe.Coupons_CreateCoupon Choreo */


/*! group TMBStripe.Account.RetrieveAccountDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveAccountDetails Choreo.
 */
@interface TMBStripe_Account_RetrieveAccountDetails_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveAccountDetails Choreo.
 */
@interface TMBStripe_Account_RetrieveAccountDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the details of the account.
 */
@interface TMBStripe_Account_RetrieveAccountDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Account_RetrieveAccountDetails_Inputs*)newInputSet;
@end

/*! group TMBStripe.Account_RetrieveAccountDetails Choreo */


/*! group TMBStripe.InvoiceItems.DeleteInvoiceItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_DeleteInvoiceItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setInvoiceItemID:(NSString*)InvoiceItemID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInvoiceItem Choreo.
 */
@interface TMBStripe_InvoiceItems_DeleteInvoiceItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a specified invoice item.
 */
@interface TMBStripe_InvoiceItems_DeleteInvoiceItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_InvoiceItems_DeleteInvoiceItem_Inputs*)newInputSet;
@end

/*! group TMBStripe.InvoiceItems_DeleteInvoiceItem Choreo */


/*! group TMBStripe.Charges.CreateNewChargeWithToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateNewChargeWithToken Choreo.
 */
@interface TMBStripe_Charges_CreateNewChargeWithToken_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAmount:(NSString*)Amount;
	-(void)setCurrency:(NSString*)Currency;
	-(void)setDescription:(NSString*)Description;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateNewChargeWithToken Choreo.
 */
@interface TMBStripe_Charges_CreateNewChargeWithToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Charges a credit card by creating a new charge object using a card token that is associated with the credit card details.
 */
@interface TMBStripe_Charges_CreateNewChargeWithToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Charges_CreateNewChargeWithToken_Inputs*)newInputSet;
@end

/*! group TMBStripe.Charges_CreateNewChargeWithToken Choreo */


/*! group TMBStripe.Plans.DeletePlan Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlan Choreo.
 */
@interface TMBStripe_Plans_DeletePlan_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPlanID:(NSString*)PlanID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlan Choreo.
 */
@interface TMBStripe_Plans_DeletePlan_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a specified plan.
 */
@interface TMBStripe_Plans_DeletePlan : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBStripe_Plans_DeletePlan_Inputs*)newInputSet;
@end

/*! group TMBStripe.Plans_DeletePlan Choreo */
