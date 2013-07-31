/*!
 * @TMBPayPal.m
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

#import "TMBPayPal.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the LookupPayment Choreo.
 */
@implementation TMBPayPal_Payments_LookupPayment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the PaymentID input for this Choreo.
	*(required, string) The id of the payment to retrieve.
	 */
	-(void)setPaymentID:(NSString*)PaymentID {
		[super setInput:@"PaymentID" toValue:PaymentID];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupPayment Choreo.
 */
@implementation TMBPayPal_Payments_LookupPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Currency" output from an execution of this Choreo.
	 * @return - NSString* (string) The payment currency.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCurrency {
		return [super getOutputByName:@"Currency"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "PaymentState" output from an execution of this Choreo.
	 * @return - NSString* (string) The state of the payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPaymentState {
		return [super getOutputByName:@"PaymentState"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SaleState" output from an execution of this Choreo.
	 * @return - NSString* (string) The state of the sale.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSaleState {
		return [super getOutputByName:@"SaleState"];
	}

	/*!
	 * Retrieve the value of the "Total" output from an execution of this Choreo.
	 * @return - NSString* (decimal) The total amount of the payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTotal {
		return [super getOutputByName:@"Total"];
	}
	
@end

/*!
 * Retrieves a specific payment resource by ID.
 */
@implementation TMBPayPal_Payments_LookupPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_LookupPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/LookupPayment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_LookupPayment_ResultSet *results = [[[TMBPayPal_Payments_LookupPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_LookupPayment_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_LookupPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ConvertCurrency Choreo.
 */
@implementation TMBPayPal_AdaptivePayments_ConvertCurrency_Inputs

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, decimal) The amount that should be converted to a new currency.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) Your PayPal AppID (or the default AppID for the PayPal sandbox).
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the ConvertToCurrency input for this Choreo.
	*(required, string) The currency code that you want to convert to (i.e. GBP).
	 */
	-(void)setConvertToCurrency:(NSString*)ConvertToCurrency {
		[super setInput:@"ConvertToCurrency" toValue:ConvertToCurrency];
	}

	/*!
	 * Set the value of the CurrencyCode input for this Choreo.
	*(required, string) The currency code that you want to convert. (i.e. USD).
	 */
	-(void)setCurrencyCode:(NSString*)CurrencyCode {
		[super setInput:@"CurrencyCode" toValue:CurrencyCode];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ConvertCurrency Choreo.
 */
@implementation TMBPayPal_AdaptivePayments_ConvertCurrency_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Converts a payment amount from one currency to another.
 */
@implementation TMBPayPal_AdaptivePayments_ConvertCurrency

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_AdaptivePayments_ConvertCurrency Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/AdaptivePayments/ConvertCurrency"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_AdaptivePayments_ConvertCurrency_ResultSet *results = [[[TMBPayPal_AdaptivePayments_ConvertCurrency_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ConvertCurrency Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_AdaptivePayments_ConvertCurrency_Inputs*)newInputSet {
		return [[[TMBPayPal_AdaptivePayments_ConvertCurrency_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPayments Choreo.
 */
@implementation TMBPayPal_Payments_ListPayments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Number of items to return. Default is 10 with a maximum value of 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The field to sort results by. Valid values are: create_time and update_time.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) The sort order of the results. Valid values are asc and desc (the default).
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartID input for this Choreo.
	*(optional, string) The resource ID that indicates the starting resource to return. When results are paged, you can use the next_id response value as the StartID to continue with the next set of results.
	 */
	-(void)setStartID:(NSString*)StartID {
		[super setInput:@"StartID" toValue:StartID];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The start index of the resources to be returned. Used to jump to a specific position in the results.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPayments Choreo.
 */
@implementation TMBPayPal_Payments_ListPayments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of payments.
 */
@implementation TMBPayPal_Payments_ListPayments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_ListPayments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/ListPayments"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_ListPayments_ResultSet *results = [[[TMBPayPal_Payments_ListPayments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPayments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_ListPayments_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_ListPayments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBalance Choreo.
 */
@implementation TMBPayPal_Merchant_GetBalance_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBalance Choreo.
 */
@implementation TMBPayPal_Merchant_GetBalance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Response from PayPal formatted in name/value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the available balance for a PayPal account.
 */
@implementation TMBPayPal_Merchant_GetBalance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_GetBalance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/GetBalance"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_GetBalance_ResultSet *results = [[[TMBPayPal_Merchant_GetBalance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBalance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_GetBalance_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_GetBalance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddressVerify Choreo.
 */
@implementation TMBPayPal_Merchant_AddressVerify_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address of a PayPal member to verify.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(required, string) The postal code to verify.
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the Street input for this Choreo.
	*(required, string) The first line of the billing or shipping address to verify.
	 */
	-(void)setStreet:(NSString*)Street {
		[super setInput:@"Street" toValue:Street];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddressVerify Choreo.
 */
@implementation TMBPayPal_Merchant_AddressVerify_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Response from PayPal formatted in name/value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Confirms whether a postal address and postal code match those of the specified PayPal account holder.
 */
@implementation TMBPayPal_Merchant_AddressVerify

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_AddressVerify Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/AddressVerify"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_AddressVerify_ResultSet *results = [[[TMBPayPal_Merchant_AddressVerify_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddressVerify Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_AddressVerify_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_AddressVerify_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AcceptPayPalPayment Choreo.
 */
@implementation TMBPayPal_Payments_AcceptPayPalPayment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CancelURL input for this Choreo.
	*(required, string) URL to which the customer is returned if they do not approve the use of PayPal to pay you.
	 */
	-(void)setCancelURL:(NSString*)CancelURL {
		[super setInput:@"CancelURL" toValue:CancelURL];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(required, string) The currency for the payment (i.e.  USD).
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description for this payment.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ReturnURL input for this Choreo.
	*(required, string) The URL to which the customer's browser is returned after choosing to pay with PayPal.
	 */
	-(void)setReturnURL:(NSString*)ReturnURL {
		[super setInput:@"ReturnURL" toValue:ReturnURL];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the Total input for this Choreo.
	*(required, decimal) The total of the payment.
	 */
	-(void)setTotal:(NSString*)Total {
		[super setInput:@"Total" toValue:Total];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AcceptPayPalPayment Choreo.
 */
@implementation TMBPayPal_Payments_AcceptPayPalPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ApprovalURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The approval url that the application should redirect the user to in order to approve the payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getApprovalURL {
		return [super getOutputByName:@"ApprovalURL"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "PaymentID" output from an execution of this Choreo.
	 * @return - NSString* (string) The id of the payment that was created. This is used to execute the payment after the buyer has approved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPaymentID {
		return [super getOutputByName:@"PaymentID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new PayPal payment which can then be approved and executed.
 */
@implementation TMBPayPal_Payments_AcceptPayPalPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_AcceptPayPalPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/AcceptPayPalPayment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_AcceptPayPalPayment_ResultSet *results = [[[TMBPayPal_Payments_AcceptPayPalPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AcceptPayPalPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_AcceptPayPalPayment_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_AcceptPayPalPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TransactionSearch Choreo.
 */
@implementation TMBPayPal_Merchant_TransactionSearch_Inputs

	/*!
	 * Set the value of the Account input for this Choreo.
	*(optional, string) Search by credit card number.
	 */
	-(void)setAccount:(NSString*)Account {
		[super setInput:@"Account" toValue:Account];
	}

	/*!
	 * Set the value of the AuctionItemNumber input for this Choreo.
	*(optional, string) Search by auction item number of the purchased item.
	 */
	-(void)setAuctionItemNumber:(NSString*)AuctionItemNumber {
		[super setInput:@"AuctionItemNumber" toValue:AuctionItemNumber];
	}

	/*!
	 * Set the value of the CurrencyCode input for this Choreo.
	*(optional, string) Search by currency code (i.e. USD).
	 */
	-(void)setCurrencyCode:(NSString*)CurrencyCode {
		[super setInput:@"CurrencyCode" toValue:CurrencyCode];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) Search by email.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) The latest transaction date to return. Must be an epoch timestamp in milliseconds or formatted in UTC like: 2011-05-19T00:00:00Z.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the InvoiceNumber input for this Choreo.
	*(optional, string) Search by invoice number.
	 */
	-(void)setInvoiceNumber:(NSString*)InvoiceNumber {
		[super setInput:@"InvoiceNumber" toValue:InvoiceNumber];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ReceiptId input for this Choreo.
	*(optional, string) Search by the PayPal receipt ID.
	 */
	-(void)setReceiptId:(NSString*)ReceiptId {
		[super setInput:@"ReceiptId" toValue:ReceiptId];
	}

	/*!
	 * Set the value of the Receiver input for this Choreo.
	*(optional, string) Search by the email address of the receiver.
	 */
	-(void)setReceiver:(NSString*)Receiver {
		[super setInput:@"Receiver" toValue:Receiver];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) The earliest transaction date to return. Must be an epoch timestamp in milliseconds or formatted in UTC like: 2011-05-19T00:00:00Z.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the TransactionAmount input for this Choreo.
	*(optional, decimal) Search by transaction amount.
	 */
	-(void)setTransactionAmount:(NSString*)TransactionAmount {
		[super setInput:@"TransactionAmount" toValue:TransactionAmount];
	}

	/*!
	 * Set the value of the TransactionClass input for this Choreo.
	*(optional, string) Search by classification of transaction (i.e. All, Sent, Recieved, etc).
	 */
	-(void)setTransactionClass:(NSString*)TransactionClass {
		[super setInput:@"TransactionClass" toValue:TransactionClass];
	}

	/*!
	 * Set the value of the TransactionId input for this Choreo.
	*(optional, string) Search by the transaction ID
	 */
	-(void)setTransactionId:(NSString*)TransactionId {
		[super setInput:@"TransactionId" toValue:TransactionId];
	}

	/*!
	 * Set the value of the TransactionStatus input for this Choreo.
	*(optional, string) Search by transaction status (i.e. Pending, Processing, Success, Denied, Reversed).
	 */
	-(void)setTransactionStatus:(NSString*)TransactionStatus {
		[super setInput:@"TransactionStatus" toValue:TransactionStatus];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TransactionSearch Choreo.
 */
@implementation TMBPayPal_Merchant_TransactionSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Response from PayPal formatted in name/value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves transaction history for transactions that meet a specified criteria.
 */
@implementation TMBPayPal_Merchant_TransactionSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_TransactionSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/TransactionSearch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_TransactionSearch_ResultSet *results = [[[TMBPayPal_Merchant_TransactionSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TransactionSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_TransactionSearch_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_TransactionSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTransactionDetails Choreo.
 */
@implementation TMBPayPal_Merchant_GetTransactionDetails_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the TransactionID input for this Choreo.
	*(required, string) The ID for the transaction you want to retrieve data for.
	 */
	-(void)setTransactionID:(NSString*)TransactionID {
		[super setInput:@"TransactionID" toValue:TransactionID];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTransactionDetails Choreo.
 */
@implementation TMBPayPal_Merchant_GetTransactionDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Response from PayPal formatted in name/value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a specific transaction.
 */
@implementation TMBPayPal_Merchant_GetTransactionDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_GetTransactionDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/GetTransactionDetails"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_GetTransactionDetails_ResultSet *results = [[[TMBPayPal_Merchant_GetTransactionDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTransactionDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_GetTransactionDetails_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_GetTransactionDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VerifyAllPayments Choreo.
 */
@implementation TMBPayPal_Payments_VerifyAllPayments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) Your PayPal AppID (or the default AppID for the PayPal sandbox: APP-80W284485P519543T). This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. This is used to authenticate PayPal's REST API.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. This is used to authenticate PayPal's REST API.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, string) The API Password provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProofOfPayment input for this Choreo.
	*(required, json) The proof of payment received from the client SDK. This can be a proof of payment received from the Adaptive Payment API or the REST API.
	 */
	-(void)setProofOfPayment:(NSString*)ProofOfPayment {
		[super setInput:@"ProofOfPayment" toValue:ProofOfPayment];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(conditional, string) The API Signature provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) The API Username provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VerifyAllPayments Choreo.
 */
@implementation TMBPayPal_Payments_VerifyAllPayments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FailureDescription" output from an execution of this Choreo.
	 * @return - NSString* (json) When the payment details indicate that the payment status is not complete, this will contain a JSON dictionary of payment status descriptions.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFailureDescription {
		return [super getOutputByName:@"FailureDescription"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal. This includes the full response from retrieving payment details from either the AdaptivePayments API or the Rest API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "VerificationStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the payment verification. This will set to either "verified" or "unverified" depending on the status of the payment details.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getVerificationStatus {
		return [super getOutputByName:@"VerificationStatus"];
	}
	
@end

/*!
 * Verifies that a payment has been successfully completed.
 */
@implementation TMBPayPal_Payments_VerifyAllPayments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_VerifyAllPayments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/VerifyAllPayments"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_VerifyAllPayments_ResultSet *results = [[[TMBPayPal_Payments_VerifyAllPayments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VerifyAllPayments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_VerifyAllPayments_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_VerifyAllPayments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LookupSale Choreo.
 */
@implementation TMBPayPal_SaleTransactions_LookupSale_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the SaleID input for this Choreo.
	*(required, string) The id of the sale to retrieve.
	 */
	-(void)setSaleID:(NSString*)SaleID {
		[super setInput:@"SaleID" toValue:SaleID];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupSale Choreo.
 */
@implementation TMBPayPal_SaleTransactions_LookupSale_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details about a sale transaction.
 */
@implementation TMBPayPal_SaleTransactions_LookupSale

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_SaleTransactions_LookupSale Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/SaleTransactions/LookupSale"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_SaleTransactions_LookupSale_ResultSet *results = [[[TMBPayPal_SaleTransactions_LookupSale_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupSale Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_SaleTransactions_LookupSale_Inputs*)newInputSet {
		return [[[TMBPayPal_SaleTransactions_LookupSale_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LookupCreditCard Choreo.
 */
@implementation TMBPayPal_Vault_LookupCreditCard_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CreditCardID input for this Choreo.
	*(required, string) The id of the credit card to retrieve.
	 */
	-(void)setCreditCardID:(NSString*)CreditCardID {
		[super setInput:@"CreditCardID" toValue:CreditCardID];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupCreditCard Choreo.
 */
@implementation TMBPayPal_Vault_LookupCreditCard_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details for a specific stored credit card.
 */
@implementation TMBPayPal_Vault_LookupCreditCard

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Vault_LookupCreditCard Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Vault/LookupCreditCard"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Vault_LookupCreditCard_ResultSet *results = [[[TMBPayPal_Vault_LookupCreditCard_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupCreditCard Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Vault_LookupCreditCard_Inputs*)newInputSet {
		return [[[TMBPayPal_Vault_LookupCreditCard_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MakeIndividualPayment Choreo.
 */
@implementation TMBPayPal_Merchant_MakeIndividualPayment_Inputs

	/*!
	 * Set the value of the CurrencyCode input for this Choreo.
	*(optional, string) The currency code associated with the PaymentAmount. Defaults to "USD".
	 */
	-(void)setCurrencyCode:(NSString*)CurrencyCode {
		[super setInput:@"CurrencyCode" toValue:CurrencyCode];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The email address used to identify the recipient of the payment.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the EmailSubject input for this Choreo.
	*(optional, string) The subject line of the email that PayPal sends when the transaction is completed. Character length and limitations: 255 single-byte alphanumeric characters.
	 */
	-(void)setEmailSubject:(NSString*)EmailSubject {
		[super setInput:@"EmailSubject" toValue:EmailSubject];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PaymentAmount input for this Choreo.
	*(required, decimal) The amount to be paid.
	 */
	-(void)setPaymentAmount:(NSString*)PaymentAmount {
		[super setInput:@"PaymentAmount" toValue:PaymentAmount];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MakeIndividualPayment Choreo.
 */
@implementation TMBPayPal_Merchant_MakeIndividualPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Acknowledged" output from an execution of this Choreo.
	 * @return - NSString* (string) Indicates the status of the request. Should contain "Sucess" or "Failure".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAcknowledged {
		return [super getOutputByName:@"Acknowledged"];
	}

	/*!
	 * Retrieve the value of the "CorrelationId" output from an execution of this Choreo.
	 * @return - NSString* (string) A unique id returned by PayPal for this payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCorrelationId {
		return [super getOutputByName:@"CorrelationId"];
	}

	/*!
	 * Retrieve the value of the "ErrorMessage" output from an execution of this Choreo.
	 * @return - NSString* (string) This will contain any error message returned by PayPal during this operation.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getErrorMessage {
		return [super getOutputByName:@"ErrorMessage"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The full response from PayPal formatted in name/value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Timestamp" output from an execution of this Choreo.
	 * @return - NSString* (date) The timestamp associated with the payment request.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTimestamp {
		return [super getOutputByName:@"Timestamp"];
	}
	
@end

/*!
 * Retrieves the available balance for a PayPal account.
 */
@implementation TMBPayPal_Merchant_MakeIndividualPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_MakeIndividualPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/MakeIndividualPayment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_MakeIndividualPayment_ResultSet *results = [[[TMBPayPal_Merchant_MakeIndividualPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MakeIndividualPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_MakeIndividualPayment_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_MakeIndividualPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VerifyCreditCardPayment Choreo.
 */
@implementation TMBPayPal_Payments_VerifyCreditCardPayment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. This is used to authenticate PayPal's REST API.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. This is used to authenticate PayPal's REST API.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ProofOfPayment input for this Choreo.
	*(conditional, json) The proof of payment received from the client SDK. This can be a proof of payment received from the Adaptive Payment API or the REST API.
	 */
	-(void)setProofOfPayment:(NSString*)ProofOfPayment {
		[super setInput:@"ProofOfPayment" toValue:ProofOfPayment];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VerifyCreditCardPayment Choreo.
 */
@implementation TMBPayPal_Payments_VerifyCreditCardPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FailureDescription" output from an execution of this Choreo.
	 * @return - NSString* (json) When the payment details indicate that the payment status is not complete, this will contain a JSON dictionary of payment status descriptions.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFailureDescription {
		return [super getOutputByName:@"FailureDescription"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal. This includes the full response from retrieving payment details from the Rest API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "VerificationStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the payment verification. This will set to either "verified" or "unverified" depending on the status of the payment details.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getVerificationStatus {
		return [super getOutputByName:@"VerificationStatus"];
	}
	
@end

/*!
 * Verifies that a credit card payment from the PayPal REST API has been completed successfully.
 */
@implementation TMBPayPal_Payments_VerifyCreditCardPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_VerifyCreditCardPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/VerifyCreditCardPayment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_VerifyCreditCardPayment_ResultSet *results = [[[TMBPayPal_Payments_VerifyCreditCardPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VerifyCreditCardPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_VerifyCreditCardPayment_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_VerifyCreditCardPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ExecutePayment Choreo.
 */
@implementation TMBPayPal_Payments_ExecutePayment_Inputs

	/*!
	 * Set the value of the PayerID input for this Choreo.
	*(required, string) The id of the user who is making a payment.
	 */
	-(void)setPayerID:(NSString*)PayerID {
		[super setInput:@"PayerID" toValue:PayerID];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the PaymentID input for this Choreo.
	*(required, string) The id of the payment to execute.
	 */
	-(void)setPaymentID:(NSString*)PaymentID {
		[super setInput:@"PaymentID" toValue:PaymentID];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ExecutePayment Choreo.
 */
@implementation TMBPayPal_Payments_ExecutePayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "SaleID" output from an execution of this Choreo.
	 * @return - NSString* (string) The id of the sale that was just executed. This can be used to Lookup the sales transaction if needed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSaleID {
		return [super getOutputByName:@"SaleID"];
	}
	
@end

/*!
 * Executes a PayPal payment that has been accepted and approved.
 */
@implementation TMBPayPal_Payments_ExecutePayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_ExecutePayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/ExecutePayment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_ExecutePayment_ResultSet *results = [[[TMBPayPal_Payments_ExecutePayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ExecutePayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_ExecutePayment_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_ExecutePayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RefundSale Choreo.
 */
@implementation TMBPayPal_SaleTransactions_RefundSale_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Currency input for this Choreo.
	*(required, string) The currency associated with the sale (i.e. USD).
	 */
	-(void)setCurrency:(NSString*)Currency {
		[super setInput:@"Currency" toValue:Currency];
	}

	/*!
	 * Set the value of the SaleID input for this Choreo.
	*(required, string) The id of the sale to retrieve.
	 */
	-(void)setSaleID:(NSString*)SaleID {
		[super setInput:@"SaleID" toValue:SaleID];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the Total input for this Choreo.
	*(required, decimal) The total amount to refund.
	 */
	-(void)setTotal:(NSString*)Total {
		[super setInput:@"Total" toValue:Total];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundSale Choreo.
 */
@implementation TMBPayPal_SaleTransactions_RefundSale_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "RefundID" output from an execution of this Choreo.
	 * @return - NSString* (string) The id of the refund. This can be used to lookup the refund later if needed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRefundID {
		return [super getOutputByName:@"RefundID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows your application to refund a completed payment.
 */
@implementation TMBPayPal_SaleTransactions_RefundSale

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_SaleTransactions_RefundSale Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/SaleTransactions/RefundSale"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_SaleTransactions_RefundSale_ResultSet *results = [[[TMBPayPal_SaleTransactions_RefundSale_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RefundSale Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_SaleTransactions_RefundSale_Inputs*)newInputSet {
		return [[[TMBPayPal_SaleTransactions_RefundSale_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PaymentDetails Choreo.
 */
@implementation TMBPayPal_AdaptivePayments_PaymentDetails_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) Your PayPal AppID (or the default AppID for the PayPal sandbox).
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PayKey input for this Choreo.
	*(conditional, string) The pay key that identifies the payment for which you want to retrieve details. This is the pay key returned in the response of the Pay method.
	 */
	-(void)setPayKey:(NSString*)PayKey {
		[super setInput:@"PayKey" toValue:PayKey];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the TrackingID input for this Choreo.
	*(optional, string) The tracking ID that was specified for this payment in the PayRequest message.
	 */
	-(void)setTrackingID:(NSString*)TrackingID {
		[super setInput:@"TrackingID" toValue:TrackingID];
	}

	/*!
	 * Set the value of the TransactionID input for this Choreo.
	*(optional, string) The PayPal transaction ID associated with the payment. The Instant Payment Notification message associated with the payment contains the transaction ID.
	 */
	-(void)setTransactionID:(NSString*)TransactionID {
		[super setInput:@"TransactionID" toValue:TransactionID];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PaymentDetails Choreo.
 */
@implementation TMBPayPal_AdaptivePayments_PaymentDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccountID" output from an execution of this Choreo.
	 * @return - NSString* (string) The account id of the payment reciever.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccountID {
		return [super getOutputByName:@"AccountID"];
	}

	/*!
	 * Retrieve the value of the "Amount" output from an execution of this Choreo.
	 * @return - NSString* (decimal) The payment amount.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAmount {
		return [super getOutputByName:@"Amount"];
	}

	/*!
	 * Retrieve the value of the "CurrencyCode" output from an execution of this Choreo.
	 * @return - NSString* (string) The currency code for the payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCurrencyCode {
		return [super getOutputByName:@"CurrencyCode"];
	}

	/*!
	 * Retrieve the value of the "Email" output from an execution of this Choreo.
	 * @return - NSString* (string) The receiver email address.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEmail {
		return [super getOutputByName:@"Email"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Status" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getStatus {
		return [super getOutputByName:@"Status"];
	}

	/*!
	 * Retrieve the value of the "TransactionStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The transaction status of the payment.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTransactionStatus {
		return [super getOutputByName:@"TransactionStatus"];
	}
	
@end

/*!
 * Retrieves information about a specific payment.
 */
@implementation TMBPayPal_AdaptivePayments_PaymentDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_AdaptivePayments_PaymentDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/AdaptivePayments/PaymentDetails"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_AdaptivePayments_PaymentDetails_ResultSet *results = [[[TMBPayPal_AdaptivePayments_PaymentDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PaymentDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_AdaptivePayments_PaymentDetails_Inputs*)newInputSet {
		return [[[TMBPayPal_AdaptivePayments_PaymentDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VerifyPayPalPayment Choreo.
 */
@implementation TMBPayPal_Payments_VerifyPayPalPayment_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(conditional, string) Your PayPal AppID (or the default AppID for the PayPal sandbox: APP-80W284485P519543T). This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, string) The API Password provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProofOfPayment input for this Choreo.
	*(required, json) The proof of payment received from the client SDK. This can be a proof of payment received from the Adaptive Payment API or the REST API.
	 */
	-(void)setProofOfPayment:(NSString*)ProofOfPayment {
		[super setInput:@"ProofOfPayment" toValue:ProofOfPayment];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(conditional, string) The API Signature provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) The API Username provided by PayPal. This is used to authenticate PayPal's Adaptive Payments API.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VerifyPayPalPayment Choreo.
 */
@implementation TMBPayPal_Payments_VerifyPayPalPayment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FailureDescription" output from an execution of this Choreo.
	 * @return - NSString* (json) When the payment details indicate that the payment status is not complete, this will contain a JSON dictionary of payment status descriptions.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFailureDescription {
		return [super getOutputByName:@"FailureDescription"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal. This includes the full response from retrieving payment details from the AdaptivePayments API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "VerificationStatus" output from an execution of this Choreo.
	 * @return - NSString* (string) The status of the payment verification. This will set to either "verified" or "unverified" depending on the status of the payment details.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getVerificationStatus {
		return [super getOutputByName:@"VerificationStatus"];
	}
	
@end

/*!
 * Verifies that a PayPal payment from the Adaptive Payments API has been successfully completed.
 */
@implementation TMBPayPal_Payments_VerifyPayPalPayment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Payments_VerifyPayPalPayment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Payments/VerifyPayPalPayment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Payments_VerifyPayPalPayment_ResultSet *results = [[[TMBPayPal_Payments_VerifyPayPalPayment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VerifyPayPalPayment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Payments_VerifyPayPalPayment_Inputs*)newInputSet {
		return [[[TMBPayPal_Payments_VerifyPayPalPayment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RefundTransaction Choreo.
 */
@implementation TMBPayPal_Merchant_RefundTransaction_Inputs

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(optional, decimal) Refund amount. Amount is required if RefundType is set to Partial. If RefundType is set to Full, leave input blank.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the CurrencyCode input for this Choreo.
	*(optional, string) A three-character currency code (i.e. USD). Required for partial refunds. Leave this field blank for full refunds. Defaults to USD.
	 */
	-(void)setCurrencyCode:(NSString*)CurrencyCode {
		[super setInput:@"CurrencyCode" toValue:CurrencyCode];
	}

	/*!
	 * Set the value of the InvoiceID input for this Choreo.
	*(optional, string) Your own invoice or tracking number. Character length limitation is 127 alphanumeric characters.
	 */
	-(void)setInvoiceID:(NSString*)InvoiceID {
		[super setInput:@"InvoiceID" toValue:InvoiceID];
	}

	/*!
	 * Set the value of the Note input for this Choreo.
	*(optional, string) Custom note about the refund. Character length limitation is 255 alphanumeric characters.
	 */
	-(void)setNote:(NSString*)Note {
		[super setInput:@"Note" toValue:Note];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RefundType input for this Choreo.
	*(required, string) The refund type must be set to Full or Partial.  This flag effects what values some other input variables should have. Defaults to Full.
	 */
	-(void)setRefundType:(NSString*)RefundType {
		[super setInput:@"RefundType" toValue:RefundType];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the TransactionID input for this Choreo.
	*(required, string) The ID for the transaction you want to retrieve data for.
	 */
	-(void)setTransactionID:(NSString*)TransactionID {
		[super setInput:@"TransactionID" toValue:TransactionID];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundTransaction Choreo.
 */
@implementation TMBPayPal_Merchant_RefundTransaction_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Response from PayPal formatted in name/value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Issue a refund to a PayPal buyer by specifying a transaction ID.
 */
@implementation TMBPayPal_Merchant_RefundTransaction

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_RefundTransaction Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/RefundTransaction"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_RefundTransaction_ResultSet *results = [[[TMBPayPal_Merchant_RefundTransaction_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RefundTransaction Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_RefundTransaction_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_RefundTransaction_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MassPayments Choreo.
 */
@implementation TMBPayPal_Merchant_MassPayments_Inputs

	/*!
	 * Set the value of the InputFile input for this Choreo.
	*(required, any) An input file containing the payments to process. This data can either be in CSV or XML format. The format should be indicated using the InputFormat input. See Choreo documentation for schema details.
	 */
	-(void)setInputFile:(NSString*)InputFile {
		[super setInput:@"InputFile" toValue:InputFile];
	}

	/*!
	 * Set the value of the EmailSubject input for this Choreo.
	*(optional, string) The subject line of the email that PayPal sends when the transaction is completed. This is the same for all recipients. Character length and limitations: 255 single-byte alphanumeric characters.
	 */
	-(void)setEmailSubject:(NSString*)EmailSubject {
		[super setInput:@"EmailSubject" toValue:EmailSubject];
	}

	/*!
	 * Set the value of the InputFormat input for this Choreo.
	*(required, string) The type of input you are providing for this mass payment. Accepted values are "csv" or "xml". See Choreo documentation for expected schema details.
	 */
	-(void)setInputFormat:(NSString*)InputFormat {
		[super setInput:@"InputFormat" toValue:InputFormat];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The API Password provided by PayPal.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(required, string) The API Signature provided by PayPal.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The API Username provided by PayPal.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the vault file containing your payments in CSV or XML format. This can be used as an alternative to the InputFile input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MassPayments Choreo.
 */
@implementation TMBPayPal_Merchant_MassPayments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Result" output from an execution of this Choreo.
	 * @return - NSString* The MassPayment result from PayPal returned in the same format you've submitted.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResult {
		return [super getOutputByName:@"Result"];
	}
	
@end

/*!
 * Generates multiple payments from your PayPal Premier account or Business account to existing PayPal account holders.
 */
@implementation TMBPayPal_Merchant_MassPayments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Merchant_MassPayments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Merchant/MassPayments"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Merchant_MassPayments_ResultSet *results = [[[TMBPayPal_Merchant_MassPayments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MassPayments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Merchant_MassPayments_Inputs*)newInputSet {
		return [[[TMBPayPal_Merchant_MassPayments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccessToken Choreo.
 */
@implementation TMBPayPal_OAuth_GetAccessToken_Inputs

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by PayPal.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by PayPal.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for (i.e. https://api.paypal.com/v1/payments/.*).
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Defaults to 0.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccessToken Choreo.
 */
@implementation TMBPayPal_OAuth_GetAccessToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The access token retrieved from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time of the access token retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an Access Token from PayPal.
 */
@implementation TMBPayPal_OAuth_GetAccessToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_OAuth_GetAccessToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/OAuth/GetAccessToken"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_OAuth_GetAccessToken_ResultSet *results = [[[TMBPayPal_OAuth_GetAccessToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccessToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_OAuth_GetAccessToken_Inputs*)newInputSet {
		return [[[TMBPayPal_OAuth_GetAccessToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LookupRefund Choreo.
 */
@implementation TMBPayPal_Refunds_LookupRefund_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved from PayPal. Required unless providing the ClientID and ClientSecret which can be used to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by PayPal. Required unless a valid Access Token is provided.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefundID input for this Choreo.
	*(required, string) The id of the refund to retrieve.
	 */
	-(void)setRefundID:(NSString*)RefundID {
		[super setInput:@"RefundID" toValue:RefundID];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A space delimited list of resource URL endpoints that the token should have access for. This is only used when providing the ClientID and Client Secret in order to generate a new access token.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the UseSandbox input for this Choreo.
	*(optional, boolean) Set to 1 to indicate that you're testing against the PayPal sandbox instead of production. Set to 0 (the default) when moving to production.
	 */
	-(void)setUseSandbox:(NSString*)UseSandbox {
		[super setInput:@"UseSandbox" toValue:UseSandbox];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupRefund Choreo.
 */
@implementation TMBPayPal_Refunds_LookupRefund_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new access token retrieved from PayPal when providing the Client ID and Client Secret.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from PayPal.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details about a specific refund.
 */
@implementation TMBPayPal_Refunds_LookupRefund

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPayPal_Refunds_LookupRefund Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/PayPal/Refunds/LookupRefund"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBPayPal_Refunds_LookupRefund_ResultSet *results = [[[TMBPayPal_Refunds_LookupRefund_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupRefund Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPayPal_Refunds_LookupRefund_Inputs*)newInputSet {
		return [[[TMBPayPal_Refunds_LookupRefund_Inputs alloc] init] autorelease];
	}
@end
	