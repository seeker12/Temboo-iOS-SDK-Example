/*!
 * @header Temboo iOS SDK Google classes
 *
 * Execute Choreographies from the Temboo Google bundle.
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

/*! group TMBGoogle.Documents.SearchByCategory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCategory Choreo.
 */
@interface TMBGoogle_Documents_SearchByCategory_Inputs : TMBChoreographyInputSet
	-(void)setCategory:(NSString*)Category;
	-(void)setMyDocs:(NSString*)MyDocs;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
	-(void)setViewed:(NSString*)Viewed;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCategory Choreo.
 */
@interface TMBGoogle_Documents_SearchByCategory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all resources in a category you specify.
 */
@interface TMBGoogle_Documents_SearchByCategory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_SearchByCategory_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_SearchByCategory Choreo */


/*! group TMBGoogle.Drive.Files.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Files_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Files_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFileID;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists the user's files.
 */
@interface TMBGoogle_Drive_Files_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_List Choreo */


/*! group TMBGoogle.Drive.Files.Copy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Copy Choreo.
 */
@interface TMBGoogle_Drive_Files_Copy_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setConvert:(NSString*)Convert;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setOCR:(NSString*)OCR;
	-(void)setOcrLanguage:(NSString*)OcrLanguage;
	-(void)setPinned:(NSString*)Pinned;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSourceLanguage:(NSString*)SourceLanguage;
	-(void)setTargetLanguage:(NSString*)TargetLanguage;
	-(void)setTimedTextLanguage:(NSString*)TimedTextLanguage;
	-(void)setTimedTextTrackName:(NSString*)TimedTextTrackName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Copy Choreo.
 */
@interface TMBGoogle_Drive_Files_Copy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a copy of the specified file.
 */
@interface TMBGoogle_Drive_Files_Copy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Copy_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Copy Choreo */


/*! group TMBGoogle.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBGoogle_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMBGoogle_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getRefreshToken;	
@end

/*!
 * Completes the OAuth process by retrieving a Google access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBGoogle_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBGoogle.OAuth_FinalizeOAuth Choreo */


/*! group TMBGoogle.Spreadsheets.StructuredQuery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StructuredQuery Choreo.
 */
@interface TMBGoogle_Spreadsheets_StructuredQuery_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setQuery:(NSString*)Query;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StructuredQuery Choreo.
 */
@interface TMBGoogle_Spreadsheets_StructuredQuery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list-based feed containing data in your Google spreadsheet that meets a specified criteria.
 */
@interface TMBGoogle_Spreadsheets_StructuredQuery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_StructuredQuery_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_StructuredQuery Choreo */


/*! group TMBGoogle.Spreadsheets.CellRangeQuery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CellRangeQuery Choreo.
 */
@interface TMBGoogle_Spreadsheets_CellRangeQuery_Inputs : TMBChoreographyInputSet
	-(void)setMaxColumn:(NSString*)MaxColumn;
	-(void)setMaxRow:(NSString*)MaxRow;
	-(void)setMinColumn:(NSString*)MinColumn;
	-(void)setMinRow:(NSString*)MinRow;
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CellRangeQuery Choreo.
 */
@interface TMBGoogle_Spreadsheets_CellRangeQuery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a range of cells from a specified Google worksheet.
 */
@interface TMBGoogle_Spreadsheets_CellRangeQuery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_CellRangeQuery_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_CellRangeQuery Choreo */


/*! group TMBGoogle.Geocoding.GeocodeByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GeocodeByCoordinates Choreo.
 */
@interface TMBGoogle_Geocoding_GeocodeByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setBounds:(NSString*)Bounds;
	-(void)setLanguage:(NSString*)Language;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRegion:(NSString*)Region;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeocodeByCoordinates Choreo.
 */
@interface TMBGoogle_Geocoding_GeocodeByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Converts latitude and longitude coordinates into a human-readable address.
 */
@interface TMBGoogle_Geocoding_GeocodeByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Geocoding_GeocodeByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Geocoding_GeocodeByCoordinates Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveSpreadsheets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSpreadsheets Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpreadsheets_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSpreadsheets Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpreadsheets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of spreadsheets that exist in your Google account.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpreadsheets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveSpreadsheets_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveSpreadsheets Choreo */


/*! group TMBGoogle.Places.PlaceCheckInRequests Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PlaceCheckInRequests Choreo.
 */
@interface TMBGoogle_Places_PlaceCheckInRequests_Inputs : TMBChoreographyInputSet
	-(void)setKey:(NSString*)Key;
	-(void)setPlaceReference:(NSString*)PlaceReference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PlaceCheckInRequests Choreo.
 */
@interface TMBGoogle_Places_PlaceCheckInRequests_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Specify whether a user has checked into a place.
 */
@interface TMBGoogle_Places_PlaceCheckInRequests : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Places_PlaceCheckInRequests_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Places_PlaceCheckInRequests Choreo */


/*! group TMBGoogle.Spreadsheets.AddWorksheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_AddWorksheet_Inputs : TMBChoreographyInputSet
	-(void)setColumnCount:(NSString*)ColumnCount;
	-(void)setPassword:(NSString*)Password;
	-(void)setRowCount:(NSString*)RowCount;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_AddWorksheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new worksheet within an existing spreadsheet.
 */
@interface TMBGoogle_Spreadsheets_AddWorksheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_AddWorksheet_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_AddWorksheet Choreo */


/*! group TMBGoogle.Drive.Permissions.Update Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Update_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setPermissionID:(NSString*)PermissionID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Update_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates an existing permission.
 */
@interface TMBGoogle_Drive_Permissions_Update : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Permissions_Update_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Permissions_Update Choreo */


/*! group TMBGoogle.Calendar.GetAllEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllEvents Choreo.
 */
@interface TMBGoogle_Calendar_GetAllEvents_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllEvents Choreo.
 */
@interface TMBGoogle_Calendar_GetAllEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieve data for all events in a specified calendar.
 */
@interface TMBGoogle_Calendar_GetAllEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_GetAllEvents_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_GetAllEvents Choreo */


/*! group TMBGoogle.Directions.GetDrivingDirections Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDrivingDirections Choreo.
 */
@interface TMBGoogle_Directions_GetDrivingDirections_Inputs : TMBChoreographyInputSet
	-(void)setAlternatives:(NSString*)Alternatives;
	-(void)setAvoid:(NSString*)Avoid;
	-(void)setDestination:(NSString*)Destination;
	-(void)setOrigin:(NSString*)Origin;
	-(void)setRegion:(NSString*)Region;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setUnits:(NSString*)Units;
	-(void)setWaypoints:(NSString*)Waypoints;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDrivingDirections Choreo.
 */
@interface TMBGoogle_Directions_GetDrivingDirections_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 *  Generates directions between two locations, denoted by address, or latitude/longitude coordinates.
 */
@interface TMBGoogle_Directions_GetDrivingDirections : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Directions_GetDrivingDirections_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Directions_GetDrivingDirections Choreo */


/*! group TMBGoogle.Calendar.DeleteCalendar Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCalendar Choreo.
 */
@interface TMBGoogle_Calendar_DeleteCalendar_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCalendar Choreo.
 */
@interface TMBGoogle_Calendar_DeleteCalendar_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a secondary calendar.
 */
@interface TMBGoogle_Calendar_DeleteCalendar : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_DeleteCalendar_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_DeleteCalendar Choreo */


/*! group TMBGoogle.Contacts.GetContactById Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetContactById Choreo.
 */
@interface TMBGoogle_Contacts_GetContactById_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setContactId:(NSString*)ContactId;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserEmail:(NSString*)UserEmail;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContactById Choreo.
 */
@interface TMBGoogle_Contacts_GetContactById_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specific contact with a given id.
 */
@interface TMBGoogle_Contacts_GetContactById : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_GetContactById_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_GetContactById Choreo */


/*! group TMBGoogle.Drive.Files.Insert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@interface TMBGoogle_Drive_Files_Insert_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setConvert:(NSString*)Convert;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileContent:(NSString*)FileContent;
	-(void)setOCR:(NSString*)OCR;
	-(void)setOcrLanguage:(NSString*)OcrLanguage;
	-(void)setPinned:(NSString*)Pinned;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSourceLanguage:(NSString*)SourceLanguage;
	-(void)setTargetLanguage:(NSString*)TargetLanguage;
	-(void)setTimedTextLanguage:(NSString*)TimedTextLanguage;
	-(void)setTimedTextTrackName:(NSString*)TimedTextTrackName;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@interface TMBGoogle_Drive_Files_Insert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Inserts a new file.
 */
@interface TMBGoogle_Drive_Files_Insert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Insert_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Insert Choreo */


/*! group TMBGoogle.Drive.Children.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Children_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChildID:(NSString*)ChildID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Children_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a child for a folder.
 */
@interface TMBGoogle_Drive_Children_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Children_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Children_Delete Choreo */


/*! group TMBGoogle.Plus.People.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBGoogle_Plus_People_Search_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setLanguage:(NSString*)Language;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBGoogle_Plus_People_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Searches all public profiles.
 */
@interface TMBGoogle_Plus_People_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_People_Search_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.People_Search Choreo */


/*! group TMBGoogle.Documents.UpdateFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFile Choreo.
 */
@interface TMBGoogle_Documents_UpdateFile_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFile Choreo.
 */
@interface TMBGoogle_Documents_UpdateFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the content of an existing Google document.
 */
@interface TMBGoogle_Documents_UpdateFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_UpdateFile_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_UpdateFile Choreo */


/*! group TMBGoogle.Calendar.CreateCalendar Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCalendar Choreo.
 */
@interface TMBGoogle_Calendar_CreateCalendar_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setDescription:(NSString*)Description;
	-(void)setLocation:(NSString*)Location;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setTitle:(NSString*)Title;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCalendar Choreo.
 */
@interface TMBGoogle_Calendar_CreateCalendar_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Create a new secondary calendar.
 */
@interface TMBGoogle_Calendar_CreateCalendar : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_CreateCalendar_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_CreateCalendar Choreo */


/*! group TMBGoogle.DistanceMatrix.DrivingDistanceMatrix Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DrivingDistanceMatrix Choreo.
 */
@interface TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_Inputs : TMBChoreographyInputSet
	-(void)setAlternatives:(NSString*)Alternatives;
	-(void)setAvoid:(NSString*)Avoid;
	-(void)setDestinations:(NSString*)Destinations;
	-(void)setLanguage:(NSString*)Language;
	-(void)setOrigins:(NSString*)Origins;
	-(void)setRegion:(NSString*)Region;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DrivingDistanceMatrix Choreo.
 */
@interface TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain travel distances and times for a matrix of addresses and/or latitude/longitude coordinates.
 */
@interface TMBGoogle_DistanceMatrix_DrivingDistanceMatrix : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_Inputs*)newInputSet;
@end

/*! group TMBGoogle.DistanceMatrix_DrivingDistanceMatrix Choreo */


/*! group TMBGoogle.Picasa.RetrieveComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveComments Choreo.
 */
@interface TMBGoogle_Picasa_RetrieveComments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveComments Choreo.
 */
@interface TMBGoogle_Picasa_RetrieveComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a feed of the photo comments for a specified user.
 */
@interface TMBGoogle_Picasa_RetrieveComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_RetrieveComments_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_RetrieveComments Choreo */


/*! group TMBGoogle.Drive.Parents.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Parents_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFileID:(NSString*)FileID;
	-(void)setParentID:(NSString*)ParentID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Parents_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a parent from a file.
 */
@interface TMBGoogle_Drive_Parents_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Parents_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Parents_Delete Choreo */


/*! group TMBGoogle.Spreadsheets.UpdateWorksheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_UpdateWorksheet_Inputs : TMBChoreographyInputSet
	-(void)setColumnCount:(NSString*)ColumnCount;
	-(void)setPassword:(NSString*)Password;
	-(void)setRowCount:(NSString*)RowCount;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_UpdateWorksheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates existing worksheet metadata such as: Title, Row Count, and Column Count.
 */
@interface TMBGoogle_Spreadsheets_UpdateWorksheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_UpdateWorksheet_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_UpdateWorksheet Choreo */


/*! group TMBGoogle.Drive.Replies.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Replies_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setReplyID:(NSString*)ReplyID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Replies_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a reply
 */
@interface TMBGoogle_Drive_Replies_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Replies_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Replies_Get Choreo */


/*! group TMBGoogle.Documents.GetAllDocuments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllDocuments Choreo.
 */
@interface TMBGoogle_Documents_GetAllDocuments_Inputs : TMBChoreographyInputSet
	-(void)setDeleted:(NSString*)Deleted;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllDocuments Choreo.
 */
@interface TMBGoogle_Documents_GetAllDocuments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all documents, files, and collections in a Google account.
 */
@interface TMBGoogle_Documents_GetAllDocuments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_GetAllDocuments_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_GetAllDocuments Choreo */


/*! group TMBGoogle.Drive.Children.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Children_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChildID:(NSString*)ChildID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Children_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a specific child reference.
 */
@interface TMBGoogle_Drive_Children_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Children_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Children_Get Choreo */


/*! group TMBGoogle.Drive.Replies.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Replies_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Replies_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists all of the replies to a comment.
 */
@interface TMBGoogle_Drive_Replies_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Replies_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Replies_List Choreo */


/*! group TMBGoogle.Spreadsheets.ClientLoginAuthentication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ClientLoginAuthentication Choreo.
 */
@interface TMBGoogle_Spreadsheets_ClientLoginAuthentication_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setService:(NSString*)Service;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClientLoginAuthentication Choreo.
 */
@interface TMBGoogle_Spreadsheets_ClientLoginAuthentication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationKey;	
@end

/*!
 * Request an authorization token for Google Documents.
 */
@interface TMBGoogle_Spreadsheets_ClientLoginAuthentication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_ClientLoginAuthentication_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_ClientLoginAuthentication Choreo */


/*! group TMBGoogle.Latitude.GetCurrentLocationInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCurrentLocationInfo Choreo.
 */
@interface TMBGoogle_Latitude_GetCurrentLocationInfo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setGranularity:(NSString*)Granularity;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCurrentLocationInfo Choreo.
 */
@interface TMBGoogle_Latitude_GetCurrentLocationInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the authenticated user's current location.
 */
@interface TMBGoogle_Latitude_GetCurrentLocationInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_GetCurrentLocationInfo_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_GetCurrentLocationInfo Choreo */


/*! group TMBGoogle.Places.DeletePlace Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlace Choreo.
 */
@interface TMBGoogle_Places_DeletePlace_Inputs : TMBChoreographyInputSet
	-(void)setKey:(NSString*)Key;
	-(void)setPlaceReference:(NSString*)PlaceReference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlace Choreo.
 */
@interface TMBGoogle_Places_DeletePlace_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a new Place from Google Places.
 */
@interface TMBGoogle_Places_DeletePlace : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Places_DeletePlace_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Places_DeletePlace Choreo */


/*! group TMBGoogle.Picasa.SearchPhotosByTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchPhotosByTag Choreo.
 */
@interface TMBGoogle_Picasa_SearchPhotosByTag_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setTag:(NSString*)Tag;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchPhotosByTag Choreo.
 */
@interface TMBGoogle_Picasa_SearchPhotosByTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Searches photos using tags that you specify.
 */
@interface TMBGoogle_Picasa_SearchPhotosByTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_SearchPhotosByTag_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_SearchPhotosByTag Choreo */


/*! group TMBGoogle.Drive.Comments.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Comments_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Comments_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a comment by ID.
 */
@interface TMBGoogle_Drive_Comments_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Comments_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Comments_Get Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveCellFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCellFeed Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveCellFeed_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCellFeed Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveCellFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of cell names and values in a specified Google worksheet.
 */
@interface TMBGoogle_Spreadsheets_RetrieveCellFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveCellFeed_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveCellFeed Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveListFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveListFeed Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveListFeed_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveListFeed Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveListFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list-based feed containing data in your Google spreadsheet.
 */
@interface TMBGoogle_Spreadsheets_RetrieveListFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveListFeed_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveListFeed Choreo */


/*! group TMBGoogle.Drive.Replies.Update Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@interface TMBGoogle_Drive_Replies_Update_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setReplyID:(NSString*)ReplyID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@interface TMBGoogle_Drive_Replies_Update_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates an existing reply.
 */
@interface TMBGoogle_Drive_Replies_Update : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Replies_Update_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Replies_Update Choreo */


/*! group TMBGoogle.Picasa.DeleteAlbum Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAlbum Choreo.
 */
@interface TMBGoogle_Picasa_DeleteAlbum_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumID:(NSString*)AlbumID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAlbum Choreo.
 */
@interface TMBGoogle_Picasa_DeleteAlbum_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an album in Google Picasa with a specified album Id.
 */
@interface TMBGoogle_Picasa_DeleteAlbum : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_DeleteAlbum_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_DeleteAlbum Choreo */


/*! group TMBGoogle.Spreadsheets.DownloadBase64EncodedSpreadsheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DownloadBase64EncodedSpreadsheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setLink:(NSString*)Link;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadBase64EncodedSpreadsheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFileContents;	
@end

/*!
 * Downloads a document with the title you specify, and returns the content as Base64 encoded data.
 */
@interface TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_DownloadBase64EncodedSpreadsheet Choreo */


/*! group TMBGoogle.Drive.Parents.Insert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@interface TMBGoogle_Drive_Parents_Insert_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setParentID:(NSString*)ParentID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@interface TMBGoogle_Drive_Parents_Insert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Adds a parent folder for a file.
 */
@interface TMBGoogle_Drive_Parents_Insert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Parents_Insert_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Parents_Insert Choreo */


/*! group TMBGoogle.Places.PlaceSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PlaceSearch Choreo.
 */
@interface TMBGoogle_Places_PlaceSearch_Inputs : TMBChoreographyInputSet
	-(void)setKey:(NSString*)Key;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLanguage:(NSString*)Language;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setName:(NSString*)Name;
	-(void)setRadius:(NSString*)Radius;
	-(void)setRankBy:(NSString*)RankBy;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setTypes:(NSString*)Types;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PlaceSearch Choreo.
 */
