/*!
 * @header Temboo iOS SDK Dwolla classes
 *
 * Execute Choreographies from the Temboo Dwolla bundle.
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

/*! group TMBDwolla.FundingSources.FundingSourcesListing Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FundingSourcesListing Choreo.
 */
@interface TMBDwolla_FundingSources_FundingSourcesListing_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FundingSourcesListing Choreo.
 */
@interface TMBDwolla_FundingSources_FundingSourcesListing_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of verified funding sources for the user associated with the authorized access token.
 */
@interface TMBDwolla_FundingSources_FundingSourcesListing : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_FundingSources_FundingSourcesListing_Inputs*)newInputSet;
@end

/*! group TMBDwolla.FundingSources_FundingSourcesListing Choreo */


/*! group TMBDwolla.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBDwolla_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setScope:(NSString*)Scope;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBDwolla_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL and callback ID that an application can use to complete the first step in the OAuth process.
 */
@interface TMBDwolla_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBDwolla.OAuth_InitializeOAuth Choreo */


/*! group TMBDwolla.Users.Basic Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Basic Choreo.
 */
@interface TMBDwolla_Users_Basic_Inputs : TMBChoreographyInputSet
	-(void)setAccountIdentifier:(NSString*)AccountIdentifier;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Basic Choreo.
 */
@interface TMBDwolla_Users_Basic_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the Dwolla account information for the user associated with the specified consumer credentials and Dwolla account identifier.
 */
@interface TMBDwolla_Users_Basic : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Users_Basic_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Users_Basic Choreo */


/*! group TMBDwolla.FundingSources.FundingSourcesByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FundingSourcesByID Choreo.
 */
@interface TMBDwolla_FundingSources_FundingSourcesByID_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFundingID:(NSString*)FundingID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FundingSourcesByID Choreo.
 */
@interface TMBDwolla_FundingSources_FundingSourcesByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the account information for the user associated with the given authorized access token.
 */
@interface TMBDwolla_FundingSources_FundingSourcesByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_FundingSources_FundingSourcesByID_Inputs*)newInputSet;
@end

/*! group TMBDwolla.FundingSources_FundingSourcesByID Choreo */


/*! group TMBDwolla.Balance.GetBalance Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBalance Choreo.
 */
@interface TMBDwolla_Balance_GetBalance_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBalance Choreo.
 */
@interface TMBDwolla_Balance_GetBalance_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the account balance for the user associated with the given authorized access token.
 */
@interface TMBDwolla_Balance_GetBalance : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Balance_GetBalance_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Balance_GetBalance Choreo */


/*! group TMBDwolla.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBDwolla_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBDwolla_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;	
@end

/*!
 * Completes the OAuth process by retrieving a Dwolla access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBDwolla_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBDwolla.OAuth_FinalizeOAuth Choreo */


/*! group TMBDwolla.Contacts.UserContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UserContacts Choreo.
 */
@interface TMBDwolla_Contacts_UserContacts_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setSearch:(NSString*)Search;
	-(void)setTypes:(NSString*)Types;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserContacts Choreo.
 */
@interface TMBDwolla_Contacts_UserContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the information for contacts for the user assoicated with the authorized access token.
 */
@interface TMBDwolla_Contacts_UserContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Contacts_UserContacts_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Contacts_UserContacts Choreo */


/*! group TMBDwolla.Transactions.Request Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Request Choreo.
 */
@interface TMBDwolla_Transactions_Request_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAmount:(NSString*)Amount;
	-(void)setFacillitatorAmount:(NSString*)FacillitatorAmount;
	-(void)setNotes:(NSString*)Notes;
	-(void)setPin:(NSString*)Pin;
	-(void)setSourceID:(NSString*)SourceID;
	-(void)setSourceType:(NSString*)SourceType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Request Choreo.
 */
@interface TMBDwolla_Transactions_Request_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Use this method to request funds from a source user, originating from the user associated with the authorized access token.
 */
@interface TMBDwolla_Transactions_Request : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Transactions_Request_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Transactions_Request Choreo */


/*! group TMBDwolla.Users.Account Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Account Choreo.
 */
@interface TMBDwolla_Users_Account_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Account Choreo.
 */
@interface TMBDwolla_Users_Account_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the account information for the user associated with the given authorized access token.
 */
@interface TMBDwolla_Users_Account : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Users_Account_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Users_Account Choreo */


/*! group TMBDwolla.Transactions.Send Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Send Choreo.
 */
@interface TMBDwolla_Transactions_Send_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAmount:(NSString*)Amount;
	-(void)setAssumeCosts:(NSString*)AssumeCosts;
	-(void)setDestinationId:(NSString*)DestinationId;
	-(void)setDestinationType:(NSString*)DestinationType;
	-(void)setFacillitatorAmount:(NSString*)FacillitatorAmount;
	-(void)setFundsSource:(NSString*)FundsSource;
	-(void)setNotes:(NSString*)Notes;
	-(void)setPin:(NSString*)Pin;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Send Choreo.
 */
@interface TMBDwolla_Transactions_Send_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Use this method to send funds to a destination user, from the user associated with the authorized access token.
 */
@interface TMBDwolla_Transactions_Send : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Transactions_Send_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Transactions_Send Choreo */


/*! group TMBDwolla.Contacts.NearbyContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NearbyContacts Choreo.
 */
@interface TMBDwolla_Contacts_NearbyContacts_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRange:(NSString*)Range;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NearbyContacts Choreo.
 */
@interface TMBDwolla_Contacts_NearbyContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves nearby Dwolla spots within the range of the provided latitude and longitude.
 */
@interface TMBDwolla_Contacts_NearbyContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Contacts_NearbyContacts_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Contacts_NearbyContacts Choreo */


/*! group TMBDwolla.Transactions.Listing Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Listing Choreo.
 */
@interface TMBDwolla_Transactions_Listing_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setSinceDate:(NSString*)SinceDate;
	-(void)setSkip:(NSString*)Skip;
	-(void)setTypes:(NSString*)Types;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Listing Choreo.
 */
@interface TMBDwolla_Transactions_Listing_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of transactions for the user associated with the authorized access token.
 */
@interface TMBDwolla_Transactions_Listing : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Transactions_Listing_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Transactions_Listing Choreo */


/*! group TMBDwolla.Transactions.ByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByID Choreo.
 */
@interface TMBDwolla_Transactions_ByID_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setTransactionID:(NSString*)TransactionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByID Choreo.
 */
@interface TMBDwolla_Transactions_ByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the account information about the specified transaction by Transaction ID.
 */
@interface TMBDwolla_Transactions_ByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Transactions_ByID_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Transactions_ByID Choreo */


/*! group TMBDwolla.Transactions.Stats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Stats Choreo.
 */
@interface TMBDwolla_Transactions_Stats_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTypes:(NSString*)Types;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Stats Choreo.
 */
@interface TMBDwolla_Transactions_Stats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the account information for the user associated with the given authorized access token.
 */
@interface TMBDwolla_Transactions_Stats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDwolla_Transactions_Stats_Inputs*)newInputSet;
@end

/*! group TMBDwolla.Transactions_Stats Choreo */
