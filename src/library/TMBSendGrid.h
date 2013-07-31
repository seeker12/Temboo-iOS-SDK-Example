/*!
 * @header Temboo iOS SDK SendGrid classes
 *
 * Execute Choreographies from the Temboo SendGrid bundle.
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

/*! group TMBSendGrid.NewsletterAPI.Identity.EditIdentity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditIdentity Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_EditIdentity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAddress:(NSString*)Address;
	-(void)setCity:(NSString*)City;
	-(void)setCountry:(NSString*)Country;
	-(void)setEmail:(NSString*)Email;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setName:(NSString*)Name;
	-(void)setNewIdentity:(NSString*)NewIdentity;
	-(void)setReplyTo:(NSString*)ReplyTo;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditIdentity Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_EditIdentity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Edit a newsletter identity.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_EditIdentity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Identity_EditIdentity_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Identity_EditIdentity Choreo */


/*! group TMBSendGrid.WebAPI.Statistics.GetAllTimeCategoryTotals Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllTimeCategoryTotals Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAggregate:(NSString*)Aggregate;
	-(void)setCategory:(NSString*)Category;
	-(void)setDays:(NSString*)Days;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllTimeCategoryTotals Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain statistics by specified categories.
 */
@interface TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Statistics_GetAllTimeCategoryTotals Choreo */


/*! group TMBSendGrid.NewsletterAPI.Newsletter.GetNewsletterContent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNewsletterContent Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewsletterContent Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve contents of a specified newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Newsletter_GetNewsletterContent Choreo */


/*! group TMBSendGrid.WebAPI.Bounces.DeleteBouncedAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBouncedAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setType:(NSString*)Type;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBouncedAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete an address from the bounced email list.
 */
@interface TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Bounces_DeleteBouncedAddress Choreo */


/*! group TMBSendGrid.NewsletterAPI.Identity.CreateIdentity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateIdentity Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAddress:(NSString*)Address;
	-(void)setCity:(NSString*)City;
	-(void)setCountry:(NSString*)Country;
	-(void)setEmail:(NSString*)Email;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setName:(NSString*)Name;
	-(void)setReplyTo:(NSString*)ReplyTo;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateIdentity Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create a new identity.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_CreateIdentity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Identity_CreateIdentity Choreo */


/*! group TMBSendGrid.NewsletterAPI.Lists.CreateRecipientList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setColumnName:(NSString*)ColumnName;
	-(void)setList:(NSString*)List;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create a new recipient list.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Lists_CreateRecipientList Choreo */


/*! group TMBSendGrid.WebAPI.Unsubscribes.GetUnsubscribesList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUnsubscribesList Choreo.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setDate:(NSString*)Date;
	-(void)setDays:(NSString*)Days;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUnsubscribesList Choreo.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of Unsubscribes with addresses and dates. 
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Unsubscribes_GetUnsubscribesList Choreo */


/*! group TMBSendGrid.NewsletterAPI.Lists.GetAllRecipientLists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllRecipientLists Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setList:(NSString*)List;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllRecipientLists Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve all Recipient Lists.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Lists_GetAllRecipientLists Choreo */


/*! group TMBSendGrid.WebAPI.Statistics.RetrieveAggregates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveAggregates Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAggregate:(NSString*)Aggregate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveAggregates Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve all-time total usage statistics for your subusers
 */
@interface TMBSendGrid_WebAPI_Statistics_RetrieveAggregates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Statistics_RetrieveAggregates Choreo */


/*! group TMBSendGrid.NewsletterAPI.Lists.RenameRecipientList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RenameRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setList:(NSString*)List;
	-(void)setNewList:(NSString*)NewList;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Rename a recipient list.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Lists_RenameRecipientList Choreo */


/*! group TMBSendGrid.NewsletterAPI.Identity.ListAllIdentities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllIdentities Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllIdentities Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve information about a specified Identity.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Identity_ListAllIdentities Choreo */


/*! group TMBSendGrid.WebAPI.FilterCommands.ActivateApp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ActivateApp Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_ActivateApp_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAppName:(NSString*)AppName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ActivateApp Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_ActivateApp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Activate an app.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_ActivateApp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_FilterCommands_ActivateApp_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.FilterCommands_ActivateApp Choreo */


/*! group TMBSendGrid.WebAPI.FilterCommands.ListAvailableApps Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAvailableApps Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAvailableApps Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * List all availalbe apps available through the SendGrid Web API.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.FilterCommands_ListAvailableApps Choreo */


/*! group TMBSendGrid.NewsletterAPI.Recipients.GetAttachedRecipientLists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAttachedRecipientLists Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAttachedRecipientLists Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve Recipient Lists attached to a specified newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Recipients_GetAttachedRecipientLists Choreo */


/*! group TMBSendGrid.NewsletterAPI.ListsEmail.GetListEmailAddresses Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetListEmailAddresses Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmail:(NSString*)Email;
	-(void)setList:(NSString*)List;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListEmailAddresses Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve email addresses associated with a specified Recipient List.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.ListsEmail_GetListEmailAddresses Choreo */


/*! group TMBSendGrid.WebAPI.Unsubscribes.AddAddressToUnsubscribesList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddAddressToUnsubscribesList Choreo.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmail:(NSString*)Email;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddAddressToUnsubscribesList Choreo.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add an address to the Unsubscribe list.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Unsubscribes_AddAddressToUnsubscribesList Choreo */


/*! group TMBSendGrid.WebAPI.FilterCommands.GetAppSettings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAppSettings Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAppName:(NSString*)AppName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAppSettings Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain settings for the specified app.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_GetAppSettings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.FilterCommands_GetAppSettings Choreo */


/*! group TMBSendGrid.NewsletterAPI.Newsletter.EditNewsletter Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setHTML:(NSString*)HTML;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setName:(NSString*)Name;
	-(void)setNewName:(NSString*)NewName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubject:(NSString*)Subject;
	-(void)setText:(NSString*)Text;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Edit an existing newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Newsletter_EditNewsletter Choreo */


/*! group TMBSendGrid.WebAPI.SpamReports.DeleteEmailAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEmailAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmail:(NSString*)Email;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEmailAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete an email address from the spam reports list.

 */
@interface TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.SpamReports_DeleteEmailAddress Choreo */


/*! group TMBSendGrid.NewsletterAPI.Newsletter.ListAllNewsletters Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllNewsletters Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllNewsletters Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of all newsletters in this account.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Newsletter_ListAllNewsletters Choreo */


/*! group TMBSendGrid.WebAPI.Profile.ViewAccountProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ViewAccountProfile Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_ViewAccountProfile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ViewAccountProfile Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_ViewAccountProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Display account profile information.
 */
@interface TMBSendGrid_WebAPI_Profile_ViewAccountProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Profile_ViewAccountProfile_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Profile_ViewAccountProfile Choreo */


/*! group TMBSendGrid.NewsletterAPI.Schedule.DeleteScheduledDeliveryTime Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteScheduledDeliveryTime Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteScheduledDeliveryTime Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a scheduled Newsletter delivery time.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Schedule_DeleteScheduledDeliveryTime Choreo */


/*! group TMBSendGrid.WebAPI.Unsubscribes.DeleteFromUnsubscribesList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFromUnsubscribesList Choreo.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFromUnsubscribesList Choreo.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete an address from the Unsubscribe list.
 */
@interface TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Unsubscribes_DeleteFromUnsubscribesList Choreo */


/*! group TMBSendGrid.WebAPI.Blocks.DeleteBlockedAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBlockedAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBlockedAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete an address from the blocked email list.
 */
@interface TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Blocks_DeleteBlockedAddress Choreo */


/*! group TMBSendGrid.NewsletterAPI.ListsEmail.DeleteEmailFromList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEmailFromList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmail:(NSString*)Email;
	-(void)setList:(NSString*)List;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEmailFromList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete an email address from a specified Recipient List.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.ListsEmail_DeleteEmailFromList Choreo */


/*! group TMBSendGrid.WebAPI.FilterCommands.SetupApp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SetupApp Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_SetupApp_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAppName:(NSString*)AppName;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetupApp Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_SetupApp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets up a previously activated app.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_SetupApp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_FilterCommands_SetupApp_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.FilterCommands_SetupApp Choreo */


/*! group TMBSendGrid.NewsletterAPI.Lists.DeleteRecipientList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setList:(NSString*)List;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a Recipient List.
 */
@interface TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Lists_DeleteRecipientList Choreo */


/*! group TMBSendGrid.WebAPI.InvalidEmails.DeleteInvalidAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInvalidAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setEmailAddressToDelete:(NSString*)EmailAddressToDelete;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInvalidAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete an address from the Invalid Email list.
 */
@interface TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.InvalidEmails_DeleteInvalidAddress Choreo */


/*! group TMBSendGrid.WebAPI.InvalidEmails.RetrieveInvalidEmails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvalidEmails Choreo.
 */
@interface TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setDate:(NSString*)Date;
	-(void)setDays:(NSString*)Days;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvalidEmails Choreo.
 */
@interface TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of invalid emails with addresses, response codes, and dates.
 */
@interface TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.InvalidEmails_RetrieveInvalidEmails Choreo */


/*! group TMBSendGrid.NewsletterAPI.Schedule.GetNewsletterScheduleTime Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNewsletterScheduleTime Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewsletterScheduleTime Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get the scheduled delivery time of a specified Newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Schedule_GetNewsletterScheduleTime Choreo */


/*! group TMBSendGrid.NewsletterAPI.Recipients.DeleteRecipientListFromNewsletter Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecipientListFromNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setList:(NSString*)List;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecipientListFromNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete Recipient Lists from a Newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Recipients_DeleteRecipientListFromNewsletter Choreo */


/*! group TMBSendGrid.WebAPI.Profile.UpdateAccountProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccountProfile Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAddress:(NSString*)Address;
	-(void)setCity:(NSString*)City;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setLastName:(NSString*)LastName;
	-(void)setPhone:(NSString*)Phone;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setWebsite:(NSString*)Website;
	-(void)setZip:(NSString*)Zip;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccountProfile Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Update a SendGrid account profile.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateAccountProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Profile_UpdateAccountProfile Choreo */


/*! group TMBSendGrid.WebAPI.Statistics.ListAllCategories Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCategories Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_ListAllCategories_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCategories Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_ListAllCategories_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of all the categories used in a SendGrid account.
 */
@interface TMBSendGrid_WebAPI_Statistics_ListAllCategories : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Statistics_ListAllCategories_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Statistics_ListAllCategories Choreo */


/*! group TMBSendGrid.NewsletterAPI.Newsletter.CreateNewsletter Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setHTML:(NSString*)HTML;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubject:(NSString*)Subject;
	-(void)setText:(NSString*)Text;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create a new newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Newsletter_CreateNewsletter Choreo */


/*! group TMBSendGrid.NewsletterAPI.Schedule.ScheduleNewsletterDelivery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ScheduleNewsletterDelivery Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAfter:(NSString*)After;
	-(void)setAt:(NSString*)At;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ScheduleNewsletterDelivery Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Schedule a delivery time for an existing Newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Schedule_ScheduleNewsletterDelivery Choreo */


/*! group TMBSendGrid.WebAPI.FilterCommands.DeactivateApp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeactivateApp Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setAppName:(NSString*)AppName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeactivateApp Choreo.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deactivate an app.
 */
@interface TMBSendGrid_WebAPI_FilterCommands_DeactivateApp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.FilterCommands_DeactivateApp Choreo */


/*! group TMBSendGrid.WebAPI.Profile.UpdateContactProfileEmailAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateContactProfileEmailAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setNewEmailAddress:(NSString*)NewEmailAddress;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateContactProfileEmailAddress Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Update an account username.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Profile_UpdateContactProfileEmailAddress Choreo */


/*! group TMBSendGrid.WebAPI.Blocks.GetBlockedAddresses Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBlockedAddresses Choreo.
 */
@interface TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setDate:(NSString*)Date;
	-(void)setDays:(NSString*)Days;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBlockedAddresses Choreo.
 */
@interface TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of blocked emails, with response codes, and optional dates.
 */
@interface TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Blocks_GetBlockedAddresses Choreo */


/*! group TMBSendGrid.NewsletterAPI.Recipients.AddRecipientList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setList:(NSString*)List;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddRecipientList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add one or more recipient lists to a newsletter.
 */
@interface TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Recipients_AddRecipientList Choreo */


/*! group TMBSendGrid.WebAPI.Statistics.GetCategoryStatistics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCategoryStatistics Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setCategory:(NSString*)Category;
	-(void)setDays:(NSString*)Days;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCategoryStatistics Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain statistics by specified categories.
 */
@interface TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Statistics_GetCategoryStatistics Choreo */


/*! group TMBSendGrid.WebAPI.Profile.UpdateUsername Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUsername Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateUsername_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setNewUsername:(NSString*)NewUsername;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUsername Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateUsername_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Update an account username.
 */
@interface TMBSendGrid_WebAPI_Profile_UpdateUsername : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Profile_UpdateUsername_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Profile_UpdateUsername Choreo */