@interface TMBGoogle_Places_PlaceSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for places based on latitude/longitude coordinates, keywords, and distance.
 */
@interface TMBGoogle_Places_PlaceSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Places_PlaceSearch_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Places_PlaceSearch Choreo */


/*! group TMBGoogle.Contacts.DeleteContact Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteContact Choreo.
 */
@interface TMBGoogle_Contacts_DeleteContact_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setContactID:(NSString*)ContactID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteContact Choreo.
 */
@interface TMBGoogle_Contacts_DeleteContact_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified contact.
 */
@interface TMBGoogle_Contacts_DeleteContact : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_DeleteContact_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_DeleteContact Choreo */


/*! group TMBGoogle.Gmail.SendEmail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendEmail Choreo.
 */
@interface TMBGoogle_Gmail_SendEmail_Inputs : TMBChoreographyInputSet
	-(void)setAttachmentName:(NSString*)AttachmentName;
	-(void)setAttachment:(NSString*)Attachment;
	-(void)setBCC:(NSString*)BCC;
	-(void)setCC:(NSString*)CC;
	-(void)setFromAddress:(NSString*)FromAddress;
	-(void)setMessageBody:(NSString*)MessageBody;
	-(void)setPassword:(NSString*)Password;
	-(void)setSubject:(NSString*)Subject;
	-(void)setToAddress:(NSString*)ToAddress;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendEmail Choreo.
 */
@interface TMBGoogle_Gmail_SendEmail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	
@end

/*!
 * Sends an email using a specified Gmail account.
 */
@interface TMBGoogle_Gmail_SendEmail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Gmail_SendEmail_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Gmail_SendEmail Choreo */


/*! group TMBGoogle.Documents.DeleteDocumentOrFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDocumentOrFile Choreo.
 */
@interface TMBGoogle_Documents_DeleteDocumentOrFile_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setResourceID:(NSString*)ResourceID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDocumentOrFile Choreo.
 */
@interface TMBGoogle_Documents_DeleteDocumentOrFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Permanently deletes the document or file you specify.
 */
@interface TMBGoogle_Documents_DeleteDocumentOrFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_DeleteDocumentOrFile_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_DeleteDocumentOrFile Choreo */


/*! group TMBGoogle.Picasa.PostPhoto Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PostPhoto Choreo.
 */
@interface TMBGoogle_Picasa_PostPhoto_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumID:(NSString*)AlbumID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setImageName:(NSString*)ImageName;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostPhoto Choreo.
 */
@interface TMBGoogle_Picasa_PostPhoto_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads a photo to Google Picasa.
 */
@interface TMBGoogle_Picasa_PostPhoto : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_PostPhoto_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_PostPhoto Choreo */


/*! group TMBGoogle.Drive.Changes.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Changes_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setIncludeSubscribed:(NSString*)IncludeSubscribed;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setStartChangeID:(NSString*)StartChangeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Changes_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists the changes for a user.
 */
@interface TMBGoogle_Drive_Changes_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Changes_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Changes_List Choreo */


/*! group TMBGoogle.Drive.Files.Trash Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Trash Choreo.
 */
@interface TMBGoogle_Drive_Files_Trash_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Trash Choreo.
 */
@interface TMBGoogle_Drive_Files_Trash_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Moves a file to the trash.
 */
@interface TMBGoogle_Drive_Files_Trash : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Trash_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Trash Choreo */


/*! group TMBGoogle.Checkout.CancelOrder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CancelOrder Choreo.
 */
@interface TMBGoogle_Checkout_CancelOrder_Inputs : TMBChoreographyInputSet
	-(void)setComment:(NSString*)Comment;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMerchantId:(NSString*)MerchantId;
	-(void)setMerchantKey:(NSString*)MerchantKey;
	-(void)setOrderNumber:(NSString*)OrderNumber;
	-(void)setReason:(NSString*)Reason;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelOrder Choreo.
 */
@interface TMBGoogle_Checkout_CancelOrder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Cancels an order that's been submitted to a Google Checkout merchant account.
 */
@interface TMBGoogle_Checkout_CancelOrder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Checkout_CancelOrder_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Checkout_CancelOrder Choreo */


/*! group TMBGoogle.Spreadsheets.DeleteListRow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteListRow Choreo.
 */
@interface TMBGoogle_Spreadsheets_DeleteListRow_Inputs : TMBChoreographyInputSet
	-(void)setEditLink:(NSString*)EditLink;
	-(void)setPassword:(NSString*)Password;
	-(void)setRowId:(NSString*)RowId;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteListRow Choreo.
 */
@interface TMBGoogle_Spreadsheets_DeleteListRow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified worksheet row from a Google spreadsheet.
 */
@interface TMBGoogle_Spreadsheets_DeleteListRow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_DeleteListRow_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_DeleteListRow Choreo */


/*! group TMBGoogle.Spreadsheets.AddListRows Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddListRows Choreo.
 */
@interface TMBGoogle_Spreadsheets_AddListRows_Inputs : TMBChoreographyInputSet
	-(void)setRowsetXML:(NSString*)RowsetXML;
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddListRows Choreo.
 */
@interface TMBGoogle_Spreadsheets_AddListRows_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds one or more rows to a worksheet in a Google spreadsheet using a simple XML file you provide.
 */
@interface TMBGoogle_Spreadsheets_AddListRows : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_AddListRows_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_AddListRows Choreo */


/*! group TMBGoogle.Contacts.GetAllContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllContacts Choreo.
 */
@interface TMBGoogle_Contacts_GetAllContacts_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserEmail:(NSString*)UserEmail;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllContacts Choreo.
 */
@interface TMBGoogle_Contacts_GetAllContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve data for all contacts in an account.
 */
@interface TMBGoogle_Contacts_GetAllContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_GetAllContacts_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_GetAllContacts Choreo */


/*! group TMBGoogle.Drive.Permissions.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFileID:(NSString*)FileID;
	-(void)setPermissionID:(NSString*)PermissionID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a permission from a file.
 */
@interface TMBGoogle_Drive_Permissions_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Permissions_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Permissions_Delete Choreo */


/*! group TMBGoogle.Documents.CreateSharingPermission Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateSharingPermission Choreo.
 */
@interface TMBGoogle_Documents_CreateSharingPermission_Inputs : TMBChoreographyInputSet
	-(void)setNewUserEmail:(NSString*)NewUserEmail;
	-(void)setPassword:(NSString*)Password;
	-(void)setRole:(NSString*)Role;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSharingPermission Choreo.
 */
@interface TMBGoogle_Documents_CreateSharingPermission_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResourceID;
	-(NSString*)getResponse;	
@end

/*!
 * Grants a new user read/write access to an existing document.
 */
@interface TMBGoogle_Documents_CreateSharingPermission : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_CreateSharingPermission_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_CreateSharingPermission Choreo */


/*! group TMBGoogle.Drive.Permissions.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Permissions_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Permissions_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists a file's permissions.
 */
@interface TMBGoogle_Drive_Permissions_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Permissions_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Permissions_List Choreo */


/*! group TMBGoogle.Documents.RenameDocumentOrFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RenameDocumentOrFile Choreo.
 */
@interface TMBGoogle_Documents_RenameDocumentOrFile_Inputs : TMBChoreographyInputSet
	-(void)setNewTitle:(NSString*)NewTitle;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameDocumentOrFile Choreo.
 */
@interface TMBGoogle_Documents_RenameDocumentOrFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getEditLink;
	-(NSString*)getResponse;	
@end

/*!
 * Rename a document or file with the new title you specify.
 */
@interface TMBGoogle_Documents_RenameDocumentOrFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_RenameDocumentOrFile_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_RenameDocumentOrFile Choreo */


/*! group TMBGoogle.Spreadsheets.CreateSpreadsheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateSpreadsheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_CreateSpreadsheet_Inputs : TMBChoreographyInputSet
	-(void)setUploadFile:(NSString*)UploadFile;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultCSVFile:(NSString*)VaultCSVFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSpreadsheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_CreateSpreadsheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a Google spreadsheet from a CSV file.
 */
@interface TMBGoogle_Spreadsheets_CreateSpreadsheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_CreateSpreadsheet_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_CreateSpreadsheet Choreo */


/*! group TMBGoogle.Calendar.GetCalendar Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCalendar Choreo.
 */
@interface TMBGoogle_Calendar_GetCalendar_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCalendar Choreo.
 */
@interface TMBGoogle_Calendar_GetCalendar_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieve data for a specific calendar in a Google account.
 */
@interface TMBGoogle_Calendar_GetCalendar : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_GetCalendar_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_GetCalendar Choreo */


/*! group TMBGoogle.Drive.Children.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Children_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Children_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists the children of a specified folder.
 */
@interface TMBGoogle_Drive_Children_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Children_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Children_List Choreo */


/*! group TMBGoogle.Elevation.GetPathElevation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPathElevation Choreo.
 */
@interface TMBGoogle_Elevation_GetPathElevation_Inputs : TMBChoreographyInputSet
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSamples:(NSString*)Samples;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPathElevation Choreo.
 */
@interface TMBGoogle_Elevation_GetPathElevation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain elevation information for a path specified by a set of  geo-coordinates.
 */
@interface TMBGoogle_Elevation_GetPathElevation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Elevation_GetPathElevation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Elevation_GetPathElevation Choreo */


/*! group TMBGoogle.Drive.Comments.Insert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@interface TMBGoogle_Drive_Comments_Insert_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@interface TMBGoogle_Drive_Comments_Insert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a new comment on the given file.
 */
@interface TMBGoogle_Drive_Comments_Insert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Comments_Insert_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Comments_Insert Choreo */


/*! group TMBGoogle.Documents.GetAccountInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountInfo Choreo.
 */
@interface TMBGoogle_Documents_GetAccountInfo_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountInfo Choreo.
 */
@interface TMBGoogle_Documents_GetAccountInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a specified Google Documents account.
 */
@interface TMBGoogle_Documents_GetAccountInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_GetAccountInfo_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_GetAccountInfo Choreo */


/*! group TMBGoogle.Documents.SearchByTitle Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByTitle Choreo.
 */
@interface TMBGoogle_Documents_SearchByTitle_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByTitle Choreo.
 */
@interface TMBGoogle_Documents_SearchByTitle_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getEditMediaLink;
	-(NSString*)getEditMetaDataLink;
	-(NSString*)getResourceID;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a file with the title you specify.
 */
@interface TMBGoogle_Documents_SearchByTitle : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_SearchByTitle_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_SearchByTitle Choreo */


/*! group TMBGoogle.Calendar.GetEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEvent Choreo.
 */
@interface TMBGoogle_Calendar_GetEvent_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setEventID:(NSString*)EventID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEvent Choreo.
 */
@interface TMBGoogle_Calendar_GetEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieve data for all calendars in an account.
 */
@interface TMBGoogle_Calendar_GetEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_GetEvent_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_GetEvent Choreo */


/*! group TMBGoogle.Documents.CopyDocument Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CopyDocument Choreo.
 */
@interface TMBGoogle_Documents_CopyDocument_Inputs : TMBChoreographyInputSet
	-(void)setNewTitle:(NSString*)NewTitle;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyDocument Choreo.
 */
@interface TMBGoogle_Documents_CopyDocument_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Copies a document with the title you specify.
 */
@interface TMBGoogle_Documents_CopyDocument : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_CopyDocument_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_CopyDocument Choreo */


/*! group TMBGoogle.Drive.Parents.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Parents_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Parents_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists a file's parents.
 */
@interface TMBGoogle_Drive_Parents_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Parents_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Parents_List Choreo */


/*! group TMBGoogle.Directions.GetWalkingDirections Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWalkingDirections Choreo.
 */
@interface TMBGoogle_Directions_GetWalkingDirections_Inputs : TMBChoreographyInputSet
	-(void)setAlternatives:(NSString*)Alternatives;
	-(void)setDestination:(NSString*)Destination;
	-(void)setOrigin:(NSString*)Origin;
	-(void)setRegion:(NSString*)Region;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setUnits:(NSString*)Units;
	-(void)setWaypoints:(NSString*)Waypoints;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWalkingDirections Choreo.
 */
@interface TMBGoogle_Directions_GetWalkingDirections_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 *  Generate walking directions between two locations, denoted by address or latitude/longitude coordinates.
 */
@interface TMBGoogle_Directions_GetWalkingDirections : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Directions_GetWalkingDirections_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Directions_GetWalkingDirections Choreo */


/*! group TMBGoogle.DistanceMatrix.BicyclingDistanceMatrix Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the BicyclingDistanceMatrix Choreo.
 */
@interface TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_Inputs : TMBChoreographyInputSet
	-(void)setAlternatives:(NSString*)Alternatives;
	-(void)setDestinations:(NSString*)Destinations;
	-(void)setLanguage:(NSString*)Language;
	-(void)setOrigins:(NSString*)Origins;
	-(void)setRegion:(NSString*)Region;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BicyclingDistanceMatrix Choreo.
 */
@interface TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain bicycling distances and times for a matrix of addresses and/or latitude/longitude coordinates.
 */
@interface TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_Inputs*)newInputSet;
@end

/*! group TMBGoogle.DistanceMatrix_BicyclingDistanceMatrix Choreo */


/*! group TMBGoogle.Drive.Parents.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Parents_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFileID:(NSString*)FileID;
	-(void)setParentID:(NSString*)ParentID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Parents_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a specific parent reference.
 */
@interface TMBGoogle_Drive_Parents_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Parents_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Parents_Get Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveWorksheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveWorksheet_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setSpreadsheetName:(NSString*)SpreadsheetName;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
	-(void)setWorksheetName:(NSString*)WorksheetName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveWorksheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specified worksheet from a Google spreadsheet in CSV, XML, or JSON format.
 */
@interface TMBGoogle_Spreadsheets_RetrieveWorksheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveWorksheet_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveWorksheet Choreo */


/*! group TMBGoogle.Directions.GetBicyclingDirections Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBicyclingDirections Choreo.
 */
@interface TMBGoogle_Directions_GetBicyclingDirections_Inputs : TMBChoreographyInputSet
	-(void)setAlternatives:(NSString*)Alternatives;
	-(void)setDestination:(NSString*)Destination;
	-(void)setOrigin:(NSString*)Origin;
	-(void)setRegion:(NSString*)Region;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setUnits:(NSString*)Units;
	-(void)setWaypoints:(NSString*)Waypoints;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBicyclingDirections Choreo.
 */
@interface TMBGoogle_Directions_GetBicyclingDirections_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 *  Generate biking directions between two locations, denoted by address or latitude/longitude coordinates.
 */
@interface TMBGoogle_Directions_GetBicyclingDirections : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Directions_GetBicyclingDirections_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Directions_GetBicyclingDirections Choreo */


/*! group TMBGoogle.Picasa.ListAlbums Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAlbums Choreo.
 */
@interface TMBGoogle_Picasa_ListAlbums_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAlbums Choreo.
 */
@interface TMBGoogle_Picasa_ListAlbums_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * List all albums created in a Google Picasa account.
 */
@interface TMBGoogle_Picasa_ListAlbums : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_ListAlbums_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_ListAlbums Choreo */


/*! group TMBGoogle.Drive.Children.Insert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@interface TMBGoogle_Drive_Children_Insert_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setID:(NSString*)ID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@interface TMBGoogle_Drive_Children_Insert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Inserts a file into a folder.
 */
@interface TMBGoogle_Drive_Children_Insert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Children_Insert_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Children_Insert Choreo */


/*! group TMBGoogle.Documents.UploadFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@interface TMBGoogle_Documents_UploadFile_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@interface TMBGoogle_Documents_UploadFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads MS Word, Excel, or plain text documents to a Google account.
 */
@interface TMBGoogle_Documents_UploadFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_UploadFile_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_UploadFile Choreo */


/*! group TMBGoogle.Documents.TrashDocumentOrFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TrashDocumentOrFile Choreo.
 */
@interface TMBGoogle_Documents_TrashDocumentOrFile_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrashDocumentOrFile Choreo.
 */
@interface TMBGoogle_Documents_TrashDocumentOrFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResourceID;
	-(NSString*)getResponse;	
@end

/*!
 * Move the document or file you specify to the Google Documents trash.
 */
@interface TMBGoogle_Documents_TrashDocumentOrFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_TrashDocumentOrFile_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_TrashDocumentOrFile Choreo */


/*! group TMBGoogle.Picasa.AddCommentToPhoto Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddCommentToPhoto Choreo.
 */
@interface TMBGoogle_Picasa_AddCommentToPhoto_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumID:(NSString*)AlbumID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setComment:(NSString*)Comment;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCommentToPhoto Choreo.
 */
@interface TMBGoogle_Picasa_AddCommentToPhoto_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a comment to a specified photo in Google Picasa.
 */
@interface TMBGoogle_Picasa_AddCommentToPhoto : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_AddCommentToPhoto_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_AddCommentToPhoto Choreo */


/*! group TMBGoogle.Spreadsheets.AppendRow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AppendRow Choreo.
 */
@interface TMBGoogle_Spreadsheets_AppendRow_Inputs : TMBChoreographyInputSet
	-(void)setRowData:(NSString*)RowData;
	-(void)setPassword:(NSString*)Password;
	-(void)setSheetName:(NSString*)SheetName;
	-(void)setSpreadsheetTitle:(NSString*)SpreadsheetTitle;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AppendRow Choreo.
 */
@interface TMBGoogle_Spreadsheets_AppendRow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Appends a simple comma-separated row of data to a given Google Spreadsheet.
 */
@interface TMBGoogle_Spreadsheets_AppendRow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_AppendRow_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_AppendRow Choreo */


/*! group TMBGoogle.Plus.People.ListByActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListByActivity Choreo.
 */
@interface TMBGoogle_Plus_People_ListByActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCollection:(NSString*)Collection;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListByActivity Choreo.
 */
@interface TMBGoogle_Plus_People_ListByActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 *  Returns all of the people in the specified collection for a particular activity.
 */
@interface TMBGoogle_Plus_People_ListByActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_People_ListByActivity_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.People_ListByActivity Choreo */


/*! group TMBGoogle.Calendar.GetAllSettings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllSettings Choreo.
 */
@interface TMBGoogle_Calendar_GetAllSettings_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllSettings Choreo.
 */
@interface TMBGoogle_Calendar_GetAllSettings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves all settings for a Google Calendar account.
 */
@interface TMBGoogle_Calendar_GetAllSettings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_GetAllSettings_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_GetAllSettings Choreo */


/*! group TMBGoogle.Documents.DownloadBase64EncodedDocument Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DownloadBase64EncodedDocument Choreo.
 */
@interface TMBGoogle_Documents_DownloadBase64EncodedDocument_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setLink:(NSString*)Link;
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadBase64EncodedDocument Choreo.
 */
@interface TMBGoogle_Documents_DownloadBase64EncodedDocument_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFileContents;	
@end

/*!
 * Downloads a document with the title you specify, and returns the content as Base64 encoded data.
 */
@interface TMBGoogle_Documents_DownloadBase64EncodedDocument : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_DownloadBase64EncodedDocument_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_DownloadBase64EncodedDocument Choreo */


/*! group TMBGoogle.Calendar.DeleteEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEvent Choreo.
 */
@interface TMBGoogle_Calendar_DeleteEvent_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setEventID:(NSString*)EventID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEvent Choreo.
 */
@interface TMBGoogle_Calendar_DeleteEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a specific event from a specified calendar.
 */
@interface TMBGoogle_Calendar_DeleteEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_DeleteEvent_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_DeleteEvent Choreo */


/*! group TMBGoogle.Documents.ClientLoginAuthentication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ClientLoginAuthentication Choreo.
 */
@interface TMBGoogle_Documents_ClientLoginAuthentication_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClientLoginAuthentication Choreo.
 */
@interface TMBGoogle_Documents_ClientLoginAuthentication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationKey;
	-(NSString*)getResponse;	
@end

/*!
 * Request an authorization token for Google Documents.
 */
@interface TMBGoogle_Documents_ClientLoginAuthentication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_ClientLoginAuthentication_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_ClientLoginAuthentication Choreo */


/*! group TMBGoogle.Drive.Revisions.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Revisions_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setRevisionID:(NSString*)RevisionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Revisions_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a specific revision.
 */
@interface TMBGoogle_Drive_Revisions_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Revisions_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Revisions_Get Choreo */


/*! group TMBGoogle.Drive.Files.Untrash Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Untrash Choreo.
 */
@interface TMBGoogle_Drive_Files_Untrash_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Untrash Choreo.
 */
@interface TMBGoogle_Drive_Files_Untrash_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Restores a file from the trash.
 */
@interface TMBGoogle_Drive_Files_Untrash : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Untrash_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Untrash Choreo */


/*! group TMBGoogle.Latitude.DeleteCurrentLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCurrentLocation Choreo.
 */
@interface TMBGoogle_Latitude_DeleteCurrentLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCurrentLocation Choreo.
 */
@interface TMBGoogle_Latitude_DeleteCurrentLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a current location.
 */
@interface TMBGoogle_Latitude_DeleteCurrentLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_DeleteCurrentLocation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_DeleteCurrentLocation Choreo */


/*! group TMBGoogle.Documents.CreateEmptyDocument Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEmptyDocument Choreo.
 */
@interface TMBGoogle_Documents_CreateEmptyDocument_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEmptyDocument Choreo.
 */
@interface TMBGoogle_Documents_CreateEmptyDocument_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getEditLink;
	-(NSString*)getResourceID;
	-(NSString*)getResponse;	
@end

/*!
 * Create a new, empty document.
 */
@interface TMBGoogle_Documents_CreateEmptyDocument : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_CreateEmptyDocument_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_CreateEmptyDocument Choreo */


/*! group TMBGoogle.Contacts.GetContactsWithQuery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetContactsWithQuery Choreo.
 */
@interface TMBGoogle_Contacts_GetContactsWithQuery_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContactsWithQuery Choreo.
 */
@interface TMBGoogle_Contacts_GetContactsWithQuery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getContactID;
	-(NSString*)getLink;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the contact or contacts in that account that match a specified query term.
 */
@interface TMBGoogle_Contacts_GetContactsWithQuery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_GetContactsWithQuery_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_GetContactsWithQuery Choreo */


/*! group TMBGoogle.Latitude.RetrievePastLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrievePastLocation Choreo.
 */
@interface TMBGoogle_Latitude_RetrievePastLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setGranularity:(NSString*)Granularity;
	-(void)setLocationID:(NSString*)LocationID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrievePastLocation Choreo.
 */
@interface TMBGoogle_Latitude_RetrievePastLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specific location from a user's location history.
 */
@interface TMBGoogle_Latitude_RetrievePastLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_RetrievePastLocation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_RetrievePastLocation Choreo */


/*! group TMBGoogle.Latitude.InsertCurrentLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InsertCurrentLocation Choreo.
 */
@interface TMBGoogle_Latitude_InsertCurrentLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertCurrentLocation Choreo.
 */
@interface TMBGoogle_Latitude_InsertCurrentLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Updates or creates an authenticated user's current location.
 */
@interface TMBGoogle_Latitude_InsertCurrentLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_InsertCurrentLocation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_InsertCurrentLocation Choreo */


/*! group TMBGoogle.Picasa.RetrieveTagsByUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveTagsByUser Choreo.
 */
@interface TMBGoogle_Picasa_RetrieveTagsByUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveTagsByUser Choreo.
 */
@interface TMBGoogle_Picasa_RetrieveTagsByUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a feed of the photo tags for a specified user.
 */
@interface TMBGoogle_Picasa_RetrieveTagsByUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_RetrieveTagsByUser_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_RetrieveTagsByUser Choreo */


/*! group TMBGoogle.Drive.Permissions.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setPermissionID:(NSString*)PermissionID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a permission by ID.
 */
@interface TMBGoogle_Drive_Permissions_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Permissions_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Permissions_Get Choreo */


/*! group TMBGoogle.Plus.Activities.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBGoogle_Plus_Activities_Search_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setLanguage:(NSString*)Language;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBGoogle_Plus_Activities_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Searches all public activities.
 */
@interface TMBGoogle_Plus_Activities_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_Activities_Search_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.Activities_Search Choreo */


/*! group TMBGoogle.Analytics.ClientLoginAuthentication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ClientLoginAuthentication Choreo.
 */
@interface TMBGoogle_Analytics_ClientLoginAuthentication_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClientLoginAuthentication Choreo.
 */
@interface TMBGoogle_Analytics_ClientLoginAuthentication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationKey;	
@end

/*!
 * Request an authorization token for Google Analytics.
 */
@interface TMBGoogle_Analytics_ClientLoginAuthentication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Analytics_ClientLoginAuthentication_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Analytics_ClientLoginAuthentication Choreo */


/*! group TMBGoogle.Drive.Files.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Files_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Files_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Permanently deletes a file by ID.
 */
@interface TMBGoogle_Drive_Files_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Delete Choreo */


/*! group TMBGoogle.Plus.Activities.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Plus_Activities_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Plus_Activities_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a given activity.
 */
@interface TMBGoogle_Plus_Activities_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_Activities_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.Activities_Get Choreo */


/*! group TMBGoogle.Latitude.InsertPastLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InsertPastLocation Choreo.
 */
@interface TMBGoogle_Latitude_InsertPastLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLatitide:(NSString*)Latitide;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTimestampMs:(NSString*)TimestampMs;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertPastLocation Choreo.
 */
@interface TMBGoogle_Latitude_InsertPastLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Updates or creates an entry in an authenticated user's location history.
 */
@interface TMBGoogle_Latitude_InsertPastLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_InsertPastLocation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_InsertPastLocation Choreo */


/*! group TMBGoogle.Plus.People.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Plus_People_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Plus_People_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a person's profile.
 */
@interface TMBGoogle_Plus_People_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_People_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.People_Get Choreo */


/*! group TMBGoogle.Contacts.GetAllGroups Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllGroups Choreo.
 */
@interface TMBGoogle_Contacts_GetAllGroups_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllGroups Choreo.
 */
@interface TMBGoogle_Contacts_GetAllGroups_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve data for all groups in an account.
 */
@interface TMBGoogle_Contacts_GetAllGroups : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_GetAllGroups_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_GetAllGroups Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveSpecificRowsOrColumns Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSpecificRowsOrColumns Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_Inputs : TMBChoreographyInputSet
	-(void)setMaxColumn:(NSString*)MaxColumn;
	-(void)setMaxRow:(NSString*)MaxRow;
	-(void)setMinColumn:(NSString*)MinColumn;
	-(void)setMinRow:(NSString*)MinRow;
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSpecificRowsOrColumns Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves specific rows or columns based on a specified range.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveSpecificRowsOrColumns Choreo */


/*! group TMBGoogle.Drive.Replies.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Replies_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setReplyID:(NSString*)ReplyID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Replies_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a reply.
 */
@interface TMBGoogle_Drive_Replies_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Replies_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Replies_Delete Choreo */


/*! group TMBGoogle.Calendar.SearchEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchEvents Choreo.
 */
@interface TMBGoogle_Calendar_SearchEvents_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLastModified:(NSString*)LastModified;
	-(void)setMaxAttendees:(NSString*)MaxAttendees;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setMaxTime:(NSString*)MaxTime;
	-(void)setMinTime:(NSString*)MinTime;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShowDeleted:(NSString*)ShowDeleted;
	-(void)setShowHiddenInvitations:(NSString*)ShowHiddenInvitations;
	-(void)setSingleEvent:(NSString*)SingleEvent;
	-(void)setTimezone:(NSString*)Timezone;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchEvents Choreo.
 */
@interface TMBGoogle_Calendar_SearchEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Allows you to search for events using a variety of search parameters.
 */
@interface TMBGoogle_Calendar_SearchEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_SearchEvents_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_SearchEvents Choreo */


/*! group TMBGoogle.Documents.SearchForShared Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchForShared Choreo.
 */
@interface TMBGoogle_Documents_SearchForShared_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUser1:(NSString*)User1;
	-(void)setUser2:(NSString*)User2;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForShared Choreo.
 */
@interface TMBGoogle_Documents_SearchForShared_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all documents shared by the two users you specify.
 */
@interface TMBGoogle_Documents_SearchForShared : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_SearchForShared_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_SearchForShared Choreo */


/*! group TMBGoogle.Picasa.DeleteTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTag Choreo.
 */
@interface TMBGoogle_Picasa_DeleteTag_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumId:(NSString*)AlbumId;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setTagID:(NSString*)TagID;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTag Choreo.
 */
@interface TMBGoogle_Picasa_DeleteTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a tag from a specified photo in Google Picasa.
 */
@interface TMBGoogle_Picasa_DeleteTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_DeleteTag_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_DeleteTag Choreo */


/*! group TMBGoogle.Contacts.UpdateContact Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateContact Choreo.
 */
@interface TMBGoogle_Contacts_UpdateContact_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setID:(NSString*)ID;
	-(void)setNewEmail:(NSString*)NewEmail;
	-(void)setNewFirstName:(NSString*)NewFirstName;
	-(void)setNewLastName:(NSString*)NewLastName;
	-(void)setNewPhone:(NSString*)NewPhone;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateContact Choreo.
 */
@interface TMBGoogle_Contacts_UpdateContact_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getContactID;
	-(NSString*)getEmail;
	-(NSString*)getFirstName;
	-(NSString*)getLastName;
	-(NSString*)getPhone;
	-(NSString*)getResponse;	
@end

/*!
 * Update an existing contact's information.
 */
@interface TMBGoogle_Contacts_UpdateContact : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_UpdateContact_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_UpdateContact Choreo */


/*! group TMBGoogle.Checkout.ChargeAndShipOrder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ChargeAndShipOrder Choreo.
 */
@interface TMBGoogle_Checkout_ChargeAndShipOrder_Inputs : TMBChoreographyInputSet
	-(void)setAmount:(NSString*)Amount;
	-(void)setCarrier:(NSString*)Carrier;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMerchantId:(NSString*)MerchantId;
	-(void)setMerchantKey:(NSString*)MerchantKey;
	-(void)setOrderNumber:(NSString*)OrderNumber;
	-(void)setTrackingNumber:(NSString*)TrackingNumber;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChargeAndShipOrder Choreo.
 */
@interface TMBGoogle_Checkout_ChargeAndShipOrder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Charge and ship an order once a shopping cart order has arrived in your Google Checkout Inbox.
 */
@interface TMBGoogle_Checkout_ChargeAndShipOrder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Checkout_ChargeAndShipOrder_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Checkout_ChargeAndShipOrder Choreo */


/*! group TMBGoogle.Documents.SearchByType Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByType Choreo.
 */
@interface TMBGoogle_Documents_SearchByType_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setType:(NSString*)Type;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByType Choreo.
 */
@interface TMBGoogle_Documents_SearchByType_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all files of a MIME type you specify.
 */
@interface TMBGoogle_Documents_SearchByType : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_SearchByType_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_SearchByType Choreo */


/*! group TMBGoogle.Drive.Revisions.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Revisions_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setRevisionID:(NSString*)RevisionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Revisions_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a revision.
 */
@interface TMBGoogle_Drive_Revisions_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Revisions_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Revisions_Delete Choreo */


/*! group TMBGoogle.Elevation.GetLocationElevation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLocationElevation Choreo.
 */
@interface TMBGoogle_Elevation_GetLocationElevation_Inputs : TMBChoreographyInputSet
	-(void)setLocations:(NSString*)Locations;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLocationElevation Choreo.
 */
@interface TMBGoogle_Elevation_GetLocationElevation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain elevation information for a path generated by a set of geo-coordinates.
 */
@interface TMBGoogle_Elevation_GetLocationElevation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Elevation_GetLocationElevation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Elevation_GetLocationElevation Choreo */


/*! group TMBGoogle.Analytics.GetMetrics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMetrics Choreo.
 */
@interface TMBGoogle_Analytics_GetMetrics_Inputs : TMBChoreographyInputSet
	-(void)setDimensions:(NSString*)Dimensions;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setFilters:(NSString*)Filters;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setMetrics:(NSString*)Metrics;
	-(void)setPassword:(NSString*)Password;
	-(void)setProfileId:(NSString*)ProfileId;
	-(void)setSegment:(NSString*)Segment;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMetrics Choreo.
 */
@interface TMBGoogle_Analytics_GetMetrics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getBounces;
	-(NSString*)getPageViews;
	-(NSString*)getResponse;
	-(NSString*)getVisits;	
@end

/*!
 * Retrieves metrics such as visits, page views, bounces within a specified time frame.
 */
@interface TMBGoogle_Analytics_GetMetrics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Analytics_GetMetrics_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Analytics_GetMetrics Choreo */


/*! group TMBGoogle.Geocoding.GeocodeByAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GeocodeByAddress Choreo.
 */
@interface TMBGoogle_Geocoding_GeocodeByAddress_Inputs : TMBChoreographyInputSet
	-(void)setAddress:(NSString*)Address;
	-(void)setBounds:(NSString*)Bounds;
	-(void)setLanguage:(NSString*)Language;
	-(void)setRegion:(NSString*)Region;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeocodeByAddress Choreo.
 */
@interface TMBGoogle_Geocoding_GeocodeByAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLatitude;
	-(NSString*)getLongitude;
	-(NSString*)getResponse;	
@end

/*!
 * Converts a human-readable address into geographic coordinates.
 */
@interface TMBGoogle_Geocoding_GeocodeByAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Geocoding_GeocodeByAddress_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Geocoding_GeocodeByAddress Choreo */


/*! group TMBGoogle.Spreadsheets.UpdateListRows Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateListRows Choreo.
 */
@interface TMBGoogle_Spreadsheets_UpdateListRows_Inputs : TMBChoreographyInputSet
	-(void)setRowsetXML:(NSString*)RowsetXML;
	-(void)setPassword:(NSString*)Password;
	-(void)setRowId:(NSString*)RowId;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateListRows Choreo.
 */
@interface TMBGoogle_Spreadsheets_UpdateListRows_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a worksheet row in a Google spreadsheet using a simple XML file you provide.
 */
@interface TMBGoogle_Spreadsheets_UpdateListRows : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_UpdateListRows_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_UpdateListRows Choreo */


/*! group TMBGoogle.Calendar.UpdateCalendar Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCalendar Choreo.
 */
@interface TMBGoogle_Calendar_UpdateCalendar_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setNewDescription:(NSString*)NewDescription;
	-(void)setNewLocation:(NSString*)NewLocation;
	-(void)setNewSummary:(NSString*)NewSummary;
	-(void)setNewTimezone:(NSString*)NewTimezone;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCalendar Choreo.
 */
@interface TMBGoogle_Calendar_UpdateCalendar_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates the metadata for a calendar.
 */
@interface TMBGoogle_Calendar_UpdateCalendar : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_UpdateCalendar_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_UpdateCalendar Choreo */


/*! group TMBGoogle.Places.PlaceDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PlaceDetails Choreo.
 */
@interface TMBGoogle_Places_PlaceDetails_Inputs : TMBChoreographyInputSet
	-(void)setKey:(NSString*)Key;
	-(void)setLanguage:(NSString*)Language;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PlaceDetails Choreo.
 */
@interface TMBGoogle_Places_PlaceDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve detailed information about places retrieved by the PlaceSearch Choreo.
 */
@interface TMBGoogle_Places_PlaceDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Places_PlaceDetails_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Places_PlaceDetails Choreo */


/*! group TMBGoogle.Places.UserPlaceReports Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UserPlaceReports Choreo.
 */
@interface TMBGoogle_Places_UserPlaceReports_Inputs : TMBChoreographyInputSet
	-(void)setPOSTForm:(NSString*)POSTForm;
	-(void)setKey:(NSString*)Key;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSensor:(NSString*)Sensor;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserPlaceReports Choreo.
 */
@interface TMBGoogle_Places_UserPlaceReports_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add a new Place to Google Places.
 */
@interface TMBGoogle_Places_UserPlaceReports : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Places_UserPlaceReports_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Places_UserPlaceReports Choreo */


/*! group TMBGoogle.Picasa.TagPhoto Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TagPhoto Choreo.
 */
@interface TMBGoogle_Picasa_TagPhoto_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumID:(NSString*)AlbumID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setTag:(NSString*)Tag;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TagPhoto Choreo.
 */
@interface TMBGoogle_Picasa_TagPhoto_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a tag for a specified photo in Google Picasa.
 */
@interface TMBGoogle_Picasa_TagPhoto : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_TagPhoto_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_TagPhoto Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveWorksheets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveWorksheets Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveWorksheets_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveWorksheets Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveWorksheets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of worksheets in a given Google spreadsheet.
 */
@interface TMBGoogle_Spreadsheets_RetrieveWorksheets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveWorksheets_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveWorksheets Choreo */


/*! group TMBGoogle.Calendar.CreateEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEvent Choreo.
 */
@interface TMBGoogle_Calendar_CreateEvent_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarID:(NSString*)CalendarID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEventDescription:(NSString*)EventDescription;
	-(void)setEventLocation:(NSString*)EventLocation;
	-(void)setEventTitle:(NSString*)EventTitle;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setStartTime:(NSString*)StartTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEvent Choreo.
 */
@interface TMBGoogle_Calendar_CreateEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCreateEvent;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	-(NSString*)getTimezoneSetting;
	
@end

/*!
 * Create a new event in a specified calendar.
 */
@interface TMBGoogle_Calendar_CreateEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_CreateEvent_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_CreateEvent Choreo */


/*! group TMBGoogle.Drive.Comments.Update Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@interface TMBGoogle_Drive_Comments_Update_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@interface TMBGoogle_Drive_Comments_Update_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates an existing comment.
 */
@interface TMBGoogle_Drive_Comments_Update : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Comments_Update_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Comments_Update Choreo */


/*! group TMBGoogle.Documents.ToggleProperties Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ToggleProperties Choreo.
 */
@interface TMBGoogle_Documents_ToggleProperties_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setTitle:(NSString*)Title;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ToggleProperties Choreo.
 */
@interface TMBGoogle_Documents_ToggleProperties_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getEditLink;
	-(NSString*)getResponse;	
@end

/*!
 * Toggle settings for a document or file on or off, depending on its current state.
 */
@interface TMBGoogle_Documents_ToggleProperties : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Documents_ToggleProperties_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Documents_ToggleProperties Choreo */


/*! group TMBGoogle.Spreadsheets.RetrieveSpreadsheetDetailsByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSpreadsheetDetailsByName Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetName:(NSString*)SpreadsheetName;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSpreadsheetDetailsByName Choreo.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getSpreadsheetDetails;	
@end

/*!
 * Retrieves spreadsheet and worksheet IDs with a given spreadsheet name.
 */
@interface TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_RetrieveSpreadsheetDetailsByName Choreo */


/*! group TMBGoogle.Calendar.GetAllCalendars Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllCalendars Choreo.
 */
@interface TMBGoogle_Calendar_GetAllCalendars_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setFields:(NSString*)Fields;
	-(void)setHidden:(NSString*)Hidden;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllCalendars Choreo.
 */
@interface TMBGoogle_Calendar_GetAllCalendars_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieve data for all calendars.
 */
@interface TMBGoogle_Calendar_GetAllCalendars : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_GetAllCalendars_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_GetAllCalendars Choreo */


/*! group TMBGoogle.Drive.Comments.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBGoogle_Drive_Comments_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBGoogle_Drive_Comments_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a comment.
 */
@interface TMBGoogle_Drive_Comments_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Comments_Delete_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Comments_Delete Choreo */


/*! group TMBGoogle.Plus.Activities.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Plus_Activities_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCollection:(NSString*)Collection;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Plus_Activities_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 *  Returns a list of all activities in the specified collection for a particular user.
 */
@interface TMBGoogle_Plus_Activities_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_Activities_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.Activities_List Choreo */


/*! group TMBGoogle.Spreadsheets.UpdateCells Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCells Choreo.
 */
@interface TMBGoogle_Spreadsheets_UpdateCells_Inputs : TMBChoreographyInputSet
	-(void)setColumn:(NSString*)Column;
	-(void)setInputValue:(NSString*)InputValue;
	-(void)setPassword:(NSString*)Password;
	-(void)setRow:(NSString*)Row;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCells Choreo.
 */
@interface TMBGoogle_Spreadsheets_UpdateCells_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified cell in a Google worksheet.
 */
@interface TMBGoogle_Spreadsheets_UpdateCells : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_UpdateCells_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_UpdateCells Choreo */


/*! group TMBGoogle.Picasa.ListPhotosByAlbum Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotosByAlbum Choreo.
 */
@interface TMBGoogle_Picasa_ListPhotosByAlbum_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumID:(NSString*)AlbumID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotosByAlbum Choreo.
 */
@interface TMBGoogle_Picasa_ListPhotosByAlbum_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all photos in a specified Google Picasa album.
 */
@interface TMBGoogle_Picasa_ListPhotosByAlbum : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_ListPhotosByAlbum_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_ListPhotosByAlbum Choreo */


/*! group TMBGoogle.Drive.Comments.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Comments_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUpdatedMIn:(NSString*)UpdatedMIn;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Comments_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists a file's comments.
 */
@interface TMBGoogle_Drive_Comments_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Comments_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Comments_List Choreo */


/*! group TMBGoogle.Picasa.CreateAlbum Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAlbum Choreo.
 */
@interface TMBGoogle_Picasa_CreateAlbum_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setKeywords:(NSString*)Keywords;
	-(void)setPhotoAccess:(NSString*)PhotoAccess;
	-(void)setPhotoLocation:(NSString*)PhotoLocation;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSummary:(NSString*)Summary;
	-(void)setTimestamp:(NSString*)Timestamp;
	-(void)setTitle:(NSString*)Title;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAlbum Choreo.
 */
@interface TMBGoogle_Picasa_CreateAlbum_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a photo album in a Google Picasa account.
 */
@interface TMBGoogle_Picasa_CreateAlbum : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Picasa_CreateAlbum_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Picasa_CreateAlbum Choreo */


/*! group TMBGoogle.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBGoogle_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMBGoogle_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBGoogle_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBGoogle.OAuth_InitializeOAuth Choreo */


/*! group TMBGoogle.Drive.Changes.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Changes_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChangeID:(NSString*)ChangeID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Changes_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Gets a specific change.
 */
@interface TMBGoogle_Drive_Changes_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Changes_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Changes_Get Choreo */


/*! group TMBGoogle.Plus.Comments.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Plus_Comments_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Plus_Comments_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list all of the comments for a given activity.
 */
@interface TMBGoogle_Plus_Comments_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_Comments_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.Comments_List Choreo */


/*! group TMBGoogle.Spreadsheets.DeleteWorksheet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_DeleteWorksheet_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey;
	-(void)setUsername:(NSString*)Username;
	-(void)setWorksheetId:(NSString*)WorksheetId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWorksheet Choreo.
 */
@interface TMBGoogle_Spreadsheets_DeleteWorksheet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified worksheet from an existing spreadsheet.
 */
@interface TMBGoogle_Spreadsheets_DeleteWorksheet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Spreadsheets_DeleteWorksheet_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Spreadsheets_DeleteWorksheet Choreo */


/*! group TMBGoogle.Latitude.ListLocationHistory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListLocationHistory Choreo.
 */
@interface TMBGoogle_Latitude_ListLocationHistory_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setGranularity:(NSString*)Granularity;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setMaxTime:(NSString*)MaxTime;
	-(void)setMinTime:(NSString*)MinTime;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListLocationHistory Choreo.
 */
@interface TMBGoogle_Latitude_ListLocationHistory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of a user's location history.
 */
@interface TMBGoogle_Latitude_ListLocationHistory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_ListLocationHistory_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_ListLocationHistory Choreo */


/*! group TMBGoogle.Latitude.DeletePastLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePastLocation Choreo.
 */
@interface TMBGoogle_Latitude_DeletePastLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLocationID:(NSString*)LocationID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePastLocation Choreo.
 */
@interface TMBGoogle_Latitude_DeletePastLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specific location from a user's location history.
 */
@interface TMBGoogle_Latitude_DeletePastLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Latitude_DeletePastLocation_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Latitude_DeletePastLocation Choreo */


/*! group TMBGoogle.Drive.Files.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Drive_Files_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setExportFormat:(NSString*)ExportFormat;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUpdateViewDate:(NSString*)UpdateViewDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Drive_Files_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFileContent;
	-(NSString*)getFileMetadata;
	-(NSString*)getNewAccessToken;
	
@end

/*!
 * Gets a file's metadata and content by ID.
 */
@interface TMBGoogle_Drive_Files_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Get Choreo */


/*! group TMBGoogle.DistanceMatrix.WalkingDistanceMatrix Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WalkingDistanceMatrix Choreo.
 */
@interface TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_Inputs : TMBChoreographyInputSet
	-(void)setAlternatives:(NSString*)Alternatives;
	-(void)setDestinations:(NSString*)Destinations;
	-(void)setLanguage:(NSString*)Language;
	-(void)setOrigins:(NSString*)Origins;
	-(void)setRegion:(NSString*)Region;
	-(void)setSensor:(NSString*)Sensor;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WalkingDistanceMatrix Choreo.
 */
@interface TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain walking distances and times for a matrix of addresses and/or latitude/longitude coordinates.
 */
@interface TMBGoogle_DistanceMatrix_WalkingDistanceMatrix : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_Inputs*)newInputSet;
@end

/*! group TMBGoogle.DistanceMatrix_WalkingDistanceMatrix Choreo */


/*! group TMBGoogle.Calendar.DeleteAllEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAllEvents Choreo.
 */
@interface TMBGoogle_Calendar_DeleteAllEvents_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAllEvents Choreo.
 */
@interface TMBGoogle_Calendar_DeleteAllEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Delete all events from a primary calendar of an account. Note that this operation can't be undone.
 */
@interface TMBGoogle_Calendar_DeleteAllEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_DeleteAllEvents_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_DeleteAllEvents Choreo */


/*! group TMBGoogle.Drive.Revisions.Update Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@interface TMBGoogle_Drive_Revisions_Update_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setRevisionID:(NSString*)RevisionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@interface TMBGoogle_Drive_Revisions_Update_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates a revision.
 */
@interface TMBGoogle_Drive_Revisions_Update : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Revisions_Update_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Revisions_Update Choreo */


/*! group TMBGoogle.Calendar.SearchCalendarsByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchCalendarsByName Choreo.
 */
@interface TMBGoogle_Calendar_SearchCalendarsByName_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalendarName:(NSString*)CalendarName;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchCalendarsByName Choreo.
 */
@interface TMBGoogle_Calendar_SearchCalendarsByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCalendarDescription;
	-(NSString*)getCalendarId;
	-(NSString*)getCalendarSummary;
	-(NSString*)getCalendarTimezone;
	-(NSString*)getNewAccessToken;	
@end

/*!
 * Retrieves information about a calendar including the id with a given calendar name.
 */
@interface TMBGoogle_Calendar_SearchCalendarsByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_SearchCalendarsByName_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_SearchCalendarsByName Choreo */


/*! group TMBGoogle.Checkout.TestAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TestAccount Choreo.
 */
@interface TMBGoogle_Checkout_TestAccount_Inputs : TMBChoreographyInputSet
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMerchantId:(NSString*)MerchantId;
	-(void)setMerchantKey:(NSString*)MerchantKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TestAccount Choreo.
 */
@interface TMBGoogle_Checkout_TestAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to perform simple test to verify connectivity with your Google Checkout account.
 */
@interface TMBGoogle_Checkout_TestAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Checkout_TestAccount_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Checkout_TestAccount Choreo */


/*! group TMBGoogle.Drive.Files.Touch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Touch Choreo.
 */
@interface TMBGoogle_Drive_Files_Touch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Touch Choreo.
 */
@interface TMBGoogle_Drive_Files_Touch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Sets the file's updated time to the current server time.
 */
@interface TMBGoogle_Drive_Files_Touch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Touch_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Touch Choreo */


/*! group TMBGoogle.Checkout.CreateOrder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateOrder Choreo.
 */
@interface TMBGoogle_Checkout_CreateOrder_Inputs : TMBChoreographyInputSet
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setItemDescription:(NSString*)ItemDescription;
	-(void)setItemName:(NSString*)ItemName;
	-(void)setMerchantId:(NSString*)MerchantId;
	-(void)setMerchantKey:(NSString*)MerchantKey;
	-(void)setQuanity:(NSString*)Quanity;
	-(void)setShippingMethod:(NSString*)ShippingMethod;
	-(void)setShippingPrice:(NSString*)ShippingPrice;
	-(void)setUnitPrice:(NSString*)UnitPrice;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateOrder Choreo.
 */
@interface TMBGoogle_Checkout_CreateOrder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Populates a shopping cart and sends order information to your merchant  account allowing a user to complete an order using Google Checkout.
 */
@interface TMBGoogle_Checkout_CreateOrder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Checkout_CreateOrder_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Checkout_CreateOrder Choreo */


/*! group TMBGoogle.Calendar.GetSetting Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSetting Choreo.
 */
@interface TMBGoogle_Calendar_GetSetting_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSettingID:(NSString*)SettingID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSetting Choreo.
 */
@interface TMBGoogle_Calendar_GetSetting_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a specifed setting for a Google Calendar account.
 */
@interface TMBGoogle_Calendar_GetSetting : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Calendar_GetSetting_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Calendar_GetSetting Choreo */


/*! group TMBGoogle.Checkout.RefundOrder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefundOrder Choreo.
 */
@interface TMBGoogle_Checkout_RefundOrder_Inputs : TMBChoreographyInputSet
	-(void)setAmount:(NSString*)Amount;
	-(void)setComment:(NSString*)Comment;
	-(void)setEndpoint:(NSString*)Endpoint;
	-(void)setMerchantId:(NSString*)MerchantId;
	-(void)setMerchantKey:(NSString*)MerchantKey;
	-(void)setOrderNumber:(NSString*)OrderNumber;
	-(void)setReason:(NSString*)Reason;
	-(void)setSandboxMode:(NSString*)SandboxMode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundOrder Choreo.
 */
@interface TMBGoogle_Checkout_RefundOrder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getExecutionStatus;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to refund an order that's been submitted to your Google Checkout merchant account.
 */
@interface TMBGoogle_Checkout_RefundOrder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Checkout_RefundOrder_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Checkout_RefundOrder Choreo */


/*! group TMBGoogle.Drive.Revisions.List Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@interface TMBGoogle_Drive_Revisions_List_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@interface TMBGoogle_Drive_Revisions_List_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists a file's revisions.
 */
@interface TMBGoogle_Drive_Revisions_List : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Revisions_List_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Revisions_List Choreo */


/*! group TMBGoogle.Plus.Comments.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBGoogle_Plus_Comments_Get_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setUserIP:(NSString*)UserIP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBGoogle_Plus_Comments_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a given comment.
 */
@interface TMBGoogle_Plus_Comments_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Plus_Comments_Get_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Plus.Comments_Get Choreo */


/*! group TMBGoogle.Contacts.CreateContact Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateContact Choreo.
 */
@interface TMBGoogle_Contacts_CreateContact_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setLastName:(NSString*)LastName;
	-(void)setPhone:(NSString*)Phone;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateContact Choreo.
 */
@interface TMBGoogle_Contacts_CreateContact_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getContactID;
	-(NSString*)getResponse;	
@end

/*!
 * Create a new contact.
 */
@interface TMBGoogle_Contacts_CreateContact : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Contacts_CreateContact_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Contacts_CreateContact Choreo */


/*! group TMBGoogle.Drive.Replies.Insert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@interface TMBGoogle_Drive_Replies_Insert_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@interface TMBGoogle_Drive_Replies_Insert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a new reply to the given comment.
 */
@interface TMBGoogle_Drive_Replies_Insert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Replies_Insert_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Replies_Insert Choreo */


/*! group TMBGoogle.Drive.Permissions.Insert Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Insert_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSendNotificationEmails:(NSString*)SendNotificationEmails;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@interface TMBGoogle_Drive_Permissions_Insert_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Inserts a permission for a file.
 */
@interface TMBGoogle_Drive_Permissions_Insert : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Permissions_Insert_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Permissions_Insert Choreo */


/*! group TMBGoogle.Drive.Files.Update Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@interface TMBGoogle_Drive_Files_Update_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setConvert:(NSString*)Convert;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileContent:(NSString*)FileContent;
	-(void)setFileID:(NSString*)FileID;
	-(void)setOCR:(NSString*)OCR;
	-(void)setOcrLanguage:(NSString*)OcrLanguage;
	-(void)setPinned:(NSString*)Pinned;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSetModifiedDate:(NSString*)SetModifiedDate;
	-(void)setSourceLanguage:(NSString*)SourceLanguage;
	-(void)setTargetLanguage:(NSString*)TargetLanguage;
	-(void)setTimedTextLanguage:(NSString*)TimedTextLanguage;
	-(void)setTimedTextTrackName:(NSString*)TimedTextTrackName;
	-(void)setUpdateViewedDate:(NSString*)UpdateViewedDate;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@interface TMBGoogle_Drive_Files_Update_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates the metadata or content of an existing file.
 */
@interface TMBGoogle_Drive_Files_Update : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoogle_Drive_Files_Update_Inputs*)newInputSet;
@end

/*! group TMBGoogle.Drive.Files_Update Choreo */
