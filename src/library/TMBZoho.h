/*!
 * @header Temboo iOS SDK Zoho classes
 *
 * Execute Choreographies from the Temboo Zoho bundle.
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

/*! group TMBZoho.Sheet.ListPublicSpreadsheets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListPublicSpreadsheets_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListPublicSpreadsheets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the spreadsheets that have been made "public" from a user's Zoho Sheet  Account.
 */
@interface TMBZoho_Sheet_ListPublicSpreadsheets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Sheet_ListPublicSpreadsheets_Inputs*)newInputSet;
@end

/*! group TMBZoho.Sheet_ListPublicSpreadsheets Choreo */


/*! group TMBZoho.CRM.GetSearchRecordsByPDC Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSearchRecordsByPDC Choreo.
 */
@interface TMBZoho_CRM_GetSearchRecordsByPDC_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setFromIndex:(NSString*)FromIndex;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSearchColumn:(NSString*)SearchColumn;
	-(void)setSearchValue:(NSString*)SearchValue;
	-(void)setSelectColumns:(NSString*)SelectColumns;
	-(void)setToIndex:(NSString*)ToIndex;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSearchRecordsByPDC Choreo.
 */
@interface TMBZoho_CRM_GetSearchRecordsByPDC_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves records from your Zoho CRM account and searches by predefined columns.
 */
@interface TMBZoho_CRM_GetSearchRecordsByPDC : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GetSearchRecordsByPDC_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GetSearchRecordsByPDC Choreo */


/*! group TMBZoho.Sheet.ListSharedSpreadsheets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSharedSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListSharedSpreadsheets_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSharedSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListSharedSpreadsheets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the spreadsheets that have been "shared" to a user's Zoho Sheet Account.
 */
@interface TMBZoho_Sheet_ListSharedSpreadsheets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Sheet_ListSharedSpreadsheets_Inputs*)newInputSet;
@end

/*! group TMBZoho.Sheet_ListSharedSpreadsheets Choreo */


/*! group TMBZoho.CRM.GenerateAuthToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GenerateAuthToken Choreo.
 */
@interface TMBZoho_CRM_GenerateAuthToken_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GenerateAuthToken Choreo.
 */
@interface TMBZoho_CRM_GenerateAuthToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthenticationToken;	
@end

/*!
 * Generates an authentication token.
 */
@interface TMBZoho_CRM_GenerateAuthToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GenerateAuthToken_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GenerateAuthToken Choreo */


/*! group TMBZoho.Sheet.ListTrashedSpreadsheets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTrashedSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListTrashedSpreadsheets_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTrashedSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListTrashedSpreadsheets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the spreadsheets that have been "trashed" from a user's Zoho Sheet Account.
 */
@interface TMBZoho_Sheet_ListTrashedSpreadsheets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Sheet_ListTrashedSpreadsheets_Inputs*)newInputSet;
@end

/*! group TMBZoho.Sheet_ListTrashedSpreadsheets Choreo */


/*! group TMBZoho.CRM.GetRecords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecords Choreo.
 */
@interface TMBZoho_CRM_GetRecords_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setFromIndex:(NSString*)FromIndex;
	-(void)setLastModifiedTime:(NSString*)LastModifiedTime;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSelectColumns:(NSString*)SelectColumns;
	-(void)setSortColumnString:(NSString*)SortColumnString;
	-(void)setSortOrderString:(NSString*)SortOrderString;
	-(void)setToIndex:(NSString*)ToIndex;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecords Choreo.
 */
@interface TMBZoho_CRM_GetRecords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all users data specified in the API request.
 */
@interface TMBZoho_CRM_GetRecords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GetRecords_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GetRecords Choreo */


/*! group TMBZoho.Writer.DownloadDocument Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DownloadDocument Choreo.
 */
@interface TMBZoho_Writer_DownloadDocument_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDocumentId:(NSString*)DocumentId;
	-(void)setDownloadFormat:(NSString*)DownloadFormat;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadDocument Choreo.
 */
@interface TMBZoho_Writer_DownloadDocument_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Downloads a specified document in a user's Zoho Writer Account.
 */
@interface TMBZoho_Writer_DownloadDocument : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Writer_DownloadDocument_Inputs*)newInputSet;
@end

/*! group TMBZoho.Writer_DownloadDocument Choreo */


/*! group TMBZoho.Writer.ListTrashedDocuments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTrashedDocuments Choreo.
 */
@interface TMBZoho_Writer_ListTrashedDocuments_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTrashedDocuments Choreo.
 */
@interface TMBZoho_Writer_ListTrashedDocuments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the documents that have been "trashed" from a user's Zoho Writer Account.
 */
@interface TMBZoho_Writer_ListTrashedDocuments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Writer_ListTrashedDocuments_Inputs*)newInputSet;
@end

/*! group TMBZoho.Writer_ListTrashedDocuments Choreo */


/*! group TMBZoho.CRM.ConvertLead Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ConvertLead Choreo.
 */
@interface TMBZoho_CRM_ConvertLead_Inputs : TMBChoreographyInputSet
	-(void)setAmount:(NSString*)Amount;
	-(void)setAssignTo:(NSString*)AssignTo;
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setClosingDate:(NSString*)ClosingDate;
	-(void)setContactRole:(NSString*)ContactRole;
	-(void)setCreatePotential:(NSString*)CreatePotential;
	-(void)setID:(NSString*)ID;
	-(void)setNotifyLeadOwner:(NSString*)NotifyLeadOwner;
	-(void)setNotifyNewEntityOwner:(NSString*)NotifyNewEntityOwner;
	-(void)setPotentialName:(NSString*)PotentialName;
	-(void)setPotentialStage:(NSString*)PotentialStage;
	-(void)setProbability:(NSString*)Probability;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ConvertLead Choreo.
 */
@interface TMBZoho_CRM_ConvertLead_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Converts a lead to a potential, account, or contact in your Zoho CRM account.
 */
@interface TMBZoho_CRM_ConvertLead : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_ConvertLead_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_ConvertLead Choreo */


/*! group TMBZoho.CRM.DeleteRecords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecords Choreo.
 */
@interface TMBZoho_CRM_DeleteRecords_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setID:(NSString*)ID;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecords Choreo.
 */
@interface TMBZoho_CRM_DeleteRecords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified record from a Zoho CRM account.
 */
@interface TMBZoho_CRM_DeleteRecords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_DeleteRecords_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_DeleteRecords Choreo */


/*! group TMBZoho.CRM.GetMyRecords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMyRecords Choreo.
 */
@interface TMBZoho_CRM_GetMyRecords_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setFromIndex:(NSString*)FromIndex;
	-(void)setLastModifiedTime:(NSString*)LastModifiedTime;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSelectColumns:(NSString*)SelectColumns;
	-(void)setSortColumnString:(NSString*)SortColumnString;
	-(void)setSortOrderString:(NSString*)SortOrderString;
	-(void)setToIndex:(NSString*)ToIndex;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMyRecords Choreo.
 */
@interface TMBZoho_CRM_GetMyRecords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves data by owner of the authentication token specified.
 */
@interface TMBZoho_CRM_GetMyRecords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GetMyRecords_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GetMyRecords Choreo */


/*! group TMBZoho.Writer.ListPublicDocuments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicDocuments Choreo.
 */
@interface TMBZoho_Writer_ListPublicDocuments_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicDocuments Choreo.
 */
@interface TMBZoho_Writer_ListPublicDocuments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the documents that have been made "public" from a user's Zoho Writer Account.
 */
@interface TMBZoho_Writer_ListPublicDocuments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Writer_ListPublicDocuments_Inputs*)newInputSet;
@end

/*! group TMBZoho.Writer_ListPublicDocuments Choreo */


/*! group TMBZoho.CRM.InsertRecords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InsertRecords Choreo.
 */
@interface TMBZoho_CRM_InsertRecords_Inputs : TMBChoreographyInputSet
	-(void)setAnnualRevenue:(NSString*)AnnualRevenue;
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setCampaignSource:(NSString*)CampaignSource;
	-(void)setCity:(NSString*)City;
	-(void)setCompany:(NSString*)Company;
	-(void)setCountry:(NSString*)Country;
	-(void)setDescription:(NSString*)Description;
	-(void)setEmailOptOut:(NSString*)EmailOptOut;
	-(void)setEmail:(NSString*)Email;
	-(void)setFax:(NSString*)Fax;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setIndustry:(NSString*)Industry;
	-(void)setLastName:(NSString*)LastName;
	-(void)setLeadOwner:(NSString*)LeadOwner;
	-(void)setLeadSource:(NSString*)LeadSource;
	-(void)setLeadStatus:(NSString*)LeadStatus;
	-(void)setMobile:(NSString*)Mobile;
	-(void)setModule:(NSString*)Module;
	-(void)setNumOfEmployees:(NSString*)NumOfEmployees;
	-(void)setPhone:(NSString*)Phone;
	-(void)setRating:(NSString*)Rating;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSalutation:(NSString*)Salutation;
	-(void)setSkypeID:(NSString*)SkypeID;
	-(void)setState:(NSString*)State;
	-(void)setStreet:(NSString*)Street;
	-(void)setTitle:(NSString*)Title;
	-(void)setWebsite:(NSString*)Website;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertRecords Choreo.
 */
@interface TMBZoho_CRM_InsertRecords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Inserts records into your Zoho CRM account.
 */
@interface TMBZoho_CRM_InsertRecords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_InsertRecords_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_InsertRecords Choreo */


/*! group TMBZoho.CRM.GetRecordsById Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecordsById Choreo.
 */
@interface TMBZoho_CRM_GetRecordsById_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setID:(NSString*)ID;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecordsById Choreo.
 */
@interface TMBZoho_CRM_GetRecordsById_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves records from your Zoho CRM account by ID.
 */
@interface TMBZoho_CRM_GetRecordsById : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GetRecordsById_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GetRecordsById Choreo */


/*! group TMBZoho.CRM.GetSearchRecords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSearchRecords Choreo.
 */
@interface TMBZoho_CRM_GetSearchRecords_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setFromIndex:(NSString*)FromIndex;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSearchColumn:(NSString*)SearchColumn;
	-(void)setSearchExpression:(NSString*)SearchExpression;
	-(void)setSearchString:(NSString*)SearchString;
	-(void)setSelectColumns:(NSString*)SelectColumns;
	-(void)setToIndex:(NSString*)ToIndex;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSearchRecords Choreo.
 */
@interface TMBZoho_CRM_GetSearchRecords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lets you to search your Zoho CRM account for records based on Zoho's search expressions.
 */
@interface TMBZoho_CRM_GetSearchRecords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GetSearchRecords_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GetSearchRecords Choreo */


/*! group TMBZoho.Sheet.ListAllSpreadsheets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListAllSpreadsheets_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllSpreadsheets Choreo.
 */
@interface TMBZoho_Sheet_ListAllSpreadsheets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the spreadsheets associated with a user's Zoho Sheet Account.
 */
@interface TMBZoho_Sheet_ListAllSpreadsheets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Sheet_ListAllSpreadsheets_Inputs*)newInputSet;
@end

/*! group TMBZoho.Sheet_ListAllSpreadsheets Choreo */


/*! group TMBZoho.Sheet.DownloadSpreadsheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DownloadSpreadsheet Choreo.
 */
@interface TMBZoho_Sheet_DownloadSpreadsheet_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBookId:(NSString*)BookId;
	-(void)setDownloadFormat:(NSString*)DownloadFormat;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadSpreadsheet Choreo.
 */
@interface TMBZoho_Sheet_DownloadSpreadsheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Downloads a specified spreadsheet in a user's Zoho Sheet Account.
 */
@interface TMBZoho_Sheet_DownloadSpreadsheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Sheet_DownloadSpreadsheet_Inputs*)newInputSet;
@end

/*! group TMBZoho.Sheet_DownloadSpreadsheet Choreo */


/*! group TMBZoho.CRM.GetCVRecord Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCVRecord Choreo.
 */
@interface TMBZoho_CRM_GetCVRecord_Inputs : TMBChoreographyInputSet
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken;
	-(void)setCVName:(NSString*)CVName;
	-(void)setFromIndex:(NSString*)FromIndex;
	-(void)setLastModifiedDate:(NSString*)LastModifiedDate;
	-(void)setModule:(NSString*)Module;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setToIndex:(NSString*)ToIndex;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCVRecord Choreo.
 */
@interface TMBZoho_CRM_GetCVRecord_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves data with respect to the Custom View in Zoho CRM.
 */
@interface TMBZoho_CRM_GetCVRecord : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_CRM_GetCVRecord_Inputs*)newInputSet;
@end

/*! group TMBZoho.CRM_GetCVRecord Choreo */


/*! group TMBZoho.Writer.ListAllDocuments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllDocuments Choreo.
 */
@interface TMBZoho_Writer_ListAllDocuments_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllDocuments Choreo.
 */
@interface TMBZoho_Writer_ListAllDocuments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the documents associated with a user's Zoho Writer Account.
 */
@interface TMBZoho_Writer_ListAllDocuments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Writer_ListAllDocuments_Inputs*)newInputSet;
@end

/*! group TMBZoho.Writer_ListAllDocuments Choreo */


/*! group TMBZoho.Writer.ListSharedDocuments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSharedDocuments Choreo.
 */
@interface TMBZoho_Writer_ListSharedDocuments_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLoginID:(NSString*)LoginID;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartFrom:(NSString*)StartFrom;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSharedDocuments Choreo.
 */
@interface TMBZoho_Writer_ListSharedDocuments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all the documents that have been "shared" to a user's Zoho Writer Account.
 */
@interface TMBZoho_Writer_ListSharedDocuments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZoho_Writer_ListSharedDocuments_Inputs*)newInputSet;
@end

/*! group TMBZoho.Writer_ListSharedDocuments Choreo */