/*! group TMBSendGrid.NewsletterAPI.Identity.GetIdentityInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetIdentityInfo Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetIdentityInfo Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve information about a specified Identity.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Identity_GetIdentityInfo Choreo */


/*! group TMBSendGrid.NewsletterAPI.Newsletter.DeleteNewsletter Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteNewsletter Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Remove a newsletter from the account.
 */
@interface TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Newsletter_DeleteNewsletter Choreo */


/*! group TMBSendGrid.WebAPI.Profile.ResetPassword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ResetPassword Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_ResetPassword_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setConfirmPassword:(NSString*)ConfirmPassword;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ResetPassword Choreo.
 */
@interface TMBSendGrid_WebAPI_Profile_ResetPassword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Reset a SendGrid account password.
 */
@interface TMBSendGrid_WebAPI_Profile_ResetPassword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Profile_ResetPassword_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Profile_ResetPassword Choreo */


/*! group TMBSendGrid.WebAPI.Mail.SendMail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendMail Choreo.
 */
@interface TMBSendGrid_WebAPI_Mail_SendMail_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setBCC:(NSString*)BCC;
	-(void)setDate:(NSString*)Date;
	-(void)setFileName:(NSString*)FileName;
	-(void)setFromName:(NSString*)FromName;
	-(void)setFrom:(NSString*)From;
	-(void)setHTML:(NSString*)HTML;
	-(void)setHeaders:(NSString*)Headers;
	-(void)setReplyTo:(NSString*)ReplyTo;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubject:(NSString*)Subject;
	-(void)setText:(NSString*)Text;
	-(void)setToName:(NSString*)ToName;
	-(void)setTo:(NSString*)To;
	-(void)setXSMTPAPI:(NSString*)XSMTPAPI;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMail Choreo.
 */
@interface TMBSendGrid_WebAPI_Mail_SendMail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to send emails.
 */
@interface TMBSendGrid_WebAPI_Mail_SendMail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Mail_SendMail_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Mail_SendMail Choreo */


/*! group TMBSendGrid.WebAPI.Statistics.RetrieveStatistics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveStatistics Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setDays:(NSString*)Days;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveStatistics Choreo.
 */
@interface TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve usage statistics.

 */
@interface TMBSendGrid_WebAPI_Statistics_RetrieveStatistics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Statistics_RetrieveStatistics Choreo */


/*! group TMBSendGrid.NewsletterAPI.ListsEmail.AddEmailToList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddEmailToList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setData:(NSString*)Data;
	-(void)setList:(NSString*)List;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddEmailToList Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add an email to an existing Recipient List.
 */
@interface TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.ListsEmail_AddEmailToList Choreo */


/*! group TMBSendGrid.NewsletterAPI.Identity.DeleteIdentity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteIdentity Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_Inputs : TMBChoreographyInputSet
	-(void)setResponse:(NSString*)Response;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setIdentity:(NSString*)Identity;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteIdentity Choreo.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	
@end

/*!
 * Delete an Identity.
 */
@interface TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.NewsletterAPI.Identity_DeleteIdentity Choreo */


/*! group TMBSendGrid.WebAPI.Bounces.GetBounces Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBounces Choreo.
 */
@interface TMBSendGrid_WebAPI_Bounces_GetBounces_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setDate:(NSString*)Date;
	-(void)setDays:(NSString*)Days;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setType:(NSString*)Type;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBounces Choreo.
 */
@interface TMBSendGrid_WebAPI_Bounces_GetBounces_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of bounced emails, with response codes, and optional dates.
 */
@interface TMBSendGrid_WebAPI_Bounces_GetBounces : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_Bounces_GetBounces_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.Bounces_GetBounces Choreo */


/*! group TMBSendGrid.WebAPI.SpamReports.GetSpamReports Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSpamReports Choreo.
 */
@interface TMBSendGrid_WebAPI_SpamReports_GetSpamReports_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPIUser:(NSString*)APIUser;
	-(void)setDate:(NSString*)Date;
	-(void)setDays:(NSString*)Days;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSpamReports Choreo.
 */
@interface TMBSendGrid_WebAPI_SpamReports_GetSpamReports_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain a list of spam reports, with email addresses, response codes, and dates.

 */
@interface TMBSendGrid_WebAPI_SpamReports_GetSpamReports : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSendGrid_WebAPI_SpamReports_GetSpamReports_Inputs*)newInputSet;
@end

/*! group TMBSendGrid.WebAPI.SpamReports_GetSpamReports Choreo */
