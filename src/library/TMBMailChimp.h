/*!
 * @header Temboo iOS SDK MailChimp classes
 *
 * Execute Choreographies from the Temboo MailChimp bundle.
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

/*! group TMBMailChimp.ListBatchSubscribe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchSubscribe Choreo.
 */
@interface TMBMailChimp_ListBatchSubscribe_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDoubleOptIn:(NSString*)DoubleOptIn;
	-(void)setEmailType:(NSString*)EmailType;
	-(void)setListId:(NSString*)ListId;
	-(void)setReplaceInterests:(NSString*)ReplaceInterests;
	-(void)setSendWelcome:(NSString*)SendWelcome;
	-(void)setSubscribers:(NSString*)Subscribers;
	-(void)setSupressErrors:(NSString*)SupressErrors;
	-(void)setUpdateExisting:(NSString*)UpdateExisting;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchSubscribe Choreo.
 */
@interface TMBMailChimp_ListBatchSubscribe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getErrorList;
	-(NSString*)getSuccessList;	
@end

/*!
 * Adds or updates multiple Mailchimp list subscribers.
 */
@interface TMBMailChimp_ListBatchSubscribe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListBatchSubscribe_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListBatchSubscribe Choreo */


/*! group TMBMailChimp.ListMergeVarAdd Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMergeVarAdd Choreo.
 */
@interface TMBMailChimp_ListMergeVarAdd_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setChoices:(NSString*)Choices;
	-(void)setDateFormat:(NSString*)DateFormat;
	-(void)setDefaultCountry:(NSString*)DefaultCountry;
	-(void)setDefaultValue:(NSString*)DefaultValue;
	-(void)setFieldType:(NSString*)FieldType;
	-(void)setListId:(NSString*)ListId;
	-(void)setName:(NSString*)Name;
	-(void)setPhoneFormat:(NSString*)PhoneFormat;
	-(void)setPublic:(NSString*)Public;
	-(void)setReq:(NSString*)Req;
	-(void)setShow:(NSString*)Show;
	-(void)setTag:(NSString*)Tag;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMergeVarAdd Choreo.
 */
@interface TMBMailChimp_ListMergeVarAdd_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add a new field to a MailChimp list.
 */
@interface TMBMailChimp_ListMergeVarAdd : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListMergeVarAdd_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListMergeVarAdd Choreo */


/*! group TMBMailChimp.ListBatchUnsubscribe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchUnsubscribe Choreo.
 */
@interface TMBMailChimp_ListBatchUnsubscribe_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDeleteMember:(NSString*)DeleteMember;
	-(void)setEmail:(NSString*)Email;
	-(void)setListId:(NSString*)ListId;
	-(void)setSendGoodbye:(NSString*)SendGoodbye;
	-(void)setSendNotify:(NSString*)SendNotify;
	-(void)setSupressErrors:(NSString*)SupressErrors;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchUnsubscribe Choreo.
 */
@interface TMBMailChimp_ListBatchUnsubscribe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getErrorList;
	-(NSString*)getSuccessList;	
@end

/*!
 * Unsubscribes one or more members from a MailChimp list.
 */
@interface TMBMailChimp_ListBatchUnsubscribe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListBatchUnsubscribe_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListBatchUnsubscribe Choreo */


/*! group TMBMailChimp.ListBatchUnsubscribeCSV Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchUnsubscribeCSV Choreo.
 */
@interface TMBMailChimp_ListBatchUnsubscribeCSV_Inputs : TMBChoreographyInputSet
	-(void)setCSVFile:(NSString*)CSVFile;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDeleteMember:(NSString*)DeleteMember;
	-(void)setListId:(NSString*)ListId;
	-(void)setSendGoodbye:(NSString*)SendGoodbye;
	-(void)setSendNotify:(NSString*)SendNotify;
	-(void)setSupressErrors:(NSString*)SupressErrors;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchUnsubscribeCSV Choreo.
 */
@interface TMBMailChimp_ListBatchUnsubscribeCSV_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getErrorList;
	-(NSString*)getSuccessList;	
@end

/*!
 * Unsubscribes one or more members listed in a CSV file from a MailChimp list.
 */
@interface TMBMailChimp_ListBatchUnsubscribeCSV : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListBatchUnsubscribeCSV_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListBatchUnsubscribeCSV Choreo */


/*! group TMBMailChimp.Ping Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Ping Choreo.
 */
@interface TMBMailChimp_Ping_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Ping Choreo.
 */
@interface TMBMailChimp_Ping_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Test connection to MailChimp services.
 */
@interface TMBMailChimp_Ping : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_Ping_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_Ping Choreo */


/*! group TMBMailChimp.ListUnsubscribe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUnsubscribe Choreo.
 */
@interface TMBMailChimp_ListUnsubscribe_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDeleteMember:(NSString*)DeleteMember;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setListId:(NSString*)ListId;
	-(void)setSendGoodbye:(NSString*)SendGoodbye;
	-(void)setSendNotify:(NSString*)SendNotify;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUnsubscribe Choreo.
 */
@interface TMBMailChimp_ListUnsubscribe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Remove a subscriber from a MailChimp list.
 */
@interface TMBMailChimp_ListUnsubscribe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListUnsubscribe_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListUnsubscribe Choreo */


/*! group TMBMailChimp.ListSubscribe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscribe Choreo.
 */
@interface TMBMailChimp_ListSubscribe_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDoubleOptIn:(NSString*)DoubleOptIn;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setEmailType:(NSString*)EmailType;
	-(void)setListId:(NSString*)ListId;
	-(void)setMergeVars:(NSString*)MergeVars;
	-(void)setReplaceInterests:(NSString*)ReplaceInterests;
	-(void)setSendWelcome:(NSString*)SendWelcome;
	-(void)setUpdateExisting:(NSString*)UpdateExisting;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscribe Choreo.
 */
@interface TMBMailChimp_ListSubscribe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a subscriber to a MailChimp list.
 */
@interface TMBMailChimp_ListSubscribe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListSubscribe_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListSubscribe Choreo */


/*! group TMBMailChimp.ListMemberInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMemberInfo Choreo.
 */
@interface TMBMailChimp_ListMemberInfo_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setListId:(NSString*)ListId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMemberInfo Choreo.
 */
@interface TMBMailChimp_ListMemberInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get information for a member of a MailChimp list.
 */
@interface TMBMailChimp_ListMemberInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListMemberInfo_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListMemberInfo Choreo */


/*! group TMBMailChimp.ListUpdateMember Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUpdateMember Choreo.
 */
@interface TMBMailChimp_ListUpdateMember_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setEmailType:(NSString*)EmailType;
	-(void)setListId:(NSString*)ListId;
	-(void)setMerge1:(NSString*)Merge1;
	-(void)setMerge2:(NSString*)Merge2;
	-(void)setMerge3:(NSString*)Merge3;
	-(void)setMerge4:(NSString*)Merge4;
	-(void)setNewEmail:(NSString*)NewEmail;
	-(void)setReplaceInterests:(NSString*)ReplaceInterests;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUpdateMember Choreo.
 */
@interface TMBMailChimp_ListUpdateMember_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Update information for a member of a MailChimp list.
 */
@interface TMBMailChimp_ListUpdateMember : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListUpdateMember_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListUpdateMember Choreo */


/*! group TMBMailChimp.ListMergeVars Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMergeVars Choreo.
 */
@interface TMBMailChimp_ListMergeVars_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setListId:(NSString*)ListId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMergeVars Choreo.
 */
@interface TMBMailChimp_ListMergeVars_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get field names from a MailChimp list.
 */
@interface TMBMailChimp_ListMergeVars : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListMergeVars_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListMergeVars Choreo */


/*! group TMBMailChimp.ListBatchSubscribeCSV Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchSubscribeCSV Choreo.
 */
@interface TMBMailChimp_ListBatchSubscribeCSV_Inputs : TMBChoreographyInputSet
	-(void)setCSVFile:(NSString*)CSVFile;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDoubleOptIn:(NSString*)DoubleOptIn;
	-(void)setEmailType:(NSString*)EmailType;
	-(void)setListId:(NSString*)ListId;
	-(void)setReplaceInterests:(NSString*)ReplaceInterests;
	-(void)setSupressErrors:(NSString*)SupressErrors;
	-(void)setUpdateExisting:(NSString*)UpdateExisting;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchSubscribeCSV Choreo.
 */
@interface TMBMailChimp_ListBatchSubscribeCSV_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getErrorList;
	-(NSString*)getSuccessList;	
@end

/*!
 * Adds or updates multiple subscribers in a given CSV file.
 */
@interface TMBMailChimp_ListBatchSubscribeCSV : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListBatchSubscribeCSV_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListBatchSubscribeCSV Choreo */


/*! group TMBMailChimp.ListMergeVarDel Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMergeVarDel Choreo.
 */
@interface TMBMailChimp_ListMergeVarDel_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setListId:(NSString*)ListId;
	-(void)setTag:(NSString*)Tag;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMergeVarDel Choreo.
 */
@interface TMBMailChimp_ListMergeVarDel_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Remove a field name from a MailChimp list.
 */
@interface TMBMailChimp_ListMergeVarDel : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListMergeVarDel_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListMergeVarDel Choreo */


/*! group TMBMailChimp.ListMembers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMembers Choreo.
 */
@interface TMBMailChimp_ListMembers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setListId:(NSString*)ListId;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setStart:(NSString*)Start;
	-(void)setStatus:(NSString*)Status;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMembers Choreo.
 */
@interface TMBMailChimp_ListMembers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the email addresses of members of a MailChimp list. 
 */
@interface TMBMailChimp_ListMembers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_ListMembers_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_ListMembers Choreo */


/*! group TMBMailChimp.Lists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Lists Choreo.
 */
@interface TMBMailChimp_Lists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Lists Choreo.
 */
@interface TMBMailChimp_Lists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get all lists from a MailChimp account.
 */
@interface TMBMailChimp_Lists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBMailChimp_Lists_Inputs*)newInputSet;
@end

/*! group TMBMailChimp_Lists Choreo */
