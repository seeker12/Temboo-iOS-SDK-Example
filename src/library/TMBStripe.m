/*!
 * @TMBStripe.m
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

#import "TMBStripe.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListAllInvoiceItems Choreo.
 */
@implementation TMBStripe_InvoiceItems_ListAllInvoiceItems_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The limit of invoice items to be returned. Can range from 1 to 100. Defaults to 10.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(optional, string) The unique identifier of the customer whose invoice items to return. If not specified, all invoice items will be returned.
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Stripe will return a list of invoice items starting at the specified offset. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllInvoiceItems Choreo.
 */
@implementation TMBStripe_InvoiceItems_ListAllInvoiceItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of all invoice items or a list of invoice items for a specified customer.
 */
@implementation TMBStripe_InvoiceItems_ListAllInvoiceItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_InvoiceItems_ListAllInvoiceItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/InvoiceItems/ListAllInvoiceItems"] autorelease];
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
		TMBStripe_InvoiceItems_ListAllInvoiceItems_ResultSet *results = [[[TMBStripe_InvoiceItems_ListAllInvoiceItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllInvoiceItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_InvoiceItems_ListAllInvoiceItems_Inputs*)newInputSet {
		return [[[TMBStripe_InvoiceItems_ListAllInvoiceItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateInvoice Choreo.
 */
@implementation TMBStripe_Invoices_UpdateInvoice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Closed input for this Choreo.
	*(conditional, boolean) Whether or not the invoice should be closed or not. To close an invoice, set this to "true".
	 */
	-(void)setClosed:(NSString*)Closed {
		[super setInput:@"Closed" toValue:Closed];
	}

	/*!
	 * Set the value of the InvoiceID input for this Choreo.
	*(required, string) The id of the invoice to update.
	 */
	-(void)setInvoiceID:(NSString*)InvoiceID {
		[super setInput:@"InvoiceID" toValue:InvoiceID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateInvoice Choreo.
 */
@implementation TMBStripe_Invoices_UpdateInvoice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates an existing invoice.
 */
@implementation TMBStripe_Invoices_UpdateInvoice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_UpdateInvoice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/UpdateInvoice"] autorelease];
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
		TMBStripe_Invoices_UpdateInvoice_ResultSet *results = [[[TMBStripe_Invoices_UpdateInvoice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateInvoice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_UpdateInvoice_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_UpdateInvoice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateSubscription Choreo.
 */
@implementation TMBStripe_Subscriptions_UpdateSubscription_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Coupon input for this Choreo.
	*(optional, string) If you provide a coupon code, it can be specified here
	 */
	-(void)setCoupon:(NSString*)Coupon {
		[super setInput:@"Coupon" toValue:Coupon];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The unique identifier of the customer you want to subscribe to a plan
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Plan input for this Choreo.
	*(required, string) The unique identifier of the plan to subscribe the customer to
	 */
	-(void)setPlan:(NSString*)Plan {
		[super setInput:@"Plan" toValue:Plan];
	}

	/*!
	 * Set the value of the Prorate input for this Choreo.
	*(optional, boolean) When set to 1, Stripe will prorate switching plans during a billing cycle. When set to 0, this feature is disabled. Defaults to 1.
	 */
	-(void)setProrate:(NSString*)Prorate {
		[super setInput:@"Prorate" toValue:Prorate];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(optional, string) The token associated with a set of credit card details. This can be used as an alternative to specifying credit card details.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the TrialEnd input for this Choreo.
	*(optional, date) A timestamp representing the end of the trial period in UTC. The customer will not be charged during the trial period.
	 */
	-(void)setTrialEnd:(NSString*)TrialEnd {
		[super setInput:@"TrialEnd" toValue:TrialEnd];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateSubscription Choreo.
 */
@implementation TMBStripe_Subscriptions_UpdateSubscription_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Subscribes a customer to a specified plan.
 */
@implementation TMBStripe_Subscriptions_UpdateSubscription

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Subscriptions_UpdateSubscription Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Subscriptions/UpdateSubscription"] autorelease];
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
		TMBStripe_Subscriptions_UpdateSubscription_ResultSet *results = [[[TMBStripe_Subscriptions_UpdateSubscription_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateSubscription Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Subscriptions_UpdateSubscription_Inputs*)newInputSet {
		return [[[TMBStripe_Subscriptions_UpdateSubscription_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCustomers Choreo.
 */
@implementation TMBStripe_Customers_ListAllCustomers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The limit of customers to be returned. Can range from 1 to 100. Defaults to 10.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Stripe will return a list of customers starting at the specified offset. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCustomers Choreo.
 */
@implementation TMBStripe_Customers_ListAllCustomers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of all customers. 
 */
@implementation TMBStripe_Customers_ListAllCustomers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Customers_ListAllCustomers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Customers/ListAllCustomers"] autorelease];
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
		TMBStripe_Customers_ListAllCustomers_ResultSet *results = [[[TMBStripe_Customers_ListAllCustomers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllCustomers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Customers_ListAllCustomers_Inputs*)newInputSet {
		return [[[TMBStripe_Customers_ListAllCustomers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrievePlan Choreo.
 */
@implementation TMBStripe_Plans_RetrievePlan_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the PlanID input for this Choreo.
	*(required, string) The unique identifier of the plan you want to retrieve
	 */
	-(void)setPlanID:(NSString*)PlanID {
		[super setInput:@"PlanID" toValue:PlanID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrievePlan Choreo.
 */
@implementation TMBStripe_Plans_RetrievePlan_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves plan details with a specified plan id.
 */
@implementation TMBStripe_Plans_RetrievePlan

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Plans_RetrievePlan Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Plans/RetrievePlan"] autorelease];
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
		TMBStripe_Plans_RetrievePlan_ResultSet *results = [[[TMBStripe_Plans_RetrievePlan_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrievePlan Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Plans_RetrievePlan_Inputs*)newInputSet {
		return [[[TMBStripe_Plans_RetrievePlan_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCustomerWithToken Choreo.
 */
@implementation TMBStripe_Customers_CreateCustomerWithToken_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccountBalance input for this Choreo.
	*(optional, integer) The amount in cents for the starting account balance. A negative amount represents a credit that will be used before charging the customer's card; a positive amount will be added to the next invoice.
	 */
	-(void)setAccountBalance:(NSString*)AccountBalance {
		[super setInput:@"AccountBalance" toValue:AccountBalance];
	}

	/*!
	 * Set the value of the Coupon input for this Choreo.
	*(optional, string) If you provide a coupon code, it can be specified here
	 */
	-(void)setCoupon:(NSString*)Coupon {
		[super setInput:@"Coupon" toValue:Coupon];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) An arbitrary string of text that will be associated with the customer object
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The customer's email address
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Plan input for this Choreo.
	*(optional, string) The unique identifier of the plan to subscribe the customer to
	 */
	-(void)setPlan:(NSString*)Plan {
		[super setInput:@"Plan" toValue:Plan];
	}

	/*!
	 * Set the value of the Quantity input for this Choreo.
	*(optional, integer) The quantity you'd like to apply to the subscription you're creating. This parameter applies to the plan amount associated with the customer.
	 */
	-(void)setQuantity:(NSString*)Quantity {
		[super setInput:@"Quantity" toValue:Quantity];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) The token associated with a set of credit card details
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the TrialEnd input for this Choreo.
	*(optional, date) Epoch timestamp in seconds for the end of the trial period. The customer won't be charged during the trial period. Timestamp should be in UTC.
	 */
	-(void)setTrialEnd:(NSString*)TrialEnd {
		[super setInput:@"TrialEnd" toValue:TrialEnd];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCustomerWithToken Choreo.
 */
@implementation TMBStripe_Customers_CreateCustomerWithToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a new customer record using a Stripe generated token that represents the customer's credit card information.
 */
@implementation TMBStripe_Customers_CreateCustomerWithToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Customers_CreateCustomerWithToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Customers/CreateCustomerWithToken"] autorelease];
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
		TMBStripe_Customers_CreateCustomerWithToken_ResultSet *results = [[[TMBStripe_Customers_CreateCustomerWithToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCustomerWithToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Customers_CreateCustomerWithToken_Inputs*)newInputSet {
		return [[[TMBStripe_Customers_CreateCustomerWithToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCoupon Choreo.
 */
@implementation TMBStripe_Coupons_DeleteCoupon_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CouponID input for this Choreo.
	*(required, string) The unique identifier of the coupon you wish to delete
	 */
	-(void)setCouponID:(NSString*)CouponID {
		[super setInput:@"CouponID" toValue:CouponID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCoupon Choreo.
 */
@implementation TMBStripe_Coupons_DeleteCoupon_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a specified coupon.
 */
@implementation TMBStripe_Coupons_DeleteCoupon

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Coupons_DeleteCoupon Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Coupons/DeleteCoupon"] autorelease];
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
		TMBStripe_Coupons_DeleteCoupon_ResultSet *results = [[[TMBStripe_Coupons_DeleteCoupon_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCoupon Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Coupons_DeleteCoupon_Inputs*)newInputSet {
		return [[[TMBStripe_Coupons_DeleteCoupon_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateInvoice Choreo.
 */
@implementation TMBStripe_Invoices_CreateInvoice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The id of the customer to create an invoice for.
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInvoice Choreo.
 */
@implementation TMBStripe_Invoices_CreateInvoice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a new invoice for a customer.
 */
@implementation TMBStripe_Invoices_CreateInvoice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_CreateInvoice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/CreateInvoice"] autorelease];
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
		TMBStripe_Invoices_CreateInvoice_ResultSet *results = [[[TMBStripe_Invoices_CreateInvoice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateInvoice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_CreateInvoice_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_CreateInvoice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvoice Choreo.
 */
@implementation TMBStripe_Invoices_RetrieveInvoice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the InvoiceID input for this Choreo.
	*(required, string) The unique identifier of the invoice you want to retrieve
	 */
	-(void)setInvoiceID:(NSString*)InvoiceID {
		[super setInput:@"InvoiceID" toValue:InvoiceID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvoice Choreo.
 */
@implementation TMBStripe_Invoices_RetrieveInvoice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves invoice details using the invoice id.
 */
@implementation TMBStripe_Invoices_RetrieveInvoice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_RetrieveInvoice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/RetrieveInvoice"] autorelease];
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
		TMBStripe_Invoices_RetrieveInvoice_ResultSet *results = [[[TMBStripe_Invoices_RetrieveInvoice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveInvoice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_RetrieveInvoice_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_RetrieveInvoice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateNewChargeForExistingCustomer Choreo.
 */
@implementation TMBStripe_Charges_CreateNewChargeForExistingCustomer_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The amount to charge a customer in cents
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The id for the customer to charge
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) An arbitrary string of text that will be associated with the charge as a description
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateNewChargeForExistingCustomer Choreo.
 */
@implementation TMBStripe_Charges_CreateNewChargeForExistingCustomer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a new charge object in order to charge a credit card for an existing customer.
 */
@implementation TMBStripe_Charges_CreateNewChargeForExistingCustomer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Charges_CreateNewChargeForExistingCustomer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Charges/CreateNewChargeForExistingCustomer"] autorelease];
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
		TMBStripe_Charges_CreateNewChargeForExistingCustomer_ResultSet *results = [[[TMBStripe_Charges_CreateNewChargeForExistingCustomer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateNewChargeForExistingCustomer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Charges_CreateNewChargeForExistingCustomer_Inputs*)newInputSet {
		return [[[TMBStripe_Charges_CreateNewChargeForExistingCustomer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCustomer Choreo.
 */
@implementation TMBStripe_Customers_RetrieveCustomer_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The unique identifier of the customer you want to retrieve
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCustomer Choreo.
 */
@implementation TMBStripe_Customers_RetrieveCustomer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the details of an existing customer record.
 */
@implementation TMBStripe_Customers_RetrieveCustomer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Customers_RetrieveCustomer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Customers/RetrieveCustomer"] autorelease];
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
		TMBStripe_Customers_RetrieveCustomer_ResultSet *results = [[[TMBStripe_Customers_RetrieveCustomer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveCustomer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Customers_RetrieveCustomer_Inputs*)newInputSet {
		return [[[TMBStripe_Customers_RetrieveCustomer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllEvents Choreo.
 */
@implementation TMBStripe_Events_ListAllEvents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) A limit on the number of events to be returned. Count can range between 1 and 100 items.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Created input for this Choreo.
	*(optional, date) Filters the result based on the event created date (a UTC timestamp).
	 */
	-(void)setCreated:(NSString*)Created {
		[super setInput:@"Created" toValue:Created];
	}

	/*!
	 * Set the value of the GreaterThanEqualTo input for this Choreo.
	*(optional, date) Returns events that have been created after or equal to this UTC timestamp.
	 */
	-(void)setGreaterThanEqualTo:(NSString*)GreaterThanEqualTo {
		[super setInput:@"GreaterThanEqualTo" toValue:GreaterThanEqualTo];
	}

	/*!
	 * Set the value of the GreaterThan input for this Choreo.
	*(optional, date) Returns events that have been created after this UTC timestamp.
	 */
	-(void)setGreaterThan:(NSString*)GreaterThan {
		[super setInput:@"GreaterThan" toValue:GreaterThan];
	}

	/*!
	 * Set the value of the LessThanEqualTo input for this Choreo.
	*(optional, date) Return events that were created before or equal to this UTC timestamp.
	 */
	-(void)setLessThanEqualTo:(NSString*)LessThanEqualTo {
		[super setInput:@"LessThanEqualTo" toValue:LessThanEqualTo];
	}

	/*!
	 * Set the value of the LessThan input for this Choreo.
	*(optional, date) Return events that were created before this UTC timestamp.
	 */
	-(void)setLessThan:(NSString*)LessThan {
		[super setInput:@"LessThan" toValue:LessThan];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) An offset into your events array. The API will return the requested number of events starting at that offset.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) A string containing a specific event name, or group of events using * as a wildcard. This will return a filtered result including only events with a matching event property.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllEvents Choreo.
 */
@implementation TMBStripe_Events_ListAllEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of events that have happened in your account.
 */
@implementation TMBStripe_Events_ListAllEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Events_ListAllEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Events/ListAllEvents"] autorelease];
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
		TMBStripe_Events_ListAllEvents_ResultSet *results = [[[TMBStripe_Events_ListAllEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Events_ListAllEvents_Inputs*)newInputSet {
		return [[[TMBStripe_Events_ListAllEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_RetrieveInvoiceItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The secret API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the InvoiceItemID input for this Choreo.
	*(required, string) The unique identifier of the invoice item you want to retrieve
	 */
	-(void)setInvoiceItemID:(NSString*)InvoiceItemID {
		[super setInput:@"InvoiceItemID" toValue:InvoiceItemID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_RetrieveInvoiceItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves invoice items with a specified id.
 */
@implementation TMBStripe_InvoiceItems_RetrieveInvoiceItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_InvoiceItems_RetrieveInvoiceItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/InvoiceItems/RetrieveInvoiceItem"] autorelease];
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
		TMBStripe_InvoiceItems_RetrieveInvoiceItem_ResultSet *results = [[[TMBStripe_InvoiceItems_RetrieveInvoiceItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveInvoiceItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_InvoiceItems_RetrieveInvoiceItem_Inputs*)newInputSet {
		return [[[TMBStripe_InvoiceItems_RetrieveInvoiceItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCharges Choreo.
 */
@implementation TMBStripe_Charges_ListAllCharges_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The limit of charges to be returned. Can range from 1 to 100. Defaults to 10.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(optional, string) The unique identifier of the customer whose charges to return. If not specified, all charges will be returned.
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Stripe will return a list of charges starting at the specified offset. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCharges Choreo.
 */
@implementation TMBStripe_Charges_ListAllCharges_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of all charges or a list of charges for a specified customer.
 */
@implementation TMBStripe_Charges_ListAllCharges

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Charges_ListAllCharges Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Charges/ListAllCharges"] autorelease];
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
		TMBStripe_Charges_ListAllCharges_ResultSet *results = [[[TMBStripe_Charges_ListAllCharges_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllCharges Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Charges_ListAllCharges_Inputs*)newInputSet {
		return [[[TMBStripe_Charges_ListAllCharges_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePlan Choreo.
 */
@implementation TMBStripe_Plans_UpdatePlan_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the PlanID input for this Choreo.
	*(required, string) The unique identifier of the plan you want to update
	 */
	-(void)setPlanID:(NSString*)PlanID {
		[super setInput:@"PlanID" toValue:PlanID];
	}

	/*!
	 * Set the value of the PlanName input for this Choreo.
	*(conditional, string) The new name of the plan which will be displayed in the Stripe web interface.
	 */
	-(void)setPlanName:(NSString*)PlanName {
		[super setInput:@"PlanName" toValue:PlanName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePlan Choreo.
 */
@implementation TMBStripe_Plans_UpdatePlan_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates the name of an existing plan.
 */
@implementation TMBStripe_Plans_UpdatePlan

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Plans_UpdatePlan Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Plans/UpdatePlan"] autorelease];
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
		TMBStripe_Plans_UpdatePlan_ResultSet *results = [[[TMBStripe_Plans_UpdatePlan_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePlan Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Plans_UpdatePlan_Inputs*)newInputSet {
		return [[[TMBStripe_Plans_UpdatePlan_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_CreateInvoiceItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key providied by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The amount in cents of the charge to be included in the customer's next invoice
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The unique identifier of the customer you want to create an invoice item for
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) An arbitrary string of text that will be included with the invoice item
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_CreateInvoiceItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Adds a charge or credit to the customer's next invoice.
 */
@implementation TMBStripe_InvoiceItems_CreateInvoiceItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_InvoiceItems_CreateInvoiceItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/InvoiceItems/CreateInvoiceItem"] autorelease];
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
		TMBStripe_InvoiceItems_CreateInvoiceItem_ResultSet *results = [[[TMBStripe_InvoiceItems_CreateInvoiceItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateInvoiceItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_InvoiceItems_CreateInvoiceItem_Inputs*)newInputSet {
		return [[[TMBStripe_InvoiceItems_CreateInvoiceItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllPlans Choreo.
 */
@implementation TMBStripe_Plans_ListAllPlans_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The limit of plans to be returned. Can range from 1 to 100. Defaults to 10.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Stripe will return a list of plans starting at the specified offset. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllPlans Choreo.
 */
@implementation TMBStripe_Plans_ListAllPlans_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of all plans. 
 */
@implementation TMBStripe_Plans_ListAllPlans

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Plans_ListAllPlans Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Plans/ListAllPlans"] autorelease];
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
		TMBStripe_Plans_ListAllPlans_ResultSet *results = [[[TMBStripe_Plans_ListAllPlans_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllPlans Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Plans_ListAllPlans_Inputs*)newInputSet {
		return [[[TMBStripe_Plans_ListAllPlans_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PayInvoice Choreo.
 */
@implementation TMBStripe_Invoices_PayInvoice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the InvoiceID input for this Choreo.
	*(required, string) The id of the invoice to pay.
	 */
	-(void)setInvoiceID:(NSString*)InvoiceID {
		[super setInput:@"InvoiceID" toValue:InvoiceID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PayInvoice Choreo.
 */
@implementation TMBStripe_Invoices_PayInvoice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Allows your application to attempt to collect payment on an invoice outside of the normal recurring payment schedule.
 */
@implementation TMBStripe_Invoices_PayInvoice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_PayInvoice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/PayInvoice"] autorelease];
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
		TMBStripe_Invoices_PayInvoice_ResultSet *results = [[[TMBStripe_Invoices_PayInvoice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PayInvoice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_PayInvoice_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_PayInvoice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CancelSubscription Choreo.
 */
@implementation TMBStripe_Subscriptions_CancelSubscription_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AtPeriodEnd input for this Choreo.
	*(optional, boolean) Delays the cancellation of the subscription until the end of the current period when set to 1. Defaults to 0.
	 */
	-(void)setAtPeriodEnd:(NSString*)AtPeriodEnd {
		[super setInput:@"AtPeriodEnd" toValue:AtPeriodEnd];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The id of the customer whose subscription you want to cancel
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelSubscription Choreo.
 */
@implementation TMBStripe_Subscriptions_CancelSubscription_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Cancels an existing subscription.
 */
@implementation TMBStripe_Subscriptions_CancelSubscription

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Subscriptions_CancelSubscription Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Subscriptions/CancelSubscription"] autorelease];
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
		TMBStripe_Subscriptions_CancelSubscription_ResultSet *results = [[[TMBStripe_Subscriptions_CancelSubscription_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CancelSubscription Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Subscriptions_CancelSubscription_Inputs*)newInputSet {
		return [[[TMBStripe_Subscriptions_CancelSubscription_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCoupons Choreo.
 */
@implementation TMBStripe_Coupons_ListAllCoupons_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) A limit on the number of coupons to be returned. Valid values are 1 through 100.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) An offset into your coupons array. The API will return the requested number of coupons starting at that the specified offset.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCoupons Choreo.
 */
@implementation TMBStripe_Coupons_ListAllCoupons_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a a list of your coupons.
 */
@implementation TMBStripe_Coupons_ListAllCoupons

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Coupons_ListAllCoupons Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Coupons/ListAllCoupons"] autorelease];
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
		TMBStripe_Coupons_ListAllCoupons_ResultSet *results = [[[TMBStripe_Coupons_ListAllCoupons_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllCoupons Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Coupons_ListAllCoupons_Inputs*)newInputSet {
		return [[[TMBStripe_Coupons_ListAllCoupons_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCardToken Choreo.
 */
@implementation TMBStripe_Tokens_RetrieveCardToken_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the TokenID input for this Choreo.
	*(required, string) The unique identifier of the token you want to retrieve
	 */
	-(void)setTokenID:(NSString*)TokenID {
		[super setInput:@"TokenID" toValue:TokenID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCardToken Choreo.
 */
@implementation TMBStripe_Tokens_RetrieveCardToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a card token based on a given id.
 */
@implementation TMBStripe_Tokens_RetrieveCardToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Tokens_RetrieveCardToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Tokens/RetrieveCardToken"] autorelease];
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
		TMBStripe_Tokens_RetrieveCardToken_ResultSet *results = [[[TMBStripe_Tokens_RetrieveCardToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveCardToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Tokens_RetrieveCardToken_Inputs*)newInputSet {
		return [[[TMBStripe_Tokens_RetrieveCardToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RefundCharge Choreo.
 */
@implementation TMBStripe_Charges_RefundCharge_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(optional, integer) The amount to refund to the customer in cents. When left empty, the entire charge is refunded.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the ChargeID input for this Choreo.
	*(required, string) The unique identifier of the charge to be refunded
	 */
	-(void)setChargeID:(NSString*)ChargeID {
		[super setInput:@"ChargeID" toValue:ChargeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundCharge Choreo.
 */
@implementation TMBStripe_Charges_RefundCharge_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Issues a refund of an existing credit card charge.
 */
@implementation TMBStripe_Charges_RefundCharge

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Charges_RefundCharge Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Charges/RefundCharge"] autorelease];
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
		TMBStripe_Charges_RefundCharge_ResultSet *results = [[[TMBStripe_Charges_RefundCharge_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RefundCharge Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Charges_RefundCharge_Inputs*)newInputSet {
		return [[[TMBStripe_Charges_RefundCharge_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllInvoices Choreo.
 */
@implementation TMBStripe_Invoices_ListAllInvoices_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The limit of invoices to be returned. Can range from 1 to 100. Defaults to 10.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(optional, string) The unique identifier of the customer whose invoice to return. If not specified, all invoices will be returned.
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Stripe will return a list of invoices starting at the specified offset. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllInvoices Choreo.
 */
@implementation TMBStripe_Invoices_ListAllInvoices_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of all invoices or a list of invoices for a specified customer.
 */
@implementation TMBStripe_Invoices_ListAllInvoices

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_ListAllInvoices Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/ListAllInvoices"] autorelease];
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
		TMBStripe_Invoices_ListAllInvoices_ResultSet *results = [[[TMBStripe_Invoices_ListAllInvoices_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllInvoices Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_ListAllInvoices_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_ListAllInvoices_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCustomer Choreo.
 */
@implementation TMBStripe_Customers_UpdateCustomer_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccountBalance input for this Choreo.
	*(optional, integer) The amount in cents for the starting account balance. A negative amount represents a credit that will be used before charging the customer's card; a positive amount will be added to the next invoice.
	 */
	-(void)setAccountBalance:(NSString*)AccountBalance {
		[super setInput:@"AccountBalance" toValue:AccountBalance];
	}

	/*!
	 * Set the value of the Coupon input for this Choreo.
	*(optional, string) If you provide a coupon code, it can be specified here
	 */
	-(void)setCoupon:(NSString*)Coupon {
		[super setInput:@"Coupon" toValue:Coupon];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The unique identifier of the customer you want to update
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) An arbitrary string of text that will be associated with the charge as a description
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The customer's email address
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(optional, string) The token associated with a set of credit card details.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCustomer Choreo.
 */
@implementation TMBStripe_Customers_UpdateCustomer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates a specified customer record.
 */
@implementation TMBStripe_Customers_UpdateCustomer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Customers_UpdateCustomer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Customers/UpdateCustomer"] autorelease];
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
		TMBStripe_Customers_UpdateCustomer_ResultSet *results = [[[TMBStripe_Customers_UpdateCustomer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateCustomer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Customers_UpdateCustomer_Inputs*)newInputSet {
		return [[[TMBStripe_Customers_UpdateCustomer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCoupon Choreo.
 */
@implementation TMBStripe_Coupons_RetrieveCoupon_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CouponID input for this Choreo.
	*(required, string) The unique identifier of the coupon you want to retrieve
	 */
	-(void)setCouponID:(NSString*)CouponID {
		[super setInput:@"CouponID" toValue:CouponID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCoupon Choreo.
 */
@implementation TMBStripe_Coupons_RetrieveCoupon_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a coupon with specified coupon id.
 */
@implementation TMBStripe_Coupons_RetrieveCoupon

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Coupons_RetrieveCoupon Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Coupons/RetrieveCoupon"] autorelease];
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
		TMBStripe_Coupons_RetrieveCoupon_ResultSet *results = [[[TMBStripe_Coupons_RetrieveCoupon_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveCoupon Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Coupons_RetrieveCoupon_Inputs*)newInputSet {
		return [[[TMBStripe_Coupons_RetrieveCoupon_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCustomer Choreo.
 */
@implementation TMBStripe_Customers_DeleteCustomer_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The unique identifier of the customer you want to delete
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCustomer Choreo.
 */
@implementation TMBStripe_Customers_DeleteCustomer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a specified customer record.
 */
@implementation TMBStripe_Customers_DeleteCustomer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Customers_DeleteCustomer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Customers/DeleteCustomer"] autorelease];
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
		TMBStripe_Customers_DeleteCustomer_ResultSet *results = [[[TMBStripe_Customers_DeleteCustomer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCustomer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Customers_DeleteCustomer_Inputs*)newInputSet {
		return [[[TMBStripe_Customers_DeleteCustomer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_UpdateInvoiceItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The amount in cents of the charge to be included in the customer's next invoice
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) An arbitrary string of text that will be included with the invoice item
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the InvoiceItemID input for this Choreo.
	*(required, string) The unique identifier of the invoice item you want to update
	 */
	-(void)setInvoiceItemID:(NSString*)InvoiceItemID {
		[super setInput:@"InvoiceItemID" toValue:InvoiceItemID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_UpdateInvoiceItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates the amount or description of an existing invoice item.
 */
@implementation TMBStripe_InvoiceItems_UpdateInvoiceItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_InvoiceItems_UpdateInvoiceItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/InvoiceItems/UpdateInvoiceItem"] autorelease];
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
		TMBStripe_InvoiceItems_UpdateInvoiceItem_ResultSet *results = [[[TMBStripe_InvoiceItems_UpdateInvoiceItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateInvoiceItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_InvoiceItems_UpdateInvoiceItem_Inputs*)newInputSet {
		return [[[TMBStripe_InvoiceItems_UpdateInvoiceItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEvent Choreo.
 */
@implementation TMBStripe_Events_RetrieveEvent_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EventID input for this Choreo.
	*(required, string) The id of the event to return.
	 */
	-(void)setEventID:(NSString*)EventID {
		[super setInput:@"EventID" toValue:EventID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEvent Choreo.
 */
@implementation TMBStripe_Events_RetrieveEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the details of an event.
 */
@implementation TMBStripe_Events_RetrieveEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Events_RetrieveEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Events/RetrieveEvent"] autorelease];
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
		TMBStripe_Events_RetrieveEvent_ResultSet *results = [[[TMBStripe_Events_RetrieveEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Events_RetrieveEvent_Inputs*)newInputSet {
		return [[[TMBStripe_Events_RetrieveEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUpcomingInvoice Choreo.
 */
@implementation TMBStripe_Invoices_RetrieveUpcomingInvoice_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(required, string) The unique identifier of the customer whose upcoming invoice to return
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUpcomingInvoice Choreo.
 */
@implementation TMBStripe_Invoices_RetrieveUpcomingInvoice_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a customer's upcoming invoice.
 */
@implementation TMBStripe_Invoices_RetrieveUpcomingInvoice

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_RetrieveUpcomingInvoice Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/RetrieveUpcomingInvoice"] autorelease];
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
		TMBStripe_Invoices_RetrieveUpcomingInvoice_ResultSet *results = [[[TMBStripe_Invoices_RetrieveUpcomingInvoice_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveUpcomingInvoice Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_RetrieveUpcomingInvoice_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_RetrieveUpcomingInvoice_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvoiceLineItems Choreo.
 */
@implementation TMBStripe_Invoices_RetrieveInvoiceLineItems_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of line items to return
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the CustomerID input for this Choreo.
	*(optional, string) In the case of upcoming invoices, the customer of the upcoming invoice is required. In other cases it is ignored.
	 */
	-(void)setCustomerID:(NSString*)CustomerID {
		[super setInput:@"CustomerID" toValue:CustomerID];
	}

	/*!
	 * Set the value of the InvoiceID input for this Choreo.
	*(required, string) The id of the invoice containing the line items to return
	 */
	-(void)setInvoiceID:(NSString*)InvoiceID {
		[super setInput:@"InvoiceID" toValue:InvoiceID];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The offset into the list of line items to start returning from, with 0 being the most recent
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvoiceLineItems Choreo.
 */
@implementation TMBStripe_Invoices_RetrieveInvoiceLineItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a full list of line items contained in an invoice.
 */
@implementation TMBStripe_Invoices_RetrieveInvoiceLineItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Invoices_RetrieveInvoiceLineItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Invoices/RetrieveInvoiceLineItems"] autorelease];
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
		TMBStripe_Invoices_RetrieveInvoiceLineItems_ResultSet *results = [[[TMBStripe_Invoices_RetrieveInvoiceLineItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveInvoiceLineItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Invoices_RetrieveInvoiceLineItems_Inputs*)newInputSet {
		return [[[TMBStripe_Invoices_RetrieveInvoiceLineItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePlan Choreo.
 */
@implementation TMBStripe_Plans_CreatePlan_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The amount in cents to charge on a recurring basis for subscribers of this plan
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the Interval input for this Choreo.
	*(required, string) Indicates billing frequency. Valid values are: month or year.
	 */
	-(void)setInterval:(NSString*)Interval {
		[super setInput:@"Interval" toValue:Interval];
	}

	/*!
	 * Set the value of the PlanID input for this Choreo.
	*(required, string) The unique identifier of the plan you want to create
	 */
	-(void)setPlanID:(NSString*)PlanID {
		[super setInput:@"PlanID" toValue:PlanID];
	}

	/*!
	 * Set the value of the PlanName input for this Choreo.
	*(required, string) The name of the plan which will be displayed in the Stripe web interface.
	 */
	-(void)setPlanName:(NSString*)PlanName {
		[super setInput:@"PlanName" toValue:PlanName];
	}

	/*!
	 * Set the value of the TrialPeriodDays input for this Choreo.
	*(optional, integer) The number of days in a trial period (customer will not be billed until the trial period is over)
	 */
	-(void)setTrialPeriodDays:(NSString*)TrialPeriodDays {
		[super setInput:@"TrialPeriodDays" toValue:TrialPeriodDays];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePlan Choreo.
 */
@implementation TMBStripe_Plans_CreatePlan_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a subscription plan
 */
@implementation TMBStripe_Plans_CreatePlan

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Plans_CreatePlan Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Plans/CreatePlan"] autorelease];
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
		TMBStripe_Plans_CreatePlan_ResultSet *results = [[[TMBStripe_Plans_CreatePlan_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePlan Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Plans_CreatePlan_Inputs*)newInputSet {
		return [[[TMBStripe_Plans_CreatePlan_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCharge Choreo.
 */
@implementation TMBStripe_Charges_RetrieveCharge_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ChargeID input for this Choreo.
	*(required, string) The unique identifier of the charge you want to retrieve
	 */
	-(void)setChargeID:(NSString*)ChargeID {
		[super setInput:@"ChargeID" toValue:ChargeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCharge Choreo.
 */
@implementation TMBStripe_Charges_RetrieveCharge_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the details of an existing charge.
 */
@implementation TMBStripe_Charges_RetrieveCharge

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Charges_RetrieveCharge Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Charges/RetrieveCharge"] autorelease];
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
		TMBStripe_Charges_RetrieveCharge_ResultSet *results = [[[TMBStripe_Charges_RetrieveCharge_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveCharge Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Charges_RetrieveCharge_Inputs*)newInputSet {
		return [[[TMBStripe_Charges_RetrieveCharge_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCoupon Choreo.
 */
@implementation TMBStripe_Coupons_CreateCoupon_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CouponID input for this Choreo.
	*(optional, string) The unique identifier of your choice for the coupon. If not specified, a random code will be generated by Stripe.
	 */
	-(void)setCouponID:(NSString*)CouponID {
		[super setInput:@"CouponID" toValue:CouponID];
	}

	/*!
	 * Set the value of the DurationInMonths input for this Choreo.
	*(optional, integer) If Duration is set to 'repeating', specify the number of months the discount will be valid.
	 */
	-(void)setDurationInMonths:(NSString*)DurationInMonths {
		[super setInput:@"DurationInMonths" toValue:DurationInMonths];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(required, string) Indicates how long the discount will be in effect. Valid values are: forever, once, repeating.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the MaxRedemptions input for this Choreo.
	*(optional, integer) Specify the number times the coupon can be used.
	 */
	-(void)setMaxRedemptions:(NSString*)MaxRedemptions {
		[super setInput:@"MaxRedemptions" toValue:MaxRedemptions];
	}

	/*!
	 * Set the value of the PercentOff input for this Choreo.
	*(required, integer) A integer between 1 and 100 that represents the discount that the coupon will apply when used by a customer
	 */
	-(void)setPercentOff:(NSString*)PercentOff {
		[super setInput:@"PercentOff" toValue:PercentOff];
	}

	/*!
	 * Set the value of the RedeemBy input for this Choreo.
	*(optional, date) An epoch timestamp in seconds representing the the last time at which the coupon can be used. Specify timestamp in UTC.
	 */
	-(void)setRedeemBy:(NSString*)RedeemBy {
		[super setInput:@"RedeemBy" toValue:RedeemBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCoupon Choreo.
 */
@implementation TMBStripe_Coupons_CreateCoupon_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a coupon that can be redeemed by customers for a discount.
 */
@implementation TMBStripe_Coupons_CreateCoupon

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Coupons_CreateCoupon Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Coupons/CreateCoupon"] autorelease];
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
		TMBStripe_Coupons_CreateCoupon_ResultSet *results = [[[TMBStripe_Coupons_CreateCoupon_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCoupon Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Coupons_CreateCoupon_Inputs*)newInputSet {
		return [[[TMBStripe_Coupons_CreateCoupon_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveAccountDetails Choreo.
 */
@implementation TMBStripe_Account_RetrieveAccountDetails_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveAccountDetails Choreo.
 */
@implementation TMBStripe_Account_RetrieveAccountDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the details of the account.
 */
@implementation TMBStripe_Account_RetrieveAccountDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Account_RetrieveAccountDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Account/RetrieveAccountDetails"] autorelease];
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
		TMBStripe_Account_RetrieveAccountDetails_ResultSet *results = [[[TMBStripe_Account_RetrieveAccountDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveAccountDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Account_RetrieveAccountDetails_Inputs*)newInputSet {
		return [[[TMBStripe_Account_RetrieveAccountDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_DeleteInvoiceItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the InvoiceItemID input for this Choreo.
	*(required, string) The unique identifier of the invoice item you want to delete
	 */
	-(void)setInvoiceItemID:(NSString*)InvoiceItemID {
		[super setInput:@"InvoiceItemID" toValue:InvoiceItemID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInvoiceItem Choreo.
 */
@implementation TMBStripe_InvoiceItems_DeleteInvoiceItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a specified invoice item.
 */
@implementation TMBStripe_InvoiceItems_DeleteInvoiceItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_InvoiceItems_DeleteInvoiceItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/InvoiceItems/DeleteInvoiceItem"] autorelease];
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
		TMBStripe_InvoiceItems_DeleteInvoiceItem_ResultSet *results = [[[TMBStripe_InvoiceItems_DeleteInvoiceItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteInvoiceItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_InvoiceItems_DeleteInvoiceItem_Inputs*)newInputSet {
		return [[[TMBStripe_InvoiceItems_DeleteInvoiceItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateNewChargeWithToken Choreo.
 */
@implementation TMBStripe_Charges_CreateNewChargeWithToken_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The amount to charge a customer in cents
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(optional, string) 3-letter ISO code for currency. Defaults to 'usd' which is currently the only supported currency.
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) An arbitrary string of text that will be associated with the charge as a description
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The token associated with a set of credit card details. This can be generated with the CreateCardToken Choreo.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateNewChargeWithToken Choreo.
 */
@implementation TMBStripe_Charges_CreateNewChargeWithToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Charges a credit card by creating a new charge object using a card token that is associated with the credit card details.
 */
@implementation TMBStripe_Charges_CreateNewChargeWithToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Charges_CreateNewChargeWithToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Charges/CreateNewChargeWithToken"] autorelease];
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
		TMBStripe_Charges_CreateNewChargeWithToken_ResultSet *results = [[[TMBStripe_Charges_CreateNewChargeWithToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateNewChargeWithToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Charges_CreateNewChargeWithToken_Inputs*)newInputSet {
		return [[[TMBStripe_Charges_CreateNewChargeWithToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlan Choreo.
 */
@implementation TMBStripe_Plans_DeletePlan_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Stripe
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the PlanID input for this Choreo.
	*(required, string) The unique identifier of the plan you want to delete
	 */
	-(void)setPlanID:(NSString*)PlanID {
		[super setInput:@"PlanID" toValue:PlanID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlan Choreo.
 */
@implementation TMBStripe_Plans_DeletePlan_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Stripe
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a specified plan.
 */
@implementation TMBStripe_Plans_DeletePlan

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBStripe_Plans_DeletePlan Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Stripe/Plans/DeletePlan"] autorelease];
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
		TMBStripe_Plans_DeletePlan_ResultSet *results = [[[TMBStripe_Plans_DeletePlan_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePlan Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBStripe_Plans_DeletePlan_Inputs*)newInputSet {
		return [[[TMBStripe_Plans_DeletePlan_Inputs alloc] init] autorelease];
	}
@end
	