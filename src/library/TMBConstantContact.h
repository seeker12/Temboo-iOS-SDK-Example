/*!
 * @header Temboo iOS SDK ConstantContact classes
 *
 * Execute Choreographies from the Temboo ConstantContact bundle.
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

/*! group TMBConstantContact.UpdateContact Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateContact Choreo.
 */
@interface TMBConstantContact_UpdateContact_Inputs : TMBChoreographyInputSet
	-(void)setUpdatedContactXML:(NSString*)UpdatedContactXML;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setContactId:(NSString*)ContactId;
	-(void)setListId:(NSString*)ListId;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateContact Choreo.
 */
@interface TMBConstantContact_UpdateContact_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing contact in your Constant Contact system when you supply a contact ID to the Choreo.
 */
@interface TMBConstantContact_UpdateContact : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_UpdateContact_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_UpdateContact Choreo */


/*! group TMBConstantContact.ListAllContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllContacts Choreo.
 */
@interface TMBConstantContact_ListAllContacts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllContacts Choreo.
 */
@interface TMBConstantContact_ListAllContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all contacts from Constant Contact.
 */
@interface TMBConstantContact_ListAllContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_ListAllContacts_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_ListAllContacts Choreo */


/*! group TMBConstantContact.CreateContact Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateContact Choreo.
 */
@interface TMBConstantContact_CreateContact_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAddr1:(NSString*)Addr1;
	-(void)setAddr2:(NSString*)Addr2;
	-(void)setAddr3:(NSString*)Addr3;
	-(void)setCity:(NSString*)City;
	-(void)setCompanyName:(NSString*)CompanyName;
	-(void)setCountryCode:(NSString*)CountryCode;
	-(void)setCountryName:(NSString*)CountryName;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setEmailType:(NSString*)EmailType;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setHomePhone:(NSString*)HomePhone;
	-(void)setJobTitle:(NSString*)JobTitle;
	-(void)setLastName:(NSString*)LastName;
	-(void)setListId:(NSString*)ListId;
	-(void)setMiddleName:(NSString*)MiddleName;
	-(void)setName:(NSString*)Name;
	-(void)setNote:(NSString*)Note;
	-(void)setPassword:(NSString*)Password;
	-(void)setPostalCode:(NSString*)PostalCode;
	-(void)setStateCode:(NSString*)StateCode;
	-(void)setStateName:(NSString*)StateName;
	-(void)setStatus:(NSString*)Status;
	-(void)setSubPostalCode:(NSString*)SubPostalCode;
	-(void)setUserName:(NSString*)UserName;
	-(void)setWorkPhone:(NSString*)WorkPhone;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateContact Choreo.
 */
@interface TMBConstantContact_CreateContact_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a contact in your Constant Contact account.
 */
@interface TMBConstantContact_CreateContact : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_CreateContact_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_CreateContact Choreo */


/*! group TMBConstantContact.AddMultipleContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddMultipleContacts Choreo.
 */
@interface TMBConstantContact_AddMultipleContacts_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setListId:(NSString*)ListId;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserName:(NSString*)UserName;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddMultipleContacts Choreo.
 */
@interface TMBConstantContact_AddMultipleContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates multiple contacts in your Constant Contact list via the Activities bulk API.  The Choreo can use Excel or CSV files for the bulk upload.
 */
@interface TMBConstantContact_AddMultipleContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_AddMultipleContacts_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_AddMultipleContacts Choreo */


/*! group TMBConstantContact.SearchContactsByEmail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchContactsByEmail Choreo.
 */
@interface TMBConstantContact_SearchContactsByEmail_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchContactsByEmail Choreo.
 */
@interface TMBConstantContact_SearchContactsByEmail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search Constant Contact by email to retrieve a contact's information.
 */
@interface TMBConstantContact_SearchContactsByEmail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_SearchContactsByEmail_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_SearchContactsByEmail Choreo */


/*! group TMBConstantContact.SearchContactsByUpdatedSince Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchContactsByUpdatedSince Choreo.
 */
@interface TMBConstantContact_SearchContactsByUpdatedSince_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setListType:(NSString*)ListType;
	-(void)setPassword:(NSString*)Password;
	-(void)setUpdatedSince:(NSString*)UpdatedSince;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchContactsByUpdatedSince Choreo.
 */
@interface TMBConstantContact_SearchContactsByUpdatedSince_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches your Constant Contact list by last updated date.  Use this Choreo for synchronizing your lists with other systems. 
 */
@interface TMBConstantContact_SearchContactsByUpdatedSince : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_SearchContactsByUpdatedSince_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_SearchContactsByUpdatedSince Choreo */


/*! group TMBConstantContact.ObtainContactInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObtainContactInformation Choreo.
 */
@interface TMBConstantContact_ObtainContactInformation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setContactId:(NSString*)ContactId;
	-(void)setPassword:(NSString*)Password;
	-(void)setUserName:(NSString*)UserName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObtainContactInformation Choreo.
 */
@interface TMBConstantContact_ObtainContactInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves contact information from Constant Contact by specifying the contact ID.
 */
@interface TMBConstantContact_ObtainContactInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBConstantContact_ObtainContactInformation_Inputs*)newInputSet;
@end

/*! group TMBConstantContact_ObtainContactInformation Choreo */
