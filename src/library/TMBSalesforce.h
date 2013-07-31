/*!
 * @header Temboo iOS SDK Salesforce classes
 *
 * Execute Choreographies from the Temboo Salesforce bundle.
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

/*! group TMBSalesforce.CreateAccountObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccountObject Choreo.
 */
@interface TMBSalesforce_CreateAccountObject_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setSecurityToken:(NSString*)SecurityToken;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccountObject Choreo.
 */
@interface TMBSalesforce_CreateAccountObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates new account object.
 */
@interface TMBSalesforce_CreateAccountObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSalesforce_CreateAccountObject_Inputs*)newInputSet;
@end

/*! group TMBSalesforce_CreateAccountObject Choreo */


/*! group TMBSalesforce.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBSalesforce_Query_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setQuery:(NSString*)Query;
	-(void)setSecurityToken:(NSString*)SecurityToken;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBSalesforce_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Executes a query against a Salesforce object and returns data that matches the specified criteria.
 */
@interface TMBSalesforce_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSalesforce_Query_Inputs*)newInputSet;
@end

/*! group TMBSalesforce_Query Choreo */


/*! group TMBSalesforce.UpdateAccountObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccountObject Choreo.
 */
@interface TMBSalesforce_UpdateAccountObject_Inputs : TMBChoreographyInputSet
	-(void)setAccountId:(NSString*)AccountId;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setPassword:(NSString*)Password;
	-(void)setSecurityToken:(NSString*)SecurityToken;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccountObject Choreo.
 */
@interface TMBSalesforce_UpdateAccountObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an Account Object name.
 */
@interface TMBSalesforce_UpdateAccountObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSalesforce_UpdateAccountObject_Inputs*)newInputSet;
@end

/*! group TMBSalesforce_UpdateAccountObject Choreo */


/*! group TMBSalesforce.DeleteObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@interface TMBSalesforce_DeleteObject_Inputs : TMBChoreographyInputSet
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setSecurityToken:(NSString*)SecurityToken;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@interface TMBSalesforce_DeleteObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified Salesforce Object.
 */
@interface TMBSalesforce_DeleteObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSalesforce_DeleteObject_Inputs*)newInputSet;
@end

/*! group TMBSalesforce_DeleteObject Choreo */


/*! group TMBSalesforce.BatchCSVInsert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the BatchCSVInsert Choreo.
 */
@interface TMBSalesforce_BatchCSVInsert_Inputs : TMBChoreographyInputSet
	-(void)setCSVInput:(NSString*)CSVInput;
	-(void)setPassword:(NSString*)Password;
	-(void)setSalesforceObjectType:(NSString*)SalesforceObjectType;
	-(void)setSecurityToken:(NSString*)SecurityToken;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultCSVFile:(NSString*)VaultCSVFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BatchCSVInsert Choreo.
 */
@interface TMBSalesforce_BatchCSVInsert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create Salesforce Objects of any type (Account, Lead, Contact, etc) by specifying rows in CSV format.
 */
@interface TMBSalesforce_BatchCSVInsert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSalesforce_BatchCSVInsert_Inputs*)newInputSet;
@end

/*! group TMBSalesforce_BatchCSVInsert Choreo */
