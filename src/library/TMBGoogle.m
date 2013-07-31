/*!
 * @TMBGoogle.m
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

#import "TMBGoogle.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCategory Choreo.
 */
@implementation TMBGoogle_Documents_SearchByCategory_Inputs

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) The category to list: "document", "spreadsheet", "presentation", "drawing", "folder", "starred", or "trashed". Combine multiple categories with "/".
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the MyDocs input for this Choreo.
	*(optional, boolean) Enter "true" to return resources for the requesting user only. The default is "false" (returns all account resources).
	 */
	-(void)setMyDocs:(NSString*)MyDocs {
		[super setInput:@"MyDocs" toValue:MyDocs];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the Viewed input for this Choreo.
	*(optional, boolean) Enter "true" to return only viewed resources for the specified category. The default is "false" (viewed and unviewed category resources).
	 */
	-(void)setViewed:(NSString*)Viewed {
		[super setInput:@"Viewed" toValue:Viewed];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCategory Choreo.
 */
@implementation TMBGoogle_Documents_SearchByCategory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all resources in a category you specify.
 */
@implementation TMBGoogle_Documents_SearchByCategory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_SearchByCategory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/SearchByCategory"] autorelease];
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
		TMBGoogle_Documents_SearchByCategory_ResultSet *results = [[[TMBGoogle_Documents_SearchByCategory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByCategory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_SearchByCategory_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_SearchByCategory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Files_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A query string for searching files.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Files_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FileID" output from an execution of this Choreo.
	 * @return - NSString* (string) The id of the file returned. This is returned only when using the Query input to search for specific files.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFileID {
		return [super getOutputByName:@"FileID"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists the user's files.
 */
@implementation TMBGoogle_Drive_Files_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/List"] autorelease];
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
		TMBGoogle_Drive_Files_List_ResultSet *results = [[[TMBGoogle_Drive_Files_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Copy Choreo.
 */
@implementation TMBGoogle_Drive_Files_Copy_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(optional, json) A JSON representation of fields in a file resource. File metadata information (such as the title) can be set using this input. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Convert input for this Choreo.
	*(optional, boolean) Whether to convert this file to the corresponding Google Docs format. (Default: false).
	 */
	-(void)setConvert:(NSString*)Convert {
		[super setInput:@"Convert" toValue:Convert];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file to copy.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the OCR input for this Choreo.
	*(optional, boolean) Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads. (Default: false)
	 */
	-(void)setOCR:(NSString*)OCR {
		[super setInput:@"OCR" toValue:OCR];
	}

	/*!
	 * Set the value of the OcrLanguage input for this Choreo.
	*(optional, string) If ocr is true, hints at the language to use. Valid values are ISO 639-1 codes.
	 */
	-(void)setOcrLanguage:(NSString*)OcrLanguage {
		[super setInput:@"OcrLanguage" toValue:OcrLanguage];
	}

	/*!
	 * Set the value of the Pinned input for this Choreo.
	*(optional, boolean) Whether to pin the head revision of the uploaded file. (Default: false).
	 */
	-(void)setPinned:(NSString*)Pinned {
		[super setInput:@"Pinned" toValue:Pinned];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SourceLanguage input for this Choreo.
	*(optional, string) The language of the original file to be translated.
	 */
	-(void)setSourceLanguage:(NSString*)SourceLanguage {
		[super setInput:@"SourceLanguage" toValue:SourceLanguage];
	}

	/*!
	 * Set the value of the TargetLanguage input for this Choreo.
	*(optional, string) Target language to translate the file to. If no sourceLanguage is provided, the API will attempt to detect the language.
	 */
	-(void)setTargetLanguage:(NSString*)TargetLanguage {
		[super setInput:@"TargetLanguage" toValue:TargetLanguage];
	}

	/*!
	 * Set the value of the TimedTextLanguage input for this Choreo.
	*(optional, string) The language of the timed text.
	 */
	-(void)setTimedTextLanguage:(NSString*)TimedTextLanguage {
		[super setInput:@"TimedTextLanguage" toValue:TimedTextLanguage];
	}

	/*!
	 * Set the value of the TimedTextTrackName input for this Choreo.
	*(optional, string) The timed text track name.
	 */
	-(void)setTimedTextTrackName:(NSString*)TimedTextTrackName {
		[super setInput:@"TimedTextTrackName" toValue:TimedTextTrackName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Copy Choreo.
 */
@implementation TMBGoogle_Drive_Files_Copy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a copy of the specified file.
 */
@implementation TMBGoogle_Drive_Files_Copy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Copy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Copy"] autorelease];
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
		TMBGoogle_Drive_Files_Copy_ResultSet *results = [[[TMBGoogle_Drive_Files_Copy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Copy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Copy_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Copy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBGoogle_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Google after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Google after registering your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Timeout input for this Choreo.
	*(optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
	 */
	-(void)setTimeout:(NSString*)Timeout {
		[super setInput:@"Timeout" toValue:Timeout];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@implementation TMBGoogle_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The access token for the user that has granted access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining lifetime of the short-lived access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}

	/*!
	 * Retrieve the value of the "RefreshToken" output from an execution of this Choreo.
	 * @return - NSString* (string) A token that may be used to obtain a new access token when the short-lived access token expires.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRefreshToken {
		return [super getOutputByName:@"RefreshToken"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Google access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBGoogle_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/OAuth/FinalizeOAuth"] autorelease];
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
		TMBGoogle_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBGoogle_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBGoogle_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StructuredQuery Choreo.
 */
@implementation TMBGoogle_Spreadsheets_StructuredQuery_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A valid structured query (i.e. id>4)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the feed you want to retrieve
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet associated with the feed you want to retrieve
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StructuredQuery Choreo.
 */
@implementation TMBGoogle_Spreadsheets_StructuredQuery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list-based feed containing data in your Google spreadsheet that meets a specified criteria.
 */
@implementation TMBGoogle_Spreadsheets_StructuredQuery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_StructuredQuery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/StructuredQuery"] autorelease];
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
		TMBGoogle_Spreadsheets_StructuredQuery_ResultSet *results = [[[TMBGoogle_Spreadsheets_StructuredQuery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StructuredQuery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_StructuredQuery_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_StructuredQuery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CellRangeQuery Choreo.
 */
@implementation TMBGoogle_Spreadsheets_CellRangeQuery_Inputs

	/*!
	 * Set the value of the MaxColumn input for this Choreo.
	*(optional, integer) The maximum column number for the cell range that you want to retrieve
	 */
	-(void)setMaxColumn:(NSString*)MaxColumn {
		[super setInput:@"MaxColumn" toValue:MaxColumn];
	}

	/*!
	 * Set the value of the MaxRow input for this Choreo.
	*(optional, integer) The maximum row number for the cell range that you want to retrieve
	 */
	-(void)setMaxRow:(NSString*)MaxRow {
		[super setInput:@"MaxRow" toValue:MaxRow];
	}

	/*!
	 * Set the value of the MinColumn input for this Choreo.
	*(optional, integer) The minimum column number for the cell range you want to retrieve
	 */
	-(void)setMinColumn:(NSString*)MinColumn {
		[super setInput:@"MinColumn" toValue:MinColumn];
	}

	/*!
	 * Set the value of the MinRow input for this Choreo.
	*(optional, integer) The minimum row number for the cell range you want to retrieve
	 */
	-(void)setMinRow:(NSString*)MinRow {
		[super setInput:@"MinRow" toValue:MinRow];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the cells you want to retrieve
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet associated with the cells you want to retrieve
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CellRangeQuery Choreo.
 */
@implementation TMBGoogle_Spreadsheets_CellRangeQuery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a range of cells from a specified Google worksheet.
 */
@implementation TMBGoogle_Spreadsheets_CellRangeQuery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_CellRangeQuery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/CellRangeQuery"] autorelease];
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
		TMBGoogle_Spreadsheets_CellRangeQuery_ResultSet *results = [[[TMBGoogle_Spreadsheets_CellRangeQuery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CellRangeQuery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_CellRangeQuery_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_CellRangeQuery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GeocodeByCoordinates Choreo.
 */
@implementation TMBGoogle_Geocoding_GeocodeByCoordinates_Inputs

	/*!
	 * Set the value of the Bounds input for this Choreo.
	*(optional, string) The bounding box of the viewport within which to bias geocode results more prominently.
	 */
	-(void)setBounds:(NSString*)Bounds {
		[super setInput:@"Bounds" toValue:Bounds];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) The language in which to return results. Defaults to 'en' (English).
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude value for which you wish to obtain the closest, human-readable address.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude value for which you wish to obtain the closest, human-readable address.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) The region code, specified as a ccTLD ("top-level domain") two-character value. Defaults to 'us' (United States).
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the geocoding request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeocodeByCoordinates Choreo.
 */
@implementation TMBGoogle_Geocoding_GeocodeByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Converts latitude and longitude coordinates into a human-readable address.
 */
@implementation TMBGoogle_Geocoding_GeocodeByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Geocoding_GeocodeByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Geocoding/GeocodeByCoordinates"] autorelease];
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
		TMBGoogle_Geocoding_GeocodeByCoordinates_ResultSet *results = [[[TMBGoogle_Geocoding_GeocodeByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GeocodeByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Geocoding_GeocodeByCoordinates_Inputs*)newInputSet {
		return [[[TMBGoogle_Geocoding_GeocodeByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSpreadsheets Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpreadsheets_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSpreadsheets Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpreadsheets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of spreadsheets that exist in your Google account.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpreadsheets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveSpreadsheets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveSpreadsheets"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveSpreadsheets_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveSpreadsheets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveSpreadsheets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveSpreadsheets_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveSpreadsheets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PlaceCheckInRequests Choreo.
 */
@implementation TMBGoogle_Places_PlaceCheckInRequests_Inputs

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) Enter your Google API key.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the PlaceReference input for this Choreo.
	*(required, string) The unique place reference. This is returned in the PlaceSearch Choreo.
	 */
	-(void)setPlaceReference:(NSString*)PlaceReference {
		[super setInput:@"PlaceReference" toValue:PlaceReference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PlaceCheckInRequests Choreo.
 */
@implementation TMBGoogle_Places_PlaceCheckInRequests_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Specify whether a user has checked into a place.
 */
@implementation TMBGoogle_Places_PlaceCheckInRequests

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Places_PlaceCheckInRequests Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Places/PlaceCheckInRequests"] autorelease];
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
		TMBGoogle_Places_PlaceCheckInRequests_ResultSet *results = [[[TMBGoogle_Places_PlaceCheckInRequests_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PlaceCheckInRequests Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Places_PlaceCheckInRequests_Inputs*)newInputSet {
		return [[[TMBGoogle_Places_PlaceCheckInRequests_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_AddWorksheet_Inputs

	/*!
	 * Set the value of the ColumnCount input for this Choreo.
	*(required, integer) The number of columns that you want to specify for the new worksheet
	 */
	-(void)setColumnCount:(NSString*)ColumnCount {
		[super setInput:@"ColumnCount" toValue:ColumnCount];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RowCount input for this Choreo.
	*(required, integer) The number of rows that you want to specify for the new worksheet
	 */
	-(void)setRowCount:(NSString*)RowCount {
		[super setInput:@"RowCount" toValue:RowCount];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique key associated with the spreadsheet that you want to add a worksheet to
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the new document to create
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_AddWorksheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new worksheet within an existing spreadsheet.
 */
@implementation TMBGoogle_Spreadsheets_AddWorksheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_AddWorksheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/AddWorksheet"] autorelease];
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
		TMBGoogle_Spreadsheets_AddWorksheet_ResultSet *results = [[[TMBGoogle_Spreadsheets_AddWorksheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddWorksheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_AddWorksheet_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_AddWorksheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Update_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a permissions resource. The JSON string can contain keys for role and additionalRoles. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the PermissionID input for this Choreo.
	*(required, string) The ID for the permission.
	 */
	-(void)setPermissionID:(NSString*)PermissionID {
		[super setInput:@"PermissionID" toValue:PermissionID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Update_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates an existing permission.
 */
@implementation TMBGoogle_Drive_Permissions_Update

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Permissions_Update Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Permissions/Update"] autorelease];
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
		TMBGoogle_Drive_Permissions_Update_ResultSet *results = [[[TMBGoogle_Drive_Permissions_Update_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Update Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Permissions_Update_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Permissions_Update_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllEvents Choreo.
 */
@implementation TMBGoogle_Calendar_GetAllEvents_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The unique ID for the calendar with the events to retrieve.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllEvents Choreo.
 */
@implementation TMBGoogle_Calendar_GetAllEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieve data for all events in a specified calendar.
 */
@implementation TMBGoogle_Calendar_GetAllEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_GetAllEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/GetAllEvents"] autorelease];
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
		TMBGoogle_Calendar_GetAllEvents_ResultSet *results = [[[TMBGoogle_Calendar_GetAllEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_GetAllEvents_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_GetAllEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDrivingDirections Choreo.
 */
@implementation TMBGoogle_Directions_GetDrivingDirections_Inputs

	/*!
	 * Set the value of the Alternatives input for this Choreo.
	*(optional, string) If set to true, additional routes will be returned.
	 */
	-(void)setAlternatives:(NSString*)Alternatives {
		[super setInput:@"Alternatives" toValue:Alternatives];
	}

	/*!
	 * Set the value of the Avoid input for this Choreo.
	*(optional, string) Specify whether the calculated directions should avoid the following features: tolls, or highways.
	 */
	-(void)setAvoid:(NSString*)Avoid {
		[super setInput:@"Avoid" toValue:Avoid];
	}

	/*!
	 * Set the value of the Destination input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates from which directions will be generated (i.e."104 Franklin St, New York, NY" or "40.7160,-74.0037").
	 */
	-(void)setDestination:(NSString*)Destination {
		[super setInput:@"Destination" toValue:Destination];
	}

	/*!
	 * Set the value of the Origin input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates from which directions will be computed (i.e."104 Franklin St, New York, NY" or "40.7160,-74.0037").
	 */
	-(void)setOrigin:(NSString*)Origin {
		[super setInput:@"Origin" toValue:Origin];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) Enter the region code for the directions, specified as a ccTLD two-character value.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Specify the units to be used when displaying results.  Options include, metric, or imperial.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}

	/*!
	 * Set the value of the Waypoints input for this Choreo.
	*(optional, string) Specify route waypoints, either by address, or latitude/longitude coordinates.
	 */
	-(void)setWaypoints:(NSString*)Waypoints {
		[super setInput:@"Waypoints" toValue:Waypoints];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDrivingDirections Choreo.
 */
@implementation TMBGoogle_Directions_GetDrivingDirections_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 *  Generates directions between two locations, denoted by address, or latitude/longitude coordinates.
 */
@implementation TMBGoogle_Directions_GetDrivingDirections

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Directions_GetDrivingDirections Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Directions/GetDrivingDirections"] autorelease];
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
		TMBGoogle_Directions_GetDrivingDirections_ResultSet *results = [[[TMBGoogle_Directions_GetDrivingDirections_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDrivingDirections Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Directions_GetDrivingDirections_Inputs*)newInputSet {
		return [[[TMBGoogle_Directions_GetDrivingDirections_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_DeleteCalendar_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The ID for the calendar to delete.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_DeleteCalendar_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No content is returned for delete calendar operations.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a secondary calendar.
 */
@implementation TMBGoogle_Calendar_DeleteCalendar

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_DeleteCalendar Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/DeleteCalendar"] autorelease];
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
		TMBGoogle_Calendar_DeleteCalendar_ResultSet *results = [[[TMBGoogle_Calendar_DeleteCalendar_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCalendar Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_DeleteCalendar_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_DeleteCalendar_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetContactById Choreo.
 */
@implementation TMBGoogle_Contacts_GetContactById_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ContactId input for this Choreo.
	*(required, string) The id associated with the contact to return. This can either be the individual id of the contact, or the full 'edit' link returned in the entry nodes of the GetAllContacts output.
	 */
	-(void)setContactId:(NSString*)ContactId {
		[super setInput:@"ContactId" toValue:ContactId];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserEmail input for this Choreo.
	*(required, string) The email address of the user whose contacts you want to retrieve. Defaults to "default," or the user whose OAuth access token is passed.
	 */
	-(void)setUserEmail:(NSString*)UserEmail {
		[super setInput:@"UserEmail" toValue:UserEmail];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContactById Choreo.
 */
@implementation TMBGoogle_Contacts_GetContactById_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specific contact with a given id.
 */
@implementation TMBGoogle_Contacts_GetContactById

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_GetContactById Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/GetContactById"] autorelease];
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
		TMBGoogle_Contacts_GetContactById_ResultSet *results = [[[TMBGoogle_Contacts_GetContactById_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetContactById Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_GetContactById_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_GetContactById_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Files_Insert_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(conditional, json) A JSON representation of fields in a file resource. File metadata information (such as the title) can be inserted using this input. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(conditional, string) The Content-Type of the file that is being uploaded (i.e. image/jpg). Required when specifying the FileContent input.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the Convert input for this Choreo.
	*(optional, boolean) Whether to convert this file to the corresponding Google Docs format. (Default: false).
	 */
	-(void)setConvert:(NSString*)Convert {
		[super setInput:@"Convert" toValue:Convert];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileContent input for this Choreo.
	*(conditional, string) The Base64 encoded contents of the file to upload.
	 */
	-(void)setFileContent:(NSString*)FileContent {
		[super setInput:@"FileContent" toValue:FileContent];
	}

	/*!
	 * Set the value of the OCR input for this Choreo.
	*(optional, boolean) Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads. (Default: false)
	 */
	-(void)setOCR:(NSString*)OCR {
		[super setInput:@"OCR" toValue:OCR];
	}

	/*!
	 * Set the value of the OcrLanguage input for this Choreo.
	*(optional, string) If ocr is true, hints at the language to use. Valid values are ISO 639-1 codes.
	 */
	-(void)setOcrLanguage:(NSString*)OcrLanguage {
		[super setInput:@"OcrLanguage" toValue:OcrLanguage];
	}

	/*!
	 * Set the value of the Pinned input for this Choreo.
	*(optional, boolean) Whether to pin the head revision of the uploaded file. (Default: false).
	 */
	-(void)setPinned:(NSString*)Pinned {
		[super setInput:@"Pinned" toValue:Pinned];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SourceLanguage input for this Choreo.
	*(optional, string) The language of the original file to be translated.
	 */
	-(void)setSourceLanguage:(NSString*)SourceLanguage {
		[super setInput:@"SourceLanguage" toValue:SourceLanguage];
	}

	/*!
	 * Set the value of the TargetLanguage input for this Choreo.
	*(optional, string) Target language to translate the file to. If no sourceLanguage is provided, the API will attempt to detect the language.
	 */
	-(void)setTargetLanguage:(NSString*)TargetLanguage {
		[super setInput:@"TargetLanguage" toValue:TargetLanguage];
	}

	/*!
	 * Set the value of the TimedTextLanguage input for this Choreo.
	*(optional, string) The language of the timed text.
	 */
	-(void)setTimedTextLanguage:(NSString*)TimedTextLanguage {
		[super setInput:@"TimedTextLanguage" toValue:TimedTextLanguage];
	}

	/*!
	 * Set the value of the TimedTextTrackName input for this Choreo.
	*(optional, string) The timed text track name.
	 */
	-(void)setTimedTextTrackName:(NSString*)TimedTextTrackName {
		[super setInput:@"TimedTextTrackName" toValue:TimedTextTrackName];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to a vault file to upload. This can be used as an alternative to the FileContent input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Files_Insert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Inserts a new file.
 */
@implementation TMBGoogle_Drive_Files_Insert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Insert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Insert"] autorelease];
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
		TMBGoogle_Drive_Files_Insert_ResultSet *results = [[[TMBGoogle_Drive_Files_Insert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Insert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Insert_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Insert_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Children_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChildID input for this Choreo.
	*(required, string) The ID of the child.
	 */
	-(void)setChildID:(NSString*)ChildID {
		[super setInput:@"ChildID" toValue:ChildID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The ID of the folder.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Children_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a child for a folder.
 */
@implementation TMBGoogle_Drive_Children_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Children_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Children/Delete"] autorelease];
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
		TMBGoogle_Drive_Children_Delete_ResultSet *results = [[[TMBGoogle_Drive_Children_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Children_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Children_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBGoogle_Plus_People_Search_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Indicates the preferred language to search with. Defaults to "en-US".
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of people to include in the response. Used for paging through results. Valid values are: 1 to 20. Default is 10.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "NextPageToken" returned in the Choreo output. Used to page through large result sets.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A query string for full text search of public text in all profiles.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBGoogle_Plus_People_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches all public profiles.
 */
@implementation TMBGoogle_Plus_People_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_People_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/People/Search"] autorelease];
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
		TMBGoogle_Plus_People_Search_ResultSet *results = [[[TMBGoogle_Plus_People_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_People_Search_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_People_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFile Choreo.
 */
@implementation TMBGoogle_Documents_UpdateFile_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The base64-encoded contents of the file you want to update.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(required, string) Enter the content type for the file. Currently, the supported content types are: application/pdf, application/rtf, application/msword, application/vnd.ms-excel, text/plain, and text/csv.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password for your Google account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the document that you want to update.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The email address for your Google account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the Vault file to upload. This can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFile Choreo.
 */
@implementation TMBGoogle_Documents_UpdateFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the content of an existing Google document.
 */
@implementation TMBGoogle_Documents_UpdateFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_UpdateFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/UpdateFile"] autorelease];
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
		TMBGoogle_Documents_UpdateFile_ResultSet *results = [[[TMBGoogle_Documents_UpdateFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_UpdateFile_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_UpdateFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_CreateCalendar_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description of the calendar.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Location input for this Choreo.
	*(optional, string) Geographic location of the calendar such as "Los Angeles" or "New York".
	 */
	-(void)setLocation:(NSString*)Location {
		[super setInput:@"Location" toValue:Location];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) The timezone for the new calendar, such as "America/Los_Angeles". Defaults to UTC if left blank.
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The name for the new calendar.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_CreateCalendar_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Create a new secondary calendar.
 */
@implementation TMBGoogle_Calendar_CreateCalendar

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_CreateCalendar Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/CreateCalendar"] autorelease];
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
		TMBGoogle_Calendar_CreateCalendar_ResultSet *results = [[[TMBGoogle_Calendar_CreateCalendar_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCalendar Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_CreateCalendar_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_CreateCalendar_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DrivingDistanceMatrix Choreo.
 */
@implementation TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_Inputs

	/*!
	 * Set the value of the Alternatives input for this Choreo.
	*(optional, string) If set to true, additional routes will be returned.
	 */
	-(void)setAlternatives:(NSString*)Alternatives {
		[super setInput:@"Alternatives" toValue:Alternatives];
	}

	/*!
	 * Set the value of the Avoid input for this Choreo.
	*(optional, string) Specify whether the calculated directions should avoid the following features: tolls, or highways.
	 */
	-(void)setAvoid:(NSString*)Avoid {
		[super setInput:@"Avoid" toValue:Avoid];
	}

	/*!
	 * Set the value of the Destinations input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates to which directions will be generated. Multiple destinations can be separated by pipes (|).  For example: Boston, MA|New Haven|40.7160,-74.0037.
	 */
	-(void)setDestinations:(NSString*)Destinations {
		[super setInput:@"Destinations" toValue:Destinations];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Set the language in which to return restults.  A list of supported languages is available here: https://spreadsheets.google.com/pub?key=p9pdwsai2hDMsLkXsoM05KQ&gid=1
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Origins input for this Choreo.
	*(required, string) Enter the address(es) or geo-coordinates from which distance and time will be computed. Multiple destinations can be separated by pipes (|).  For example: Boston, MA|New Haven|40.7160,-74.0037.
	 */
	-(void)setOrigins:(NSString*)Origins {
		[super setInput:@"Origins" toValue:Origins];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) Enter the region code for the directions, specified as a ccTLD two-character value.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Specify the units to be used when displaying results.  Options include, metric, or imperial.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DrivingDistanceMatrix Choreo.
 */
@implementation TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain travel distances and times for a matrix of addresses and/or latitude/longitude coordinates.
 */
@implementation TMBGoogle_DistanceMatrix_DrivingDistanceMatrix

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_DistanceMatrix_DrivingDistanceMatrix Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/DistanceMatrix/DrivingDistanceMatrix"] autorelease];
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
		TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_ResultSet *results = [[[TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DrivingDistanceMatrix Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_Inputs*)newInputSet {
		return [[[TMBGoogle_DistanceMatrix_DrivingDistanceMatrix_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveComments Choreo.
 */
@implementation TMBGoogle_Picasa_RetrieveComments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The max number of comments to return. Defaults to 10.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveComments Choreo.
 */
@implementation TMBGoogle_Picasa_RetrieveComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a feed of the photo comments for a specified user.
 */
@implementation TMBGoogle_Picasa_RetrieveComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_RetrieveComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/RetrieveComments"] autorelease];
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
		TMBGoogle_Picasa_RetrieveComments_ResultSet *results = [[[TMBGoogle_Picasa_RetrieveComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_RetrieveComments_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_RetrieveComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Parents_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(required, string) The ID of the parent.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Parents_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a parent from a file.
 */
@implementation TMBGoogle_Drive_Parents_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Parents_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Parents/Delete"] autorelease];
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
		TMBGoogle_Drive_Parents_Delete_ResultSet *results = [[[TMBGoogle_Drive_Parents_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Parents_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Parents_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_UpdateWorksheet_Inputs

	/*!
	 * Set the value of the ColumnCount input for this Choreo.
	*(required, integer) The number of columns that you want to specify for the worksheet
	 */
	-(void)setColumnCount:(NSString*)ColumnCount {
		[super setInput:@"ColumnCount" toValue:ColumnCount];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RowCount input for this Choreo.
	*(required, integer) The number of rows that you want to specify for the worksheet
	 */
	-(void)setRowCount:(NSString*)RowCount {
		[super setInput:@"RowCount" toValue:RowCount];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique key associated with the spreadsheet that contains a worksheet you want to update
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The new title of the worksheet
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id associated with the worksheet that you want to update
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_UpdateWorksheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates existing worksheet metadata such as: Title, Row Count, and Column Count.
 */
@implementation TMBGoogle_Spreadsheets_UpdateWorksheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_UpdateWorksheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/UpdateWorksheet"] autorelease];
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
		TMBGoogle_Spreadsheets_UpdateWorksheet_ResultSet *results = [[[TMBGoogle_Spreadsheets_UpdateWorksheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateWorksheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_UpdateWorksheet_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_UpdateWorksheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set, this will succeed when retrieving a deleted reply. (Default: false)
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ReplyID input for this Choreo.
	*(required, string) The ID of the reply.
	 */
	-(void)setReplyID:(NSString*)ReplyID {
		[super setInput:@"ReplyID" toValue:ReplyID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a reply
 */
@implementation TMBGoogle_Drive_Replies_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Replies_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Replies/Get"] autorelease];
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
		TMBGoogle_Drive_Replies_Get_ResultSet *results = [[[TMBGoogle_Drive_Replies_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Replies_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Replies_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllDocuments Choreo.
 */
@implementation TMBGoogle_Documents_GetAllDocuments_Inputs

	/*!
	 * Set the value of the Deleted input for this Choreo.
	*(optional, boolean) Returns deleted documents when set to "true" (the default). Skips deleted documents when set to "false".
	 */
	-(void)setDeleted:(NSString*)Deleted {
		[super setInput:@"Deleted" toValue:Deleted];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllDocuments Choreo.
 */
@implementation TMBGoogle_Documents_GetAllDocuments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all documents, files, and collections in a Google account.
 */
@implementation TMBGoogle_Documents_GetAllDocuments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_GetAllDocuments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/GetAllDocuments"] autorelease];
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
		TMBGoogle_Documents_GetAllDocuments_ResultSet *results = [[[TMBGoogle_Documents_GetAllDocuments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllDocuments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_GetAllDocuments_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_GetAllDocuments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Children_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChildID input for this Choreo.
	*(required, string) The ID of the child.
	 */
	-(void)setChildID:(NSString*)ChildID {
		[super setInput:@"ChildID" toValue:ChildID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The ID of the folder.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Children_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a specific child reference.
 */
@implementation TMBGoogle_Drive_Children_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Children_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Children/Get"] autorelease];
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
		TMBGoogle_Drive_Children_Get_ResultSet *results = [[[TMBGoogle_Drive_Children_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Children_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Children_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Replies_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set, this will succeed when retrieving a deleted reply. (Default: false)
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of replies to include in the response, used for paging. Acceptable values are 0 to 100, inclusive. (Default: 20).
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Replies_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists all of the replies to a comment.
 */
@implementation TMBGoogle_Drive_Replies_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Replies_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Replies/List"] autorelease];
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
		TMBGoogle_Drive_Replies_List_ResultSet *results = [[[TMBGoogle_Drive_Replies_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Replies_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Replies_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ClientLoginAuthentication Choreo.
 */
@implementation TMBGoogle_Spreadsheets_ClientLoginAuthentication_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Service input for this Choreo.
	*(required, string) The service that you are requesting an authorization token for. Defaults to 'wise' for Spreadsheets API.
	 */
	-(void)setService:(NSString*)Service {
		[super setInput:@"Service" toValue:Service];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClientLoginAuthentication Choreo.
 */
@implementation TMBGoogle_Spreadsheets_ClientLoginAuthentication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationKey" output from an execution of this Choreo.
	 * @return - NSString* (string) The auth token parsed from the Google login response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationKey {
		return [super getOutputByName:@"AuthorizationKey"];
	}
	
@end

/*!
 * Request an authorization token for Google Documents.
 */
@implementation TMBGoogle_Spreadsheets_ClientLoginAuthentication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_ClientLoginAuthentication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/ClientLoginAuthentication"] autorelease];
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
		TMBGoogle_Spreadsheets_ClientLoginAuthentication_ResultSet *results = [[[TMBGoogle_Spreadsheets_ClientLoginAuthentication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ClientLoginAuthentication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_ClientLoginAuthentication_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_ClientLoginAuthentication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCurrentLocationInfo Choreo.
 */
@implementation TMBGoogle_Latitude_GetCurrentLocationInfo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Granularity input for this Choreo.
	*(optional, string) Specify the level of detailed returned.  Enter: best, or city.  Default is city.
	 */
	-(void)setGranularity:(NSString*)Granularity {
		[super setInput:@"Granularity" toValue:Granularity];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCurrentLocationInfo Choreo.
 */
@implementation TMBGoogle_Latitude_GetCurrentLocationInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the authenticated user's current location.
 */
@implementation TMBGoogle_Latitude_GetCurrentLocationInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_GetCurrentLocationInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/GetCurrentLocationInfo"] autorelease];
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
		TMBGoogle_Latitude_GetCurrentLocationInfo_ResultSet *results = [[[TMBGoogle_Latitude_GetCurrentLocationInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCurrentLocationInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_GetCurrentLocationInfo_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_GetCurrentLocationInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlace Choreo.
 */
@implementation TMBGoogle_Places_DeletePlace_Inputs

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) Enter your Google API key.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the PlaceReference input for this Choreo.
	*(required, string) The unique place reference. This is returned in the PlaceSearch Choreo.
	 */
	-(void)setPlaceReference:(NSString*)PlaceReference {
		[super setInput:@"PlaceReference" toValue:PlaceReference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlace Choreo.
 */
@implementation TMBGoogle_Places_DeletePlace_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a new Place from Google Places.
 */
@implementation TMBGoogle_Places_DeletePlace

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Places_DeletePlace Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Places/DeletePlace"] autorelease];
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
		TMBGoogle_Places_DeletePlace_ResultSet *results = [[[TMBGoogle_Places_DeletePlace_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePlace Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Places_DeletePlace_Inputs*)newInputSet {
		return [[[TMBGoogle_Places_DeletePlace_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchPhotosByTag Choreo.
 */
@implementation TMBGoogle_Picasa_SearchPhotosByTag_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(required, string) A photo tag to search by. Multiple tags can be separated by commas.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchPhotosByTag Choreo.
 */
@implementation TMBGoogle_Picasa_SearchPhotosByTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches photos using tags that you specify.
 */
@implementation TMBGoogle_Picasa_SearchPhotosByTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_SearchPhotosByTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/SearchPhotosByTag"] autorelease];
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
		TMBGoogle_Picasa_SearchPhotosByTag_ResultSet *results = [[[TMBGoogle_Picasa_SearchPhotosByTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchPhotosByTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_SearchPhotosByTag_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_SearchPhotosByTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set, this will succeed when retrieving a deleted comment, and will include any deleted replies. (Default: false)
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a comment by ID.
 */
@implementation TMBGoogle_Drive_Comments_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Comments_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Comments/Get"] autorelease];
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
		TMBGoogle_Drive_Comments_Get_ResultSet *results = [[[TMBGoogle_Drive_Comments_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Comments_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Comments_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveCellFeed Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveCellFeed_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the cells you want to retrieve
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet associated with the cells you want to retrieve
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveCellFeed Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveCellFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of cell names and values in a specified Google worksheet.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveCellFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveCellFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveCellFeed"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveCellFeed_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveCellFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveCellFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveCellFeed_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveCellFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveListFeed Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveListFeed_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the feed you want to retrieve
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet associated with the feed you want to retrieve
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveListFeed Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveListFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list-based feed containing data in your Google spreadsheet.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveListFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveListFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveListFeed"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveListFeed_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveListFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveListFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveListFeed_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveListFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Update_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a reply resource. The JSON string must contain a key for content. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ReplyID input for this Choreo.
	*(required, string) The ID of the reply.
	 */
	-(void)setReplyID:(NSString*)ReplyID {
		[super setInput:@"ReplyID" toValue:ReplyID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Update_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates an existing reply.
 */
@implementation TMBGoogle_Drive_Replies_Update

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Replies_Update Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Replies/Update"] autorelease];
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
		TMBGoogle_Drive_Replies_Update_ResultSet *results = [[[TMBGoogle_Drive_Replies_Update_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Update Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Replies_Update_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Replies_Update_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAlbum Choreo.
 */
@implementation TMBGoogle_Picasa_DeleteAlbum_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumID input for this Choreo.
	*(required, integer) The album id. Note that this can be retrieved by running the ListAlbums Choreo.
	 */
	-(void)setAlbumID:(NSString*)AlbumID {
		[super setInput:@"AlbumID" toValue:AlbumID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAlbum Choreo.
 */
@implementation TMBGoogle_Picasa_DeleteAlbum_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an album in Google Picasa with a specified album Id.
 */
@implementation TMBGoogle_Picasa_DeleteAlbum

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_DeleteAlbum Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/DeleteAlbum"] autorelease];
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
		TMBGoogle_Picasa_DeleteAlbum_ResultSet *results = [[[TMBGoogle_Picasa_DeleteAlbum_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteAlbum Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_DeleteAlbum_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_DeleteAlbum_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DownloadBase64EncodedSpreadsheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format you want to export the spreadsheet to, such as "txt" or "pdf". The default download format is "txt".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(conditional, string) Enter the source links for the document to be retrieved. Required if Title is not specified.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(conditional, string) The title of the document to download. Required if the source Link is not specifed.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadBase64EncodedSpreadsheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FileContents" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded file content of the downloaded file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFileContents {
		return [super getOutputByName:@"FileContents"];
	}
	
@end

/*!
 * Downloads a document with the title you specify, and returns the content as Base64 encoded data.
 */
@implementation TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/DownloadBase64EncodedSpreadsheet"] autorelease];
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
		TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_ResultSet *results = [[[TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DownloadBase64EncodedSpreadsheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_DownloadBase64EncodedSpreadsheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Parents_Insert_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(required, string) The ID of the parent.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Parents_Insert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Adds a parent folder for a file.
 */
@implementation TMBGoogle_Drive_Parents_Insert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Parents_Insert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Parents/Insert"] autorelease];
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
		TMBGoogle_Drive_Parents_Insert_ResultSet *results = [[[TMBGoogle_Drive_Parents_Insert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Insert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Parents_Insert_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Parents_Insert_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PlaceSearch Choreo.
 */
@implementation TMBGoogle_Places_PlaceSearch_Inputs

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) Enter your Google API key.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Enter a keyword (term, address, type, customer review, etc.) to be matched against all results retrieved for this Place.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Set the language in which to return restults.  A list of supported languages is available here: https://spreadsheets.google.com/pub?key=p9pdwsai2hDMsLkXsoM05KQ&gid=1
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, string) Specify a latitude point around which Places results will be retrieved.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, string) Specify a longitude point around which Places results will be retrieved.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) Enter a name to be matched when results are retrieved for this specified Place.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) Specify the radius in meters, for which Places results will be returned. Maximum radius is limited to 50,000 meters. If rankby=distance, then radius must not be specified.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the RankBy input for this Choreo.
	*(optional, string) Specify how results are listed. Values include: prominence (default); distance - sorts results by distance from specified location. Radius must not be used, and Keyword, Name, or Types are required).
	 */
	-(void)setRankBy:(NSString*)RankBy {
		[super setInput:@"RankBy" toValue:RankBy];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Types input for this Choreo.
	*(optional, string) Filter results by types, such as: bar, dentist.  Multiple types must be separated by the pipe ("|") symbol: bar|dentist||airport.
	 */
	-(void)setTypes:(NSString*)Types {
		[super setInput:@"Types" toValue:Types];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PlaceSearch Choreo.
 */
@implementation TMBGoogle_Places_PlaceSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for places based on latitude/longitude coordinates, keywords, and distance.
 */
@implementation TMBGoogle_Places_PlaceSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Places_PlaceSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Places/PlaceSearch"] autorelease];
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
		TMBGoogle_Places_PlaceSearch_ResultSet *results = [[[TMBGoogle_Places_PlaceSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PlaceSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Places_PlaceSearch_Inputs*)newInputSet {
		return [[[TMBGoogle_Places_PlaceSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteContact Choreo.
 */
@implementation TMBGoogle_Contacts_DeleteContact_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The OAuth client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The OAuth client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ContactID input for this Choreo.
	*(required, string) The unique ID string for the contact you want to delete.
	 */
	-(void)setContactID:(NSString*)ContactID {
		[super setInput:@"ContactID" toValue:ContactID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteContact Choreo.
 */
@implementation TMBGoogle_Contacts_DeleteContact_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. No content is returned for a successful delete request.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified contact.
 */
@implementation TMBGoogle_Contacts_DeleteContact

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_DeleteContact Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/DeleteContact"] autorelease];
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
		TMBGoogle_Contacts_DeleteContact_ResultSet *results = [[[TMBGoogle_Contacts_DeleteContact_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteContact Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_DeleteContact_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_DeleteContact_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendEmail Choreo.
 */
@implementation TMBGoogle_Gmail_SendEmail_Inputs

	/*!
	 * Set the value of the AttachmentName input for this Choreo.
	*(optional, string) The name of the file to attach to the email.
	 */
	-(void)setAttachmentName:(NSString*)AttachmentName {
		[super setInput:@"AttachmentName" toValue:AttachmentName];
	}

	/*!
	 * Set the value of the Attachment input for this Choreo.
	*(optional, string) The Base64 encoded contents of the file to attach to the email.
	 */
	-(void)setAttachment:(NSString*)Attachment {
		[super setInput:@"Attachment" toValue:Attachment];
	}

	/*!
	 * Set the value of the BCC input for this Choreo.
	*(optional, string) An email address to BCC on the email you're sending. Can be a comma separated list of email addresses.
	 */
	-(void)setBCC:(NSString*)BCC {
		[super setInput:@"BCC" toValue:BCC];
	}

	/*!
	 * Set the value of the CC input for this Choreo.
	*(optional, string) An email address to CC on the email you're sending. Can be a comma separated list of email addresses.
	 */
	-(void)setCC:(NSString*)CC {
		[super setInput:@"CC" toValue:CC];
	}

	/*!
	 * Set the value of the FromAddress input for this Choreo.
	*(conditional, string) The name and email address that the message is being sent from.
	 */
	-(void)setFromAddress:(NSString*)FromAddress {
		[super setInput:@"FromAddress" toValue:FromAddress];
	}

	/*!
	 * Set the value of the MessageBody input for this Choreo.
	*(required, string) The message body for the email.
	 */
	-(void)setMessageBody:(NSString*)MessageBody {
		[super setInput:@"MessageBody" toValue:MessageBody];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Gmail password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) The subject line of the email.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the ToAddress input for this Choreo.
	*(required, string) The email address that you want to send an email to. Can be a comma separated list of email addresses.
	 */
	-(void)setToAddress:(NSString*)ToAddress {
		[super setInput:@"ToAddress" toValue:ToAddress];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Gmail username used to authenticate your account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendEmail Choreo.
 */
@implementation TMBGoogle_Gmail_SendEmail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	
@end

/*!
 * Sends an email using a specified Gmail account.
 */
@implementation TMBGoogle_Gmail_SendEmail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Gmail_SendEmail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Gmail/SendEmail"] autorelease];
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
		TMBGoogle_Gmail_SendEmail_ResultSet *results = [[[TMBGoogle_Gmail_SendEmail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendEmail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Gmail_SendEmail_Inputs*)newInputSet {
		return [[[TMBGoogle_Gmail_SendEmail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteDocumentOrFile Choreo.
 */
@implementation TMBGoogle_Documents_DeleteDocumentOrFile_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResourceID input for this Choreo.
	*(required, string) The resource ID for the document or file to delete.
	 */
	-(void)setResourceID:(NSString*)ResourceID {
		[super setInput:@"ResourceID" toValue:ResourceID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteDocumentOrFile Choreo.
 */
@implementation TMBGoogle_Documents_DeleteDocumentOrFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* There is no XML response for delete requests.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Permanently deletes the document or file you specify.
 */
@implementation TMBGoogle_Documents_DeleteDocumentOrFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_DeleteDocumentOrFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/DeleteDocumentOrFile"] autorelease];
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
		TMBGoogle_Documents_DeleteDocumentOrFile_ResultSet *results = [[[TMBGoogle_Documents_DeleteDocumentOrFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteDocumentOrFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_DeleteDocumentOrFile_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_DeleteDocumentOrFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PostPhoto Choreo.
 */
@implementation TMBGoogle_Picasa_PostPhoto_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The base64 encoded file contents of the photo you want to upload.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumID input for this Choreo.
	*(optional, integer) The id of the album that you want to upload the photo to. Defaults to 'default' which means the photo will be uploaded to the dropbox album.
	 */
	-(void)setAlbumID:(NSString*)AlbumID {
		[super setInput:@"AlbumID" toValue:AlbumID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ImageName input for this Choreo.
	*(required, string) The name of the image you want to upload.
	 */
	-(void)setImageName:(NSString*)ImageName {
		[super setInput:@"ImageName" toValue:ImageName];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to "default" which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(vault file) The path to the vault file you want to upload. Required unless using the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostPhoto Choreo.
 */
@implementation TMBGoogle_Picasa_PostPhoto_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads a photo to Google Picasa.
 */
@implementation TMBGoogle_Picasa_PostPhoto

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_PostPhoto Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/PostPhoto"] autorelease];
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
		TMBGoogle_Picasa_PostPhoto_ResultSet *results = [[[TMBGoogle_Picasa_PostPhoto_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PostPhoto Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_PostPhoto_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_PostPhoto_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Changes_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) Whether to include deleted items. (Default: true).
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the IncludeSubscribed input for this Choreo.
	*(optional, boolean) Whether to include shared files and public files the user opened. If false, the list includes owned files plus any shared or public files the user explictly added to a folder in Drive. (Default: true)
	 */
	-(void)setIncludeSubscribed:(NSString*)IncludeSubscribed {
		[super setInput:@"IncludeSubscribed" toValue:IncludeSubscribed];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, boolean) Maximum number of changes to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) Page token for changes.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the StartChangeID input for this Choreo.
	*(optional, multiline) Change ID to start listing changes from.
	 */
	-(void)setStartChangeID:(NSString*)StartChangeID {
		[super setInput:@"StartChangeID" toValue:StartChangeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Changes_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists the changes for a user.
 */
@implementation TMBGoogle_Drive_Changes_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Changes_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Changes/List"] autorelease];
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
		TMBGoogle_Drive_Changes_List_ResultSet *results = [[[TMBGoogle_Drive_Changes_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Changes_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Changes_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Trash Choreo.
 */
@implementation TMBGoogle_Drive_Files_Trash_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file to trash.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Trash Choreo.
 */
@implementation TMBGoogle_Drive_Files_Trash_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Moves a file to the trash.
 */
@implementation TMBGoogle_Drive_Files_Trash

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Trash Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Trash"] autorelease];
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
		TMBGoogle_Drive_Files_Trash_ResultSet *results = [[[TMBGoogle_Drive_Files_Trash_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Trash Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Trash_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Trash_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CancelOrder Choreo.
 */
@implementation TMBGoogle_Checkout_CancelOrder_Inputs

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(required, string) The comment for the order cancellation
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to checkout.google.com when running in production. Defaults to sandbox.google.com for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MerchantId input for this Choreo.
	*(required, integer) The Merchant Id provided by Google
	 */
	-(void)setMerchantId:(NSString*)MerchantId {
		[super setInput:@"MerchantId" toValue:MerchantId];
	}

	/*!
	 * Set the value of the MerchantKey input for this Choreo.
	*(required, string) The Merchant Key provided by Google
	 */
	-(void)setMerchantKey:(NSString*)MerchantKey {
		[super setInput:@"MerchantKey" toValue:MerchantKey];
	}

	/*!
	 * Set the value of the OrderNumber input for this Choreo.
	*(required, integer) The unique identifier for the order (There is an order number column in your Google Checkout Inbox).
	 */
	-(void)setOrderNumber:(NSString*)OrderNumber {
		[super setInput:@"OrderNumber" toValue:OrderNumber];
	}

	/*!
	 * Set the value of the Reason input for this Choreo.
	*(required, string) The reason for the cancellation
	 */
	-(void)setReason:(NSString*)Reason {
		[super setInput:@"Reason" toValue:Reason];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CancelOrder Choreo.
 */
@implementation TMBGoogle_Checkout_CancelOrder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Cancels an order that's been submitted to a Google Checkout merchant account.
 */
@implementation TMBGoogle_Checkout_CancelOrder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Checkout_CancelOrder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Checkout/CancelOrder"] autorelease];
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
		TMBGoogle_Checkout_CancelOrder_ResultSet *results = [[[TMBGoogle_Checkout_CancelOrder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CancelOrder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Checkout_CancelOrder_Inputs*)newInputSet {
		return [[[TMBGoogle_Checkout_CancelOrder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteListRow Choreo.
 */
@implementation TMBGoogle_Spreadsheets_DeleteListRow_Inputs

	/*!
	 * Set the value of the EditLink input for this Choreo.
	*(conditional, string) The entry's edit link URL. Can be retrieved by running RetrieveListFeed and parsing the 'edit' link returned. When the edit link is provided, SpreadsheetKey, WorksheetId, and RowId are not needed.
	 */
	-(void)setEditLink:(NSString*)EditLink {
		[super setInput:@"EditLink" toValue:EditLink];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RowId input for this Choreo.
	*(conditional, string) The unique id of the row you want to delete. Required unless providing the EditLink.
	 */
	-(void)setRowId:(NSString*)RowId {
		[super setInput:@"RowId" toValue:RowId];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(conditional, string) The unique key of the spreadsheet associated with the row you want to delete. Required unless providing the EditLink.
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(conditional, string) The unique id of the worksheet associated with the row you want to delete. Required unless providing the EditLink.
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteListRow Choreo.
 */
@implementation TMBGoogle_Spreadsheets_DeleteListRow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified worksheet row from a Google spreadsheet.
 */
@implementation TMBGoogle_Spreadsheets_DeleteListRow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_DeleteListRow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/DeleteListRow"] autorelease];
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
		TMBGoogle_Spreadsheets_DeleteListRow_ResultSet *results = [[[TMBGoogle_Spreadsheets_DeleteListRow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteListRow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_DeleteListRow_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_DeleteListRow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddListRows Choreo.
 */
@implementation TMBGoogle_Spreadsheets_AddListRows_Inputs

	/*!
	 * Set the value of the RowsetXML input for this Choreo.
	*(required, xml) The rows of data that you want to add to a worksheet in XML format. Your XML needs to be in the rowset/row schema described in the Choreo documentation.
	 */
	-(void)setRowsetXML:(NSString*)RowsetXML {
		[super setInput:@"RowsetXML" toValue:RowsetXML];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique key of the spreadsheet that contains the worksheet you want to add rows to
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet that you want to add rows to
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddListRows Choreo.
 */
@implementation TMBGoogle_Spreadsheets_AddListRows_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds one or more rows to a worksheet in a Google spreadsheet using a simple XML file you provide.
 */
@implementation TMBGoogle_Spreadsheets_AddListRows

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_AddListRows Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/AddListRows"] autorelease];
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
		TMBGoogle_Spreadsheets_AddListRows_ResultSet *results = [[[TMBGoogle_Spreadsheets_AddListRows_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddListRows Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_AddListRows_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_AddListRows_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllContacts Choreo.
 */
@implementation TMBGoogle_Contacts_GetAllContacts_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserEmail input for this Choreo.
	*(optional, string) The email address of the user whose contacts you want to retrieve. Defaults to "default," or the user whose OAuth access token is passed.
	 */
	-(void)setUserEmail:(NSString*)UserEmail {
		[super setInput:@"UserEmail" toValue:UserEmail];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllContacts Choreo.
 */
@implementation TMBGoogle_Contacts_GetAllContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve data for all contacts in an account.
 */
@implementation TMBGoogle_Contacts_GetAllContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_GetAllContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/GetAllContacts"] autorelease];
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
		TMBGoogle_Contacts_GetAllContacts_ResultSet *results = [[[TMBGoogle_Contacts_GetAllContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_GetAllContacts_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_GetAllContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the PermissionID input for this Choreo.
	*(required, string) The ID for the permission.
	 */
	-(void)setPermissionID:(NSString*)PermissionID {
		[super setInput:@"PermissionID" toValue:PermissionID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a permission from a file.
 */
@implementation TMBGoogle_Drive_Permissions_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Permissions_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Permissions/Delete"] autorelease];
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
		TMBGoogle_Drive_Permissions_Delete_ResultSet *results = [[[TMBGoogle_Drive_Permissions_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Permissions_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Permissions_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateSharingPermission Choreo.
 */
@implementation TMBGoogle_Documents_CreateSharingPermission_Inputs

	/*!
	 * Set the value of the NewUserEmail input for this Choreo.
	*(required, string) The email address of the user to whom you want to grant permission.
	 */
	-(void)setNewUserEmail:(NSString*)NewUserEmail {
		[super setInput:@"NewUserEmail" toValue:NewUserEmail];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google passsword.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Role input for this Choreo.
	*(optional, string) The role that will be given to the new user permission (i.e., writer, reader, etc). Defaults to "writer".
	 */
	-(void)setRole:(NSString*)Role {
		[super setInput:@"Role" toValue:Role];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSharingPermission Choreo.
 */
@implementation TMBGoogle_Documents_CreateSharingPermission_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResourceID" output from an execution of this Choreo.
	 * @return - NSString* (string) The resource ID of the document to which you want to add a user.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResourceID {
		return [super getOutputByName:@"ResourceID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Grants a new user read/write access to an existing document.
 */
@implementation TMBGoogle_Documents_CreateSharingPermission

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_CreateSharingPermission Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/CreateSharingPermission"] autorelease];
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
		TMBGoogle_Documents_CreateSharingPermission_ResultSet *results = [[[TMBGoogle_Documents_CreateSharingPermission_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateSharingPermission Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_CreateSharingPermission_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_CreateSharingPermission_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists a file's permissions.
 */
@implementation TMBGoogle_Drive_Permissions_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Permissions_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Permissions/List"] autorelease];
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
		TMBGoogle_Drive_Permissions_List_ResultSet *results = [[[TMBGoogle_Drive_Permissions_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Permissions_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Permissions_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RenameDocumentOrFile Choreo.
 */
@implementation TMBGoogle_Documents_RenameDocumentOrFile_Inputs

	/*!
	 * Set the value of the NewTitle input for this Choreo.
	*(required, string) The new title for the document. It will appear exactly as you type it, so be sure to use the proper capitalization.
	 */
	-(void)setNewTitle:(NSString*)NewTitle {
		[super setInput:@"NewTitle" toValue:NewTitle];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the document to rename.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameDocumentOrFile Choreo.
 */
@implementation TMBGoogle_Documents_RenameDocumentOrFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "EditLink" output from an execution of this Choreo.
	 * @return - NSString* (string) The edit link URL for the document to rename, parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEditLink {
		return [super getOutputByName:@"EditLink"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Rename a document or file with the new title you specify.
 */
@implementation TMBGoogle_Documents_RenameDocumentOrFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_RenameDocumentOrFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/RenameDocumentOrFile"] autorelease];
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
		TMBGoogle_Documents_RenameDocumentOrFile_ResultSet *results = [[[TMBGoogle_Documents_RenameDocumentOrFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RenameDocumentOrFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_RenameDocumentOrFile_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_RenameDocumentOrFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateSpreadsheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_CreateSpreadsheet_Inputs

	/*!
	 * Set the value of the UploadFile input for this Choreo.
	*(conditional, multiline) The data to be written to the Google spreadsheet. Should be in CSV format. This is required unless using the VaultCSVFile alias (an advanced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setUploadFile:(NSString*)UploadFile {
		[super setInput:@"UploadFile" toValue:UploadFile];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The name of the new document.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultCSVFile input for this Choreo.
	*(optional, vault file) The path to a CSV file stored in the vault. This is required unless you are using the UploadFile input variable. 
	 */
	-(void)setVaultCSVFile:(NSString*)VaultCSVFile {
		[super setInput:@"VaultCSVFile" toValue:VaultCSVFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSpreadsheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_CreateSpreadsheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from Google upload
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a Google spreadsheet from a CSV file.
 */
@implementation TMBGoogle_Spreadsheets_CreateSpreadsheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_CreateSpreadsheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/CreateSpreadsheet"] autorelease];
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
		TMBGoogle_Spreadsheets_CreateSpreadsheet_ResultSet *results = [[[TMBGoogle_Spreadsheets_CreateSpreadsheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateSpreadsheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_CreateSpreadsheet_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_CreateSpreadsheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_GetCalendar_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The ID for the calendar to retrieve.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_GetCalendar_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieve data for a specific calendar in a Google account.
 */
@implementation TMBGoogle_Calendar_GetCalendar

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_GetCalendar Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/GetCalendar"] autorelease];
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
		TMBGoogle_Calendar_GetCalendar_ResultSet *results = [[[TMBGoogle_Calendar_GetCalendar_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCalendar Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_GetCalendar_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_GetCalendar_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Children_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The ID of the folder. To list all files in the root folder, specify the value "root".
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Maximum number of children to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) Page token for children.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) Query string for searching children.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Children_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists the children of a specified folder.
 */
@implementation TMBGoogle_Drive_Children_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Children_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Children/List"] autorelease];
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
		TMBGoogle_Drive_Children_List_ResultSet *results = [[[TMBGoogle_Drive_Children_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Children_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Children_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPathElevation Choreo.
 */
@implementation TMBGoogle_Elevation_GetPathElevation_Inputs

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) Specify the path for which elevation data will be obtained.  Input formats: an array of two or more lat/longitude coordinate pairs; A set of encoded coordinates using the Encoded Polyline Algorithm.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Samples input for this Choreo.
	*(required, integer) Enter the number of sample points.  See API docs for additional information.
	 */
	-(void)setSamples:(NSString*)Samples {
		[super setInput:@"Samples" toValue:Samples];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPathElevation Choreo.
 */
@implementation TMBGoogle_Elevation_GetPathElevation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain elevation information for a path specified by a set of  geo-coordinates.
 */
@implementation TMBGoogle_Elevation_GetPathElevation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Elevation_GetPathElevation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Elevation/GetPathElevation"] autorelease];
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
		TMBGoogle_Elevation_GetPathElevation_ResultSet *results = [[[TMBGoogle_Elevation_GetPathElevation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPathElevation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Elevation_GetPathElevation_Inputs*)newInputSet {
		return [[[TMBGoogle_Elevation_GetPathElevation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Insert_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a comment resource which shoud contain at least one key for content. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Insert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a new comment on the given file.
 */
@implementation TMBGoogle_Drive_Comments_Insert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Comments_Insert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Comments/Insert"] autorelease];
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
		TMBGoogle_Drive_Comments_Insert_ResultSet *results = [[[TMBGoogle_Drive_Comments_Insert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Insert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Comments_Insert_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Comments_Insert_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountInfo Choreo.
 */
@implementation TMBGoogle_Documents_GetAccountInfo_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountInfo Choreo.
 */
@implementation TMBGoogle_Documents_GetAccountInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a specified Google Documents account.
 */
@implementation TMBGoogle_Documents_GetAccountInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_GetAccountInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/GetAccountInfo"] autorelease];
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
		TMBGoogle_Documents_GetAccountInfo_ResultSet *results = [[[TMBGoogle_Documents_GetAccountInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccountInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_GetAccountInfo_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_GetAccountInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByTitle Choreo.
 */
@implementation TMBGoogle_Documents_SearchByTitle_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the document to search for. Enclose in quotation marks for an exact, non-case-sensitive match.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByTitle Choreo.
 */
@implementation TMBGoogle_Documents_SearchByTitle_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "EditMediaLink" output from an execution of this Choreo.
	 * @return - NSString* (string) The 'resumable-edit-media' link of the document. This link is used when editing the content of an existing Google doc.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEditMediaLink {
		return [super getOutputByName:@"EditMediaLink"];
	}

	/*!
	 * Retrieve the value of the "EditMetaDataLink" output from an execution of this Choreo.
	 * @return - NSString* (string) The 'edit' link of the document. This link is used when editing the metadata of an existing Google doc.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEditMetaDataLink {
		return [super getOutputByName:@"EditMetaDataLink"];
	}

	/*!
	 * Retrieve the value of the "ResourceID" output from an execution of this Choreo.
	 * @return - NSString* (string) The document resource ID returned from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResourceID {
		return [super getOutputByName:@"ResourceID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a file with the title you specify.
 */
@implementation TMBGoogle_Documents_SearchByTitle

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_SearchByTitle Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/SearchByTitle"] autorelease];
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
		TMBGoogle_Documents_SearchByTitle_ResultSet *results = [[[TMBGoogle_Documents_SearchByTitle_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByTitle Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_SearchByTitle_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_SearchByTitle_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEvent Choreo.
 */
@implementation TMBGoogle_Calendar_GetEvent_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The unique ID for the calendar with the events to retrieve.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the EventID input for this Choreo.
	*(required, string) The unique ID for the event to retrieve.
	 */
	-(void)setEventID:(NSString*)EventID {
		[super setInput:@"EventID" toValue:EventID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEvent Choreo.
 */
@implementation TMBGoogle_Calendar_GetEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieve data for all calendars in an account.
 */
@implementation TMBGoogle_Calendar_GetEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_GetEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/GetEvent"] autorelease];
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
		TMBGoogle_Calendar_GetEvent_ResultSet *results = [[[TMBGoogle_Calendar_GetEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_GetEvent_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_GetEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CopyDocument Choreo.
 */
@implementation TMBGoogle_Documents_CopyDocument_Inputs

	/*!
	 * Set the value of the NewTitle input for this Choreo.
	*(required, string) The title for the new, copied document.
	 */
	-(void)setNewTitle:(NSString*)NewTitle {
		[super setInput:@"NewTitle" toValue:NewTitle];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the document to copy. Enclose in quotation marks for an exact, non-case-sensitive match.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyDocument Choreo.
 */
@implementation TMBGoogle_Documents_CopyDocument_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Copies a document with the title you specify.
 */
@implementation TMBGoogle_Documents_CopyDocument

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_CopyDocument Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/CopyDocument"] autorelease];
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
		TMBGoogle_Documents_CopyDocument_ResultSet *results = [[[TMBGoogle_Documents_CopyDocument_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CopyDocument Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_CopyDocument_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_CopyDocument_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Parents_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Parents_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists a file's parents.
 */
@implementation TMBGoogle_Drive_Parents_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Parents_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Parents/List"] autorelease];
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
		TMBGoogle_Drive_Parents_List_ResultSet *results = [[[TMBGoogle_Drive_Parents_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Parents_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Parents_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWalkingDirections Choreo.
 */
@implementation TMBGoogle_Directions_GetWalkingDirections_Inputs

	/*!
	 * Set the value of the Alternatives input for this Choreo.
	*(optional, string) If set to true, additional routes will be returned.
	 */
	-(void)setAlternatives:(NSString*)Alternatives {
		[super setInput:@"Alternatives" toValue:Alternatives];
	}

	/*!
	 * Set the value of the Destination input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates from which directions will be generated (i.e."104 Franklin St, New York, NY" or "40.7160,-74.0037").
	 */
	-(void)setDestination:(NSString*)Destination {
		[super setInput:@"Destination" toValue:Destination];
	}

	/*!
	 * Set the value of the Origin input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates from which directions will be computed (i.e."104 Franklin St, New York, NY" or "40.7160,-74.0037").
	 */
	-(void)setOrigin:(NSString*)Origin {
		[super setInput:@"Origin" toValue:Origin];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) Enter the region code for the directions, specified as a ccTLD two-character value.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Specify the units to be used when displaying results.  Options include, metric, or imperial.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}

	/*!
	 * Set the value of the Waypoints input for this Choreo.
	*(optional, string) Specify route waypoints, either by address, or latitude/longitude coordinates.
	 */
	-(void)setWaypoints:(NSString*)Waypoints {
		[super setInput:@"Waypoints" toValue:Waypoints];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWalkingDirections Choreo.
 */
@implementation TMBGoogle_Directions_GetWalkingDirections_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 *  Generate walking directions between two locations, denoted by address or latitude/longitude coordinates.
 */
@implementation TMBGoogle_Directions_GetWalkingDirections

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Directions_GetWalkingDirections Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Directions/GetWalkingDirections"] autorelease];
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
		TMBGoogle_Directions_GetWalkingDirections_ResultSet *results = [[[TMBGoogle_Directions_GetWalkingDirections_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWalkingDirections Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Directions_GetWalkingDirections_Inputs*)newInputSet {
		return [[[TMBGoogle_Directions_GetWalkingDirections_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the BicyclingDistanceMatrix Choreo.
 */
@implementation TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_Inputs

	/*!
	 * Set the value of the Alternatives input for this Choreo.
	*(optional, string) If set to true, additional routes will be returned.
	 */
	-(void)setAlternatives:(NSString*)Alternatives {
		[super setInput:@"Alternatives" toValue:Alternatives];
	}

	/*!
	 * Set the value of the Destinations input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates to which directions will be generated. Multiple destinations can be separated by pipes (|).  For example: Boston, MA|New Haven|40.7160,-74.0037.
	 */
	-(void)setDestinations:(NSString*)Destinations {
		[super setInput:@"Destinations" toValue:Destinations];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Set the language in which to return restults.  A list of supported languages is available here: https://spreadsheets.google.com/pub?key=p9pdwsai2hDMsLkXsoM05KQ&gid=1
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Origins input for this Choreo.
	*(required, string) Enter the address(es) or geo-coordinates from which distance and time will be computed. Multiple destinations can be separated by pipes (|).  For example: Boston, MA|New Haven|40.7160,-74.0037.
	 */
	-(void)setOrigins:(NSString*)Origins {
		[super setInput:@"Origins" toValue:Origins];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) Enter the region code for the directions, specified as a ccTLD two-character value.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Specify the units to be used when displaying results.  Options include, metric, or imperial.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BicyclingDistanceMatrix Choreo.
 */
@implementation TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain bicycling distances and times for a matrix of addresses and/or latitude/longitude coordinates.
 */
@implementation TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/DistanceMatrix/BicyclingDistanceMatrix"] autorelease];
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
		TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_ResultSet *results = [[[TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the BicyclingDistanceMatrix Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_Inputs*)newInputSet {
		return [[[TMBGoogle_DistanceMatrix_BicyclingDistanceMatrix_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Parents_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(required, string) The ID of the parent.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Parents_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a specific parent reference.
 */
@implementation TMBGoogle_Drive_Parents_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Parents_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Parents/Get"] autorelease];
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
		TMBGoogle_Drive_Parents_Get_ResultSet *results = [[[TMBGoogle_Drive_Parents_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Parents_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Parents_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveWorksheet_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: csv (the default), xml, and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the worksheet you want to retrieve. Required unless SpreadsheetName and WorksheetName are supplied.
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the SpreadsheetName input for this Choreo.
	*(optional, string) The name of the spreadsheet to retrieve. This and WorksheetName can be used as an alternative to SpreadsheetKey and WorksheetId, but performing a lookup by name will slow down the request.
	 */
	-(void)setSpreadsheetName:(NSString*)SpreadsheetName {
		[super setInput:@"SpreadsheetName" toValue:SpreadsheetName];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet that you want to retrieve. Required unless SpreadsheetName and WorksheetName are supplied.
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}

	/*!
	 * Set the value of the WorksheetName input for this Choreo.
	*(optional, string) The name of the worksheet to retrieve. This and SpreadsheetName can be used as an alternative to SpreadsheetKey and WorksheetId, but performing a lookup by name will slow down the request.
	 */
	-(void)setWorksheetName:(NSString*)WorksheetName {
		[super setInput:@"WorksheetName" toValue:WorksheetName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveWorksheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specified worksheet from a Google spreadsheet in CSV, XML, or JSON format.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveWorksheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveWorksheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveWorksheet"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveWorksheet_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveWorksheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveWorksheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveWorksheet_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveWorksheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBicyclingDirections Choreo.
 */
@implementation TMBGoogle_Directions_GetBicyclingDirections_Inputs

	/*!
	 * Set the value of the Alternatives input for this Choreo.
	*(optional, string) If set to true, additional routes will be returned.
	 */
	-(void)setAlternatives:(NSString*)Alternatives {
		[super setInput:@"Alternatives" toValue:Alternatives];
	}

	/*!
	 * Set the value of the Destination input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates from which directions will be generated (i.e."104 Franklin St, New York, NY" or "40.7160,-74.0037").
	 */
	-(void)setDestination:(NSString*)Destination {
		[super setInput:@"Destination" toValue:Destination];
	}

	/*!
	 * Set the value of the Origin input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates from which directions will be computed (i.e."104 Franklin St, New York, NY" or "40.7160,-74.0037").
	 */
	-(void)setOrigin:(NSString*)Origin {
		[super setInput:@"Origin" toValue:Origin];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) Enter the region code for the directions, specified as a ccTLD two-character value.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Specify the units to be used when displaying results.  Options include, metric, or imperial.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}

	/*!
	 * Set the value of the Waypoints input for this Choreo.
	*(optional, string) Specify route waypoints, either by address, or latitude/longitude coordinates.
	 */
	-(void)setWaypoints:(NSString*)Waypoints {
		[super setInput:@"Waypoints" toValue:Waypoints];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBicyclingDirections Choreo.
 */
@implementation TMBGoogle_Directions_GetBicyclingDirections_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 *  Generate biking directions between two locations, denoted by address or latitude/longitude coordinates.
 */
@implementation TMBGoogle_Directions_GetBicyclingDirections

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Directions_GetBicyclingDirections Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Directions/GetBicyclingDirections"] autorelease];
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
		TMBGoogle_Directions_GetBicyclingDirections_ResultSet *results = [[[TMBGoogle_Directions_GetBicyclingDirections_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBicyclingDirections Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Directions_GetBicyclingDirections_Inputs*)newInputSet {
		return [[[TMBGoogle_Directions_GetBicyclingDirections_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAlbums Choreo.
 */
@implementation TMBGoogle_Picasa_ListAlbums_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAlbums Choreo.
 */
@implementation TMBGoogle_Picasa_ListAlbums_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List all albums created in a Google Picasa account.
 */
@implementation TMBGoogle_Picasa_ListAlbums

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_ListAlbums Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/ListAlbums"] autorelease];
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
		TMBGoogle_Picasa_ListAlbums_ResultSet *results = [[[TMBGoogle_Picasa_ListAlbums_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAlbums Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_ListAlbums_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_ListAlbums_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Children_Insert_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The ID of the folder.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The ID of the child.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Children_Insert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Inserts a file into a folder.
 */
@implementation TMBGoogle_Drive_Children_Insert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Children_Insert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Children/Insert"] autorelease];
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
		TMBGoogle_Drive_Children_Insert_ResultSet *results = [[[TMBGoogle_Drive_Children_Insert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Insert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Children_Insert_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Children_Insert_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@implementation TMBGoogle_Documents_UploadFile_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The base64-encoded contents of the file you want to upload. Required unless using the VaultFile alias input (an advnaced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(required, string) Enter the content type for the file. Currently, the supported content types are: application/pdf, application/rtf, application/msword, application/vnd.ms-excel, text/plain, and text/csv.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password for your Google account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The name for the file you're uploading.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The email address for your Google account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to the Vault file to upload. Required unless using the FileContents input variable instead.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@implementation TMBGoogle_Documents_UploadFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads MS Word, Excel, or plain text documents to a Google account.
 */
@implementation TMBGoogle_Documents_UploadFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_UploadFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/UploadFile"] autorelease];
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
		TMBGoogle_Documents_UploadFile_ResultSet *results = [[[TMBGoogle_Documents_UploadFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_UploadFile_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_UploadFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TrashDocumentOrFile Choreo.
 */
@implementation TMBGoogle_Documents_TrashDocumentOrFile_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the document or file to trash. Enclose in quotation marks for an exact, non-case-sensitive match.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrashDocumentOrFile Choreo.
 */
@implementation TMBGoogle_Documents_TrashDocumentOrFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResourceID" output from an execution of this Choreo.
	 * @return - NSString* (string) The resource ID for the document to trash as returned by Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResourceID {
		return [super getOutputByName:@"ResourceID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Move the document or file you specify to the Google Documents trash.
 */
@implementation TMBGoogle_Documents_TrashDocumentOrFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_TrashDocumentOrFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/TrashDocumentOrFile"] autorelease];
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
		TMBGoogle_Documents_TrashDocumentOrFile_ResultSet *results = [[[TMBGoogle_Documents_TrashDocumentOrFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TrashDocumentOrFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_TrashDocumentOrFile_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_TrashDocumentOrFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddCommentToPhoto Choreo.
 */
@implementation TMBGoogle_Picasa_AddCommentToPhoto_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumID input for this Choreo.
	*(required, integer) The id of the album which contains the photo you want to add a comment to.
	 */
	-(void)setAlbumID:(NSString*)AlbumID {
		[super setInput:@"AlbumID" toValue:AlbumID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(required, string) The comment that you want to add to a photo.
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo you want to add a comment to.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCommentToPhoto Choreo.
 */
@implementation TMBGoogle_Picasa_AddCommentToPhoto_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a comment to a specified photo in Google Picasa.
 */
@implementation TMBGoogle_Picasa_AddCommentToPhoto

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_AddCommentToPhoto Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/AddCommentToPhoto"] autorelease];
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
		TMBGoogle_Picasa_AddCommentToPhoto_ResultSet *results = [[[TMBGoogle_Picasa_AddCommentToPhoto_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddCommentToPhoto Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_AddCommentToPhoto_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_AddCommentToPhoto_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AppendRow Choreo.
 */
@implementation TMBGoogle_Spreadsheets_AppendRow_Inputs

	/*!
	 * Set the value of the RowData input for this Choreo.
	*(required, string) A comma separated list of items to be added as a new row to the spreadsheet.
	 */
	-(void)setRowData:(NSString*)RowData {
		[super setInput:@"RowData" toValue:RowData];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SheetName input for this Choreo.
	*(optional, string) The name of the sheet to write to. If not specified, rows are written to the first sheet.
	 */
	-(void)setSheetName:(NSString*)SheetName {
		[super setInput:@"SheetName" toValue:SheetName];
	}

	/*!
	 * Set the value of the SpreadsheetTitle input for this Choreo.
	*(required, string) The title of the spreadsheet that you want to write rows to.
	 */
	-(void)setSpreadsheetTitle:(NSString*)SpreadsheetTitle {
		[super setInput:@"SpreadsheetTitle" toValue:SpreadsheetTitle];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AppendRow Choreo.
 */
@implementation TMBGoogle_Spreadsheets_AppendRow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Returns the string "success" if no error occurs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Appends a simple comma-separated row of data to a given Google Spreadsheet.
 */
@implementation TMBGoogle_Spreadsheets_AppendRow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_AppendRow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/AppendRow"] autorelease];
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
		TMBGoogle_Spreadsheets_AppendRow_ResultSet *results = [[[TMBGoogle_Spreadsheets_AppendRow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AppendRow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_AppendRow_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_AppendRow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListByActivity Choreo.
 */
@implementation TMBGoogle_Plus_People_ListByActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) The ID of the activity to get the list of people for. ActiviyIDs can be retrieved by running the Google.Plus.Activities.Search Choreo.
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Collection input for this Choreo.
	*(required, string) Valid values are: "plusoners" (lists all people who have +1'd this activity) and "resharers" (lists all people who have reshared this activity).
	 */
	-(void)setCollection:(NSString*)Collection {
		[super setInput:@"Collection" toValue:Collection];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of people to include in the response. Used for paging through results. Valid values are: 1 to 20. Default is 10.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "NextPageToken" returned in the Choreo output. Used to page through large result sets.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListByActivity Choreo.
 */
@implementation TMBGoogle_Plus_People_ListByActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 *  Returns all of the people in the specified collection for a particular activity.
 */
@implementation TMBGoogle_Plus_People_ListByActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_People_ListByActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/People/ListByActivity"] autorelease];
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
		TMBGoogle_Plus_People_ListByActivity_ResultSet *results = [[[TMBGoogle_Plus_People_ListByActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListByActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_People_ListByActivity_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_People_ListByActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllSettings Choreo.
 */
@implementation TMBGoogle_Calendar_GetAllSettings_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) The settings fields to return. Returns etag, item IDs, and item values by default.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllSettings Choreo.
 */
@implementation TMBGoogle_Calendar_GetAllSettings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves all settings for a Google Calendar account.
 */
@implementation TMBGoogle_Calendar_GetAllSettings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_GetAllSettings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/GetAllSettings"] autorelease];
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
		TMBGoogle_Calendar_GetAllSettings_ResultSet *results = [[[TMBGoogle_Calendar_GetAllSettings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllSettings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_GetAllSettings_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_GetAllSettings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DownloadBase64EncodedDocument Choreo.
 */
@implementation TMBGoogle_Documents_DownloadBase64EncodedDocument_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) The format you want to export the document to, such as "doc", "txt", "pdf", etc. The default download format is HTML.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(conditional, string) Enter the source links for the document to be retrieved. Required unless specifying the Title.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(conditional, string) The title of the document to download. Required unless specifying the download Link.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadBase64EncodedDocument Choreo.
 */
@implementation TMBGoogle_Documents_DownloadBase64EncodedDocument_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FileContents" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded file content of the downloaded file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFileContents {
		return [super getOutputByName:@"FileContents"];
	}
	
@end

/*!
 * Downloads a document with the title you specify, and returns the content as Base64 encoded data.
 */
@implementation TMBGoogle_Documents_DownloadBase64EncodedDocument

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_DownloadBase64EncodedDocument Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/DownloadBase64EncodedDocument"] autorelease];
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
		TMBGoogle_Documents_DownloadBase64EncodedDocument_ResultSet *results = [[[TMBGoogle_Documents_DownloadBase64EncodedDocument_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DownloadBase64EncodedDocument Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_DownloadBase64EncodedDocument_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_DownloadBase64EncodedDocument_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEvent Choreo.
 */
@implementation TMBGoogle_Calendar_DeleteEvent_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The ID for the calendar to delete.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The name of the calendar that you want to retrieve information for. Note that if there are multiple calendars with the same name, only the first one will be returned.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the EventID input for this Choreo.
	*(required, string) The unique ID for the event to delete.
	 */
	-(void)setEventID:(NSString*)EventID {
		[super setInput:@"EventID" toValue:EventID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEvent Choreo.
 */
@implementation TMBGoogle_Calendar_DeleteEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No content is returned for delete calendar operations.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a specific event from a specified calendar.
 */
@implementation TMBGoogle_Calendar_DeleteEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_DeleteEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/DeleteEvent"] autorelease];
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
		TMBGoogle_Calendar_DeleteEvent_ResultSet *results = [[[TMBGoogle_Calendar_DeleteEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_DeleteEvent_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_DeleteEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ClientLoginAuthentication Choreo.
 */
@implementation TMBGoogle_Documents_ClientLoginAuthentication_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClientLoginAuthentication Choreo.
 */
@implementation TMBGoogle_Documents_ClientLoginAuthentication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationKey" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization token parsed from the Google login response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationKey {
		return [super getOutputByName:@"AuthorizationKey"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Stores the response from Google login.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Request an authorization token for Google Documents.
 */
@implementation TMBGoogle_Documents_ClientLoginAuthentication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_ClientLoginAuthentication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/ClientLoginAuthentication"] autorelease];
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
		TMBGoogle_Documents_ClientLoginAuthentication_ResultSet *results = [[[TMBGoogle_Documents_ClientLoginAuthentication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ClientLoginAuthentication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_ClientLoginAuthentication_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_ClientLoginAuthentication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the RevisionID input for this Choreo.
	*(required, string) The ID of the revision.
	 */
	-(void)setRevisionID:(NSString*)RevisionID {
		[super setInput:@"RevisionID" toValue:RevisionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a specific revision.
 */
@implementation TMBGoogle_Drive_Revisions_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Revisions_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Revisions/Get"] autorelease];
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
		TMBGoogle_Drive_Revisions_Get_ResultSet *results = [[[TMBGoogle_Drive_Revisions_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Revisions_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Revisions_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Untrash Choreo.
 */
@implementation TMBGoogle_Drive_Files_Untrash_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file to untrash.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Untrash Choreo.
 */
@implementation TMBGoogle_Drive_Files_Untrash_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Restores a file from the trash.
 */
@implementation TMBGoogle_Drive_Files_Untrash

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Untrash Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Untrash"] autorelease];
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
		TMBGoogle_Drive_Files_Untrash_ResultSet *results = [[[TMBGoogle_Drive_Files_Untrash_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Untrash Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Untrash_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Untrash_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCurrentLocation Choreo.
 */
@implementation TMBGoogle_Latitude_DeleteCurrentLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCurrentLocation Choreo.
 */
@implementation TMBGoogle_Latitude_DeleteCurrentLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a current location.
 */
@implementation TMBGoogle_Latitude_DeleteCurrentLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_DeleteCurrentLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/DeleteCurrentLocation"] autorelease];
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
		TMBGoogle_Latitude_DeleteCurrentLocation_ResultSet *results = [[[TMBGoogle_Latitude_DeleteCurrentLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCurrentLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_DeleteCurrentLocation_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_DeleteCurrentLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEmptyDocument Choreo.
 */
@implementation TMBGoogle_Documents_CreateEmptyDocument_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the new document to create.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEmptyDocument Choreo.
 */
@implementation TMBGoogle_Documents_CreateEmptyDocument_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "EditLink" output from an execution of this Choreo.
	 * @return - NSString* The edit link URL parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEditLink {
		return [super getOutputByName:@"EditLink"];
	}

	/*!
	 * Retrieve the value of the "ResourceID" output from an execution of this Choreo.
	 * @return - NSString* (string) The document resource ID returned from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResourceID {
		return [super getOutputByName:@"ResourceID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a new, empty document.
 */
@implementation TMBGoogle_Documents_CreateEmptyDocument

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_CreateEmptyDocument Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/CreateEmptyDocument"] autorelease];
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
		TMBGoogle_Documents_CreateEmptyDocument_ResultSet *results = [[[TMBGoogle_Documents_CreateEmptyDocument_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEmptyDocument Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_CreateEmptyDocument_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_CreateEmptyDocument_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetContactsWithQuery Choreo.
 */
@implementation TMBGoogle_Contacts_GetContactsWithQuery_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The OAuth client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The OAuth client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The contact criteria to search for, such as name or email address.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContactsWithQuery Choreo.
 */
@implementation TMBGoogle_Contacts_GetContactsWithQuery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "ContactID" output from an execution of this Choreo.
	 * @return - NSString* (string) The unique ID string for the retrieved contact. If more than one contact is retrieved by the request, only the first contact's ID is output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getContactID {
		return [super getOutputByName:@"ContactID"];
	}

	/*!
	 * Retrieve the value of the "Link" output from an execution of this Choreo.
	 * @return - NSString* (string) The unique edit link for the retrieved contact. If more than one contact is retrieved by the request, only the first contact's edit link is output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLink {
		return [super getOutputByName:@"Link"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the contact or contacts in that account that match a specified query term.
 */
@implementation TMBGoogle_Contacts_GetContactsWithQuery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_GetContactsWithQuery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/GetContactsWithQuery"] autorelease];
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
		TMBGoogle_Contacts_GetContactsWithQuery_ResultSet *results = [[[TMBGoogle_Contacts_GetContactsWithQuery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetContactsWithQuery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_GetContactsWithQuery_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_GetContactsWithQuery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrievePastLocation Choreo.
 */
@implementation TMBGoogle_Latitude_RetrievePastLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Granularity input for this Choreo.
	*(optional, string) Specify the level of detailed returned.  Enter: best, or city.  Default is: city.
	 */
	-(void)setGranularity:(NSString*)Granularity {
		[super setInput:@"Granularity" toValue:Granularity];
	}

	/*!
	 * Set the value of the LocationID input for this Choreo.
	*(required, date) The timestamp of a location as specified by its timestampMs property.
	 */
	-(void)setLocationID:(NSString*)LocationID {
		[super setInput:@"LocationID" toValue:LocationID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrievePastLocation Choreo.
 */
@implementation TMBGoogle_Latitude_RetrievePastLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specific location from a user's location history.
 */
@implementation TMBGoogle_Latitude_RetrievePastLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_RetrievePastLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/RetrievePastLocation"] autorelease];
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
		TMBGoogle_Latitude_RetrievePastLocation_ResultSet *results = [[[TMBGoogle_Latitude_RetrievePastLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrievePastLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_RetrievePastLocation_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_RetrievePastLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InsertCurrentLocation Choreo.
 */
@implementation TMBGoogle_Latitude_InsertCurrentLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Enter latitude coordinates. For example: 37.420352.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter longitude coordinates.  For example: -122.083389.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertCurrentLocation Choreo.
 */
@implementation TMBGoogle_Latitude_InsertCurrentLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates or creates an authenticated user's current location.
 */
@implementation TMBGoogle_Latitude_InsertCurrentLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_InsertCurrentLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/InsertCurrentLocation"] autorelease];
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
		TMBGoogle_Latitude_InsertCurrentLocation_ResultSet *results = [[[TMBGoogle_Latitude_InsertCurrentLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InsertCurrentLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_InsertCurrentLocation_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_InsertCurrentLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveTagsByUser Choreo.
 */
@implementation TMBGoogle_Picasa_RetrieveTagsByUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveTagsByUser Choreo.
 */
@implementation TMBGoogle_Picasa_RetrieveTagsByUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a feed of the photo tags for a specified user.
 */
@implementation TMBGoogle_Picasa_RetrieveTagsByUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_RetrieveTagsByUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/RetrieveTagsByUser"] autorelease];
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
		TMBGoogle_Picasa_RetrieveTagsByUser_ResultSet *results = [[[TMBGoogle_Picasa_RetrieveTagsByUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveTagsByUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_RetrieveTagsByUser_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_RetrieveTagsByUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the PermissionID input for this Choreo.
	*(required, string) The ID for the permission.
	 */
	-(void)setPermissionID:(NSString*)PermissionID {
		[super setInput:@"PermissionID" toValue:PermissionID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a permission by ID.
 */
@implementation TMBGoogle_Drive_Permissions_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Permissions_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Permissions/Get"] autorelease];
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
		TMBGoogle_Drive_Permissions_Get_ResultSet *results = [[[TMBGoogle_Drive_Permissions_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Permissions_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Permissions_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBGoogle_Plus_Activities_Search_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Indicates the preferred language to search with. Defaults to "en-US".
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of people to include in the response. Used for paging through results. Valid values are: 1 to 20. Default is 10.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Specifies how to order search results. Valid values are: "best" (Sort activities by relevance to the user) or "recent" (Sort activities by published date). Default is "recent".
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "NextPageToken" returned in the Choreo output. Used to page through large result sets.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Full-text search query string.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBGoogle_Plus_Activities_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches all public activities.
 */
@implementation TMBGoogle_Plus_Activities_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_Activities_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/Activities/Search"] autorelease];
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
		TMBGoogle_Plus_Activities_Search_ResultSet *results = [[[TMBGoogle_Plus_Activities_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_Activities_Search_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_Activities_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ClientLoginAuthentication Choreo.
 */
@implementation TMBGoogle_Analytics_ClientLoginAuthentication_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ClientLoginAuthentication Choreo.
 */
@implementation TMBGoogle_Analytics_ClientLoginAuthentication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationKey" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization key which is parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationKey {
		return [super getOutputByName:@"AuthorizationKey"];
	}
	
@end

/*!
 * Request an authorization token for Google Analytics.
 */
@implementation TMBGoogle_Analytics_ClientLoginAuthentication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Analytics_ClientLoginAuthentication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Analytics/ClientLoginAuthentication"] autorelease];
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
		TMBGoogle_Analytics_ClientLoginAuthentication_ResultSet *results = [[[TMBGoogle_Analytics_ClientLoginAuthentication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ClientLoginAuthentication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Analytics_ClientLoginAuthentication_Inputs*)newInputSet {
		return [[[TMBGoogle_Analytics_ClientLoginAuthentication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Files_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file to delete.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Files_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Permanently deletes a file by ID.
 */
@implementation TMBGoogle_Drive_Files_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Delete"] autorelease];
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
		TMBGoogle_Drive_Files_Delete_ResultSet *results = [[[TMBGoogle_Drive_Files_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Plus_Activities_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) The ID of the activity to get.
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Plus_Activities_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a given activity.
 */
@implementation TMBGoogle_Plus_Activities_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_Activities_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/Activities/Get"] autorelease];
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
		TMBGoogle_Plus_Activities_Get_ResultSet *results = [[[TMBGoogle_Plus_Activities_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_Activities_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_Activities_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InsertPastLocation Choreo.
 */
@implementation TMBGoogle_Latitude_InsertPastLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Latitide input for this Choreo.
	*(required, decimal) Enter latitude coordinates. For example: 37.420352.
	 */
	-(void)setLatitide:(NSString*)Latitide {
		[super setInput:@"Latitide" toValue:Latitide];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter longitude coordinates.  For example: -122.083389.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TimestampMs input for this Choreo.
	*(required, date) Enter a timestamp value (in epoch time).  Example: 1325715558.
	 */
	-(void)setTimestampMs:(NSString*)TimestampMs {
		[super setInput:@"TimestampMs" toValue:TimestampMs];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertPastLocation Choreo.
 */
@implementation TMBGoogle_Latitude_InsertPastLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates or creates an entry in an authenticated user's location history.
 */
@implementation TMBGoogle_Latitude_InsertPastLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_InsertPastLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/InsertPastLocation"] autorelease];
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
		TMBGoogle_Latitude_InsertPastLocation_ResultSet *results = [[[TMBGoogle_Latitude_InsertPastLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InsertPastLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_InsertPastLocation_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_InsertPastLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Plus_People_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The ID of the person to get the profile for. The value "me" is set as the default to indicate the authenticated user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Plus_People_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a person's profile.
 */
@implementation TMBGoogle_Plus_People_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_People_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/People/Get"] autorelease];
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
		TMBGoogle_Plus_People_Get_ResultSet *results = [[[TMBGoogle_Plus_People_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_People_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_People_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllGroups Choreo.
 */
@implementation TMBGoogle_Contacts_GetAllGroups_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The OAuth client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The OAuth client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllGroups Choreo.
 */
@implementation TMBGoogle_Contacts_GetAllGroups_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve data for all groups in an account.
 */
@implementation TMBGoogle_Contacts_GetAllGroups

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_GetAllGroups Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/GetAllGroups"] autorelease];
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
		TMBGoogle_Contacts_GetAllGroups_ResultSet *results = [[[TMBGoogle_Contacts_GetAllGroups_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllGroups Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_GetAllGroups_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_GetAllGroups_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSpecificRowsOrColumns Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_Inputs

	/*!
	 * Set the value of the MaxColumn input for this Choreo.
	*(optional, integer) The max column number to return.
	 */
	-(void)setMaxColumn:(NSString*)MaxColumn {
		[super setInput:@"MaxColumn" toValue:MaxColumn];
	}

	/*!
	 * Set the value of the MaxRow input for this Choreo.
	*(optional, integer) The max row number to return.
	 */
	-(void)setMaxRow:(NSString*)MaxRow {
		[super setInput:@"MaxRow" toValue:MaxRow];
	}

	/*!
	 * Set the value of the MinColumn input for this Choreo.
	*(optional, integer) The minimum column number to return.
	 */
	-(void)setMinColumn:(NSString*)MinColumn {
		[super setInput:@"MinColumn" toValue:MinColumn];
	}

	/*!
	 * Set the value of the MinRow input for this Choreo.
	*(optional, integer) The minimum row number to return.
	 */
	-(void)setMinRow:(NSString*)MinRow {
		[super setInput:@"MinRow" toValue:MinRow];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the feed you want to retrieve
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet associated with the feed you want to retrieve
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSpecificRowsOrColumns Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves specific rows or columns based on a specified range.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveSpecificRowsOrColumns"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveSpecificRowsOrColumns Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveSpecificRowsOrColumns_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ReplyID input for this Choreo.
	*(required, string) The ID of the reply.
	 */
	-(void)setReplyID:(NSString*)ReplyID {
		[super setInput:@"ReplyID" toValue:ReplyID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a reply.
 */
@implementation TMBGoogle_Drive_Replies_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Replies_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Replies/Delete"] autorelease];
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
		TMBGoogle_Drive_Replies_Delete_ResultSet *results = [[[TMBGoogle_Drive_Replies_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Replies_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Replies_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchEvents Choreo.
 */
@implementation TMBGoogle_Calendar_SearchEvents_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The unique ID for the calendar with the events to retrieve.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the LastModified input for this Choreo.
	*(optional, date) An event's last modification time (as a RFC 3339 timestamp) to filter by.
	 */
	-(void)setLastModified:(NSString*)LastModified {
		[super setInput:@"LastModified" toValue:LastModified];
	}

	/*!
	 * Set the value of the MaxAttendees input for this Choreo.
	*(optional, integer) The maximum number of attendees to include in the response. If there are more than the specified number of attendees, only the participant is returned.
	 */
	-(void)setMaxAttendees:(NSString*)MaxAttendees {
		[super setInput:@"MaxAttendees" toValue:MaxAttendees];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of events to return on one result page.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the MaxTime input for this Choreo.
	*(optional, date) The max start time to filter by (formatted like 2012-05-22T00:47:43.000Z).
	 */
	-(void)setMaxTime:(NSString*)MaxTime {
		[super setInput:@"MaxTime" toValue:MaxTime];
	}

	/*!
	 * Set the value of the MinTime input for this Choreo.
	*(optional, date) The minimum start time to filter by (formatted like 2012-05-22T00:47:43.000Z).
	 */
	-(void)setMinTime:(NSString*)MinTime {
		[super setInput:@"MinTime" toValue:MinTime];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) The order of the events returned in the result. Accepted values are: "startTime" (ordered by start date/time. Must set SingleEvents to 1 to use this) or "updated" (ordered by modification date/time).
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, integer) Indicates which result page to return. Used for paging through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A keyword search to find events.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowDeleted input for this Choreo.
	*(optional, boolean) Whether to include deleted events. Set to 1 (true) to include deleted events. Defaults to 0 (false).
	 */
	-(void)setShowDeleted:(NSString*)ShowDeleted {
		[super setInput:@"ShowDeleted" toValue:ShowDeleted];
	}

	/*!
	 * Set the value of the ShowHiddenInvitations input for this Choreo.
	*(optional, boolean) Whether to include hidden invitations in the result. Set to 1 (true) to enable. The default is 0 (false).
	 */
	-(void)setShowHiddenInvitations:(NSString*)ShowHiddenInvitations {
		[super setInput:@"ShowHiddenInvitations" toValue:ShowHiddenInvitations];
	}

	/*!
	 * Set the value of the SingleEvent input for this Choreo.
	*(optional, boolean) Whether to expand recurring events into instances and only return single one-off events and instances of recurring events. Defaults to 0 (false).
	 */
	-(void)setSingleEvent:(NSString*)SingleEvent {
		[super setInput:@"SingleEvent" toValue:SingleEvent];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) The time zone used in the response (i.e. America/Los_Angeles). The default is the time zone of the calendar.
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchEvents Choreo.
 */
@implementation TMBGoogle_Calendar_SearchEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Allows you to search for events using a variety of search parameters.
 */
@implementation TMBGoogle_Calendar_SearchEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_SearchEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/SearchEvents"] autorelease];
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
		TMBGoogle_Calendar_SearchEvents_ResultSet *results = [[[TMBGoogle_Calendar_SearchEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_SearchEvents_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_SearchEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchForShared Choreo.
 */
@implementation TMBGoogle_Documents_SearchForShared_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the User1 input for this Choreo.
	*(required, string) The email address of the first document collaborator.
	 */
	-(void)setUser1:(NSString*)User1 {
		[super setInput:@"User1" toValue:User1];
	}

	/*!
	 * Set the value of the User2 input for this Choreo.
	*(required, string) The email address for the second document collaborator.
	 */
	-(void)setUser2:(NSString*)User2 {
		[super setInput:@"User2" toValue:User2];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForShared Choreo.
 */
@implementation TMBGoogle_Documents_SearchForShared_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all documents shared by the two users you specify.
 */
@implementation TMBGoogle_Documents_SearchForShared

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_SearchForShared Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/SearchForShared"] autorelease];
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
		TMBGoogle_Documents_SearchForShared_ResultSet *results = [[[TMBGoogle_Documents_SearchForShared_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchForShared Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_SearchForShared_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_SearchForShared_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTag Choreo.
 */
@implementation TMBGoogle_Picasa_DeleteTag_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumId input for this Choreo.
	*(required, integer) The id for the album which has the tagged photo. Note that this can be retrieved by running the ListAlbums Choreo.
	 */
	-(void)setAlbumId:(NSString*)AlbumId {
		[super setInput:@"AlbumId" toValue:AlbumId];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id for the photo that has a tag to delete.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the TagID input for this Choreo.
	*(required, string) The Id (or tag name) for the tag that you want to delete.
	 */
	-(void)setTagID:(NSString*)TagID {
		[super setInput:@"TagID" toValue:TagID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTag Choreo.
 */
@implementation TMBGoogle_Picasa_DeleteTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a tag from a specified photo in Google Picasa.
 */
@implementation TMBGoogle_Picasa_DeleteTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_DeleteTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/DeleteTag"] autorelease];
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
		TMBGoogle_Picasa_DeleteTag_ResultSet *results = [[[TMBGoogle_Picasa_DeleteTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_DeleteTag_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_DeleteTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateContact Choreo.
 */
@implementation TMBGoogle_Contacts_UpdateContact_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The OAuth client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The OAuth client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(conditional, string) The id of the contact to update. Required unless providing a value for the Query input.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the NewEmail input for this Choreo.
	*(conditional, string) The contact's new email address.
	 */
	-(void)setNewEmail:(NSString*)NewEmail {
		[super setInput:@"NewEmail" toValue:NewEmail];
	}

	/*!
	 * Set the value of the NewFirstName input for this Choreo.
	*(conditional, string) The contact's new first name.
	 */
	-(void)setNewFirstName:(NSString*)NewFirstName {
		[super setInput:@"NewFirstName" toValue:NewFirstName];
	}

	/*!
	 * Set the value of the NewLastName input for this Choreo.
	*(conditional, string) The contact's new last name.
	 */
	-(void)setNewLastName:(NSString*)NewLastName {
		[super setInput:@"NewLastName" toValue:NewLastName];
	}

	/*!
	 * Set the value of the NewPhone input for this Choreo.
	*(optional, string) The contact's new telephone number.
	 */
	-(void)setNewPhone:(NSString*)NewPhone {
		[super setInput:@"NewPhone" toValue:NewPhone];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(conditional, string) A search term to retrieve the contact to update, such as an email address, last name, or address. Required unless providing a value for the ID input.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateContact Choreo.
 */
@implementation TMBGoogle_Contacts_UpdateContact_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "ContactID" output from an execution of this Choreo.
	 * @return - NSString* (string) The unique ID for the contact returned by Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getContactID {
		return [super getOutputByName:@"ContactID"];
	}

	/*!
	 * Retrieve the value of the "Email" output from an execution of this Choreo.
	 * @return - NSString* (string) The contact's current email address.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEmail {
		return [super getOutputByName:@"Email"];
	}

	/*!
	 * Retrieve the value of the "FirstName" output from an execution of this Choreo.
	 * @return - NSString* (string) The contact's current given name.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFirstName {
		return [super getOutputByName:@"FirstName"];
	}

	/*!
	 * Retrieve the value of the "LastName" output from an execution of this Choreo.
	 * @return - NSString* (string) The contact's current family name.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastName {
		return [super getOutputByName:@"LastName"];
	}

	/*!
	 * Retrieve the value of the "Phone" output from an execution of this Choreo.
	 * @return - NSString* (string) The contact's current telephone number.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPhone {
		return [super getOutputByName:@"Phone"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update an existing contact's information.
 */
@implementation TMBGoogle_Contacts_UpdateContact

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_UpdateContact Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/UpdateContact"] autorelease];
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
		TMBGoogle_Contacts_UpdateContact_ResultSet *results = [[[TMBGoogle_Contacts_UpdateContact_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateContact Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_UpdateContact_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_UpdateContact_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ChargeAndShipOrder Choreo.
 */
@implementation TMBGoogle_Checkout_ChargeAndShipOrder_Inputs

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(decimal) The dollar amount to charge (i.e. 25.50)
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Carrier input for this Choreo.
	*(string) The desired postal carrier (i.e. UPS)
	 */
	-(void)setCarrier:(NSString*)Carrier {
		[super setInput:@"Carrier" toValue:Carrier];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to checkout.google.com when running in production. Defaults to sandbox.google.com for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MerchantId input for this Choreo.
	*(integer) The Merchant Id provided by Google
	 */
	-(void)setMerchantId:(NSString*)MerchantId {
		[super setInput:@"MerchantId" toValue:MerchantId];
	}

	/*!
	 * Set the value of the MerchantKey input for this Choreo.
	*(string) The Merchant Key provided by Google
	 */
	-(void)setMerchantKey:(NSString*)MerchantKey {
		[super setInput:@"MerchantKey" toValue:MerchantKey];
	}

	/*!
	 * Set the value of the OrderNumber input for this Choreo.
	*(integer) The unique identifier for the order (There is an order number column in your Google Checkout Inbox).
	 */
	-(void)setOrderNumber:(NSString*)OrderNumber {
		[super setInput:@"OrderNumber" toValue:OrderNumber];
	}

	/*!
	 * Set the value of the TrackingNumber input for this Choreo.
	*(string) The tracking number for the order package
	 */
	-(void)setTrackingNumber:(NSString*)TrackingNumber {
		[super setInput:@"TrackingNumber" toValue:TrackingNumber];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChargeAndShipOrder Choreo.
 */
@implementation TMBGoogle_Checkout_ChargeAndShipOrder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Charge and ship an order once a shopping cart order has arrived in your Google Checkout Inbox.
 */
@implementation TMBGoogle_Checkout_ChargeAndShipOrder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Checkout_ChargeAndShipOrder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Checkout/ChargeAndShipOrder"] autorelease];
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
		TMBGoogle_Checkout_ChargeAndShipOrder_ResultSet *results = [[[TMBGoogle_Checkout_ChargeAndShipOrder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ChargeAndShipOrder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Checkout_ChargeAndShipOrder_Inputs*)newInputSet {
		return [[[TMBGoogle_Checkout_ChargeAndShipOrder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByType Choreo.
 */
@implementation TMBGoogle_Documents_SearchByType_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The MIME type of the files to list: word, excel, powerpoint, pdf, csv, rtf, html, css, xml, plaintext, zip, jpg, or png.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByType Choreo.
 */
@implementation TMBGoogle_Documents_SearchByType_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all files of a MIME type you specify.
 */
@implementation TMBGoogle_Documents_SearchByType

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_SearchByType Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/SearchByType"] autorelease];
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
		TMBGoogle_Documents_SearchByType_ResultSet *results = [[[TMBGoogle_Documents_SearchByType_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByType Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_SearchByType_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_SearchByType_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the RevisionID input for this Choreo.
	*(required, string) The ID of the revision.
	 */
	-(void)setRevisionID:(NSString*)RevisionID {
		[super setInput:@"RevisionID" toValue:RevisionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a revision.
 */
@implementation TMBGoogle_Drive_Revisions_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Revisions_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Revisions/Delete"] autorelease];
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
		TMBGoogle_Drive_Revisions_Delete_ResultSet *results = [[[TMBGoogle_Drive_Revisions_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Revisions_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Revisions_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLocationElevation Choreo.
 */
@implementation TMBGoogle_Elevation_GetLocationElevation_Inputs

	/*!
	 * Set the value of the Locations input for this Choreo.
	*(required, string) Enter the location(s) for which elevation data will be obtained.  Input formats: a single latitude/longitude coordinate pair; an array of coordinates separated by a |. A set of encoded coordinates.
	 */
	-(void)setLocations:(NSString*)Locations {
		[super setInput:@"Locations" toValue:Locations];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLocationElevation Choreo.
 */
@implementation TMBGoogle_Elevation_GetLocationElevation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain elevation information for a path generated by a set of geo-coordinates.
 */
@implementation TMBGoogle_Elevation_GetLocationElevation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Elevation_GetLocationElevation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Elevation/GetLocationElevation"] autorelease];
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
		TMBGoogle_Elevation_GetLocationElevation_ResultSet *results = [[[TMBGoogle_Elevation_GetLocationElevation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLocationElevation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Elevation_GetLocationElevation_Inputs*)newInputSet {
		return [[[TMBGoogle_Elevation_GetLocationElevation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMetrics Choreo.
 */
@implementation TMBGoogle_Analytics_GetMetrics_Inputs

	/*!
	 * Set the value of the Dimensions input for this Choreo.
	*(optional, string) Defines the primary data keys for your Analytics report. Use dimensions to segment your web property metrics (e.g.  ga:browser or ga:city).
	 */
	-(void)setDimensions:(NSString*)Dimensions {
		[super setInput:@"Dimensions" toValue:Dimensions];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) The end date for the range of data you want to retrieve. Epoch timestamp in milliseconds or formatted as yyyy-MM-dd.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Filters input for this Choreo.
	*(optional, string) Restricts the data returned by a dimension or metric you want to filter by using an expression (i.e. ga:timeOnPage==10).
	 */
	-(void)setFilters:(NSString*)Filters {
		[super setInput:@"Filters" toValue:Filters];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The max results to be returned in the feed. Defaults to 50.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Metrics input for this Choreo.
	*(optional, string) This is a comma separated list of metrics you want to retrieve. Defaults to: ga:visits,ga:bounces,ga:pageviews.
	 */
	-(void)setMetrics:(NSString*)Metrics {
		[super setInput:@"Metrics" toValue:Metrics];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password for your Google analytics account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ProfileId input for this Choreo.
	*(required, integer) The Google Analytics profile ID to access (this can be found under Profile Settings).
	 */
	-(void)setProfileId:(NSString*)ProfileId {
		[super setInput:@"ProfileId" toValue:ProfileId];
	}

	/*!
	 * Set the value of the Segment input for this Choreo.
	*(optional, string) Used to segment your data by dimensions and/or metrics. You can use expressions for segments just as you would for the Filters parameter.
	 */
	-(void)setSegment:(NSString*)Segment {
		[super setInput:@"Segment" toValue:Segment];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Indicates the sorting order and direction for the returned data. Values can be separated by commas (i.e. ga:browser,ga:pageviews).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) The start date for the range of data to retrieve. Use epoch timestamp in milliseconds or formatted as yyyy-MM-dd.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The starting entry for the feed. Defaults to 1.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username for your Google analytics account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMetrics Choreo.
 */
@implementation TMBGoogle_Analytics_GetMetrics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Bounces" output from an execution of this Choreo.
	 * @return - NSString* (integer) The bounces metrics parsed from the Google Analytics response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getBounces {
		return [super getOutputByName:@"Bounces"];
	}

	/*!
	 * Retrieve the value of the "PageViews" output from an execution of this Choreo.
	 * @return - NSString* (integer) The page views parsed from the Google Analytics response
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPageViews {
		return [super getOutputByName:@"PageViews"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The full response from Google Analytics.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Visits" output from an execution of this Choreo.
	 * @return - NSString* (integer) The visits metrics parsed from the Google Analytics response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getVisits {
		return [super getOutputByName:@"Visits"];
	}
	
@end

/*!
 * Retrieves metrics such as visits, page views, bounces within a specified time frame.
 */
@implementation TMBGoogle_Analytics_GetMetrics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Analytics_GetMetrics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Analytics/GetMetrics"] autorelease];
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
		TMBGoogle_Analytics_GetMetrics_ResultSet *results = [[[TMBGoogle_Analytics_GetMetrics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMetrics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Analytics_GetMetrics_Inputs*)newInputSet {
		return [[[TMBGoogle_Analytics_GetMetrics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GeocodeByAddress Choreo.
 */
@implementation TMBGoogle_Geocoding_GeocodeByAddress_Inputs

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The address that you want to geocode.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the Bounds input for this Choreo.
	*(optional, string) The bounding box of the viewport within which to bias geocode results more prominently.
	 */
	-(void)setBounds:(NSString*)Bounds {
		[super setInput:@"Bounds" toValue:Bounds];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) The language in which to return results. Defaults to 'en' (English).
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) The region code, specified as a ccTLD ("top-level domain") two-character value. Defaults to 'us' (United States).
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the geocoding request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeocodeByAddress Choreo.
 */
@implementation TMBGoogle_Geocoding_GeocodeByAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Latitude" output from an execution of this Choreo.
	 * @return - NSString* (decimal) The latitude coordinate associated with the address provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLatitude {
		return [super getOutputByName:@"Latitude"];
	}

	/*!
	 * Retrieve the value of the "Longitude" output from an execution of this Choreo.
	 * @return - NSString* (decimal) The longitude coordinate associated with the address provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLongitude {
		return [super getOutputByName:@"Longitude"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Converts a human-readable address into geographic coordinates.
 */
@implementation TMBGoogle_Geocoding_GeocodeByAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Geocoding_GeocodeByAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Geocoding/GeocodeByAddress"] autorelease];
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
		TMBGoogle_Geocoding_GeocodeByAddress_ResultSet *results = [[[TMBGoogle_Geocoding_GeocodeByAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GeocodeByAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Geocoding_GeocodeByAddress_Inputs*)newInputSet {
		return [[[TMBGoogle_Geocoding_GeocodeByAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateListRows Choreo.
 */
@implementation TMBGoogle_Spreadsheets_UpdateListRows_Inputs

	/*!
	 * Set the value of the RowsetXML input for this Choreo.
	*(required, xml) The row of data that you want to update in XML format. Your XML needs to be in the rowset/row schema described in the Choreo documentation.
	 */
	-(void)setRowsetXML:(NSString*)RowsetXML {
		[super setInput:@"RowsetXML" toValue:RowsetXML];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RowId input for this Choreo.
	*(required, string) The unique id of the row you want to update
	 */
	-(void)setRowId:(NSString*)RowId {
		[super setInput:@"RowId" toValue:RowId];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique key of the spreadsheet that contains the worksheet you want to update
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet that you want to update
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateListRows Choreo.
 */
@implementation TMBGoogle_Spreadsheets_UpdateListRows_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a worksheet row in a Google spreadsheet using a simple XML file you provide.
 */
@implementation TMBGoogle_Spreadsheets_UpdateListRows

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_UpdateListRows Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/UpdateListRows"] autorelease];
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
		TMBGoogle_Spreadsheets_UpdateListRows_ResultSet *results = [[[TMBGoogle_Spreadsheets_UpdateListRows_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateListRows Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_UpdateListRows_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_UpdateListRows_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_UpdateCalendar_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The ID for the calendar to update.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the NewDescription input for this Choreo.
	*(optional, string) The new description for the calendar to update.
	 */
	-(void)setNewDescription:(NSString*)NewDescription {
		[super setInput:@"NewDescription" toValue:NewDescription];
	}

	/*!
	 * Set the value of the NewLocation input for this Choreo.
	*(optional, string) The new location for the calendar to update.
	 */
	-(void)setNewLocation:(NSString*)NewLocation {
		[super setInput:@"NewLocation" toValue:NewLocation];
	}

	/*!
	 * Set the value of the NewSummary input for this Choreo.
	*(required, string) The new summary for the calendar to update.
	 */
	-(void)setNewSummary:(NSString*)NewSummary {
		[super setInput:@"NewSummary" toValue:NewSummary];
	}

	/*!
	 * Set the value of the NewTimezone input for this Choreo.
	*(optional, string) The new timezone for the calendar to update.
	 */
	-(void)setNewTimezone:(NSString*)NewTimezone {
		[super setInput:@"NewTimezone" toValue:NewTimezone];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCalendar Choreo.
 */
@implementation TMBGoogle_Calendar_UpdateCalendar_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates the metadata for a calendar.
 */
@implementation TMBGoogle_Calendar_UpdateCalendar

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_UpdateCalendar Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/UpdateCalendar"] autorelease];
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
		TMBGoogle_Calendar_UpdateCalendar_ResultSet *results = [[[TMBGoogle_Calendar_UpdateCalendar_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateCalendar Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_UpdateCalendar_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_UpdateCalendar_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PlaceDetails Choreo.
 */
@implementation TMBGoogle_Places_PlaceDetails_Inputs

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) Enter your Google API key.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Set the language in which to return restults.  A list of supported languages is available here: https://spreadsheets.google.com/pub?key=p9pdwsai2hDMsLkXsoM05KQ&gid=1
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(required, string) Enter a textual identifier that uniquely identidies a place obtained from the PlaceSearch Choreo.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PlaceDetails Choreo.
 */
@implementation TMBGoogle_Places_PlaceDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve detailed information about places retrieved by the PlaceSearch Choreo.
 */
@implementation TMBGoogle_Places_PlaceDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Places_PlaceDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Places/PlaceDetails"] autorelease];
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
		TMBGoogle_Places_PlaceDetails_ResultSet *results = [[[TMBGoogle_Places_PlaceDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PlaceDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Places_PlaceDetails_Inputs*)newInputSet {
		return [[[TMBGoogle_Places_PlaceDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UserPlaceReports Choreo.
 */
@implementation TMBGoogle_Places_UserPlaceReports_Inputs

	/*!
	 * Set the value of the POSTForm input for this Choreo.
	*(required, any) Enter the required POST parameter, reference in the body of this JSON form.
	 */
	-(void)setPOSTForm:(NSString*)POSTForm {
		[super setInput:@"POSTForm" toValue:POSTForm];
	}

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) Enter your Google API key.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserPlaceReports Choreo.
 */
@implementation TMBGoogle_Places_UserPlaceReports_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add a new Place to Google Places.
 */
@implementation TMBGoogle_Places_UserPlaceReports

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Places_UserPlaceReports Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Places/UserPlaceReports"] autorelease];
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
		TMBGoogle_Places_UserPlaceReports_ResultSet *results = [[[TMBGoogle_Places_UserPlaceReports_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UserPlaceReports Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Places_UserPlaceReports_Inputs*)newInputSet {
		return [[[TMBGoogle_Places_UserPlaceReports_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TagPhoto Choreo.
 */
@implementation TMBGoogle_Picasa_TagPhoto_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumID input for this Choreo.
	*(required, integer) The id of the album which contains the photo you want to tag.
	 */
	-(void)setAlbumID:(NSString*)AlbumID {
		[super setInput:@"AlbumID" toValue:AlbumID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo you want to tag.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(required, string) The text for the photo tag.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to "default" which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TagPhoto Choreo.
 */
@implementation TMBGoogle_Picasa_TagPhoto_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a tag for a specified photo in Google Picasa.
 */
@implementation TMBGoogle_Picasa_TagPhoto

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_TagPhoto Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/TagPhoto"] autorelease];
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
		TMBGoogle_Picasa_TagPhoto_ResultSet *results = [[[TMBGoogle_Picasa_TagPhoto_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TagPhoto Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_TagPhoto_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_TagPhoto_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveWorksheets Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveWorksheets_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the worksheet(s) you want to retrieve. Can be retrieved from RetrieveSpreadsheets Choreo.
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveWorksheets Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveWorksheets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of worksheets in a given Google spreadsheet.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveWorksheets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveWorksheets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveWorksheets"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveWorksheets_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveWorksheets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveWorksheets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveWorksheets_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveWorksheets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEvent Choreo.
 */
@implementation TMBGoogle_Calendar_CreateEvent_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarID input for this Choreo.
	*(required, string) The ID for the calendar in which to add the event.
	 */
	-(void)setCalendarID:(NSString*)CalendarID {
		[super setInput:@"CalendarID" toValue:CalendarID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, string) The end date of the event, in the format "2012-04-10".
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(required, string) The end time for the event, in the format "10:30:00".
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the EventDescription input for this Choreo.
	*(optional, string) A short description of the event.
	 */
	-(void)setEventDescription:(NSString*)EventDescription {
		[super setInput:@"EventDescription" toValue:EventDescription];
	}

	/*!
	 * Set the value of the EventLocation input for this Choreo.
	*(optional, string) The location for the new event.
	 */
	-(void)setEventLocation:(NSString*)EventLocation {
		[super setInput:@"EventLocation" toValue:EventLocation];
	}

	/*!
	 * Set the value of the EventTitle input for this Choreo.
	*(required, string) The title for the new event.
	 */
	-(void)setEventTitle:(NSString*)EventTitle {
		[super setInput:@"EventTitle" toValue:EventTitle];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, string) The start date of the event, in the format "2012-11-03".
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(required, string) The start time for the event, in the format "10:00:00".
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEvent Choreo.
 */
@implementation TMBGoogle_Calendar_CreateEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CreateEvent" output from an execution of this Choreo.
	 * @return - NSString* The request template with appropriate inputs passed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCreateEvent {
		return [super getOutputByName:@"CreateEvent"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "TimezoneSetting" output from an execution of this Choreo.
	 * @return - NSString* (string) The timezone setting retrieved from the specified calendar.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTimezoneSetting {
		return [super getOutputByName:@"TimezoneSetting"];
	}


	
@end

/*!
 * Create a new event in a specified calendar.
 */
@implementation TMBGoogle_Calendar_CreateEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_CreateEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/CreateEvent"] autorelease];
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
		TMBGoogle_Calendar_CreateEvent_ResultSet *results = [[[TMBGoogle_Calendar_CreateEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_CreateEvent_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_CreateEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Update_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a comment resource which shoud contain at least one key for content. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Update_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates an existing comment.
 */
@implementation TMBGoogle_Drive_Comments_Update

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Comments_Update Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Comments/Update"] autorelease];
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
		TMBGoogle_Drive_Comments_Update_ResultSet *results = [[[TMBGoogle_Drive_Comments_Update_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Update Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Comments_Update_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Comments_Update_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ToggleProperties Choreo.
 */
@implementation TMBGoogle_Documents_ToggleProperties_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the document with the properties you want to toggle. Enclose in quotation marks for an exact, non-case-sensitive match.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ToggleProperties Choreo.
 */
@implementation TMBGoogle_Documents_ToggleProperties_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "EditLink" output from an execution of this Choreo.
	 * @return - NSString* (string) The edit link URL for the document, parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEditLink {
		return [super getOutputByName:@"EditLink"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Google Documents API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Toggle settings for a document or file on or off, depending on its current state.
 */
@implementation TMBGoogle_Documents_ToggleProperties

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Documents_ToggleProperties Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Documents/ToggleProperties"] autorelease];
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
		TMBGoogle_Documents_ToggleProperties_ResultSet *results = [[[TMBGoogle_Documents_ToggleProperties_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ToggleProperties Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Documents_ToggleProperties_Inputs*)newInputSet {
		return [[[TMBGoogle_Documents_ToggleProperties_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSpreadsheetDetailsByName Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetName input for this Choreo.
	*(required, string) The title of the spreadsheet you want to retrieve details for.
	 */
	-(void)setSpreadsheetName:(NSString*)SpreadsheetName {
		[super setInput:@"SpreadsheetName" toValue:SpreadsheetName];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSpreadsheetDetailsByName Choreo.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "SpreadsheetDetails" output from an execution of this Choreo.
	 * @return - NSString* (xml) The spreadsheet details including spreadsheet name and key. Worksheet names and IDs associated with the spreadsheet are also included.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSpreadsheetDetails {
		return [super getOutputByName:@"SpreadsheetDetails"];
	}
	
@end

/*!
 * Retrieves spreadsheet and worksheet IDs with a given spreadsheet name.
 */
@implementation TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/RetrieveSpreadsheetDetailsByName"] autorelease];
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
		TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_ResultSet *results = [[[TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveSpreadsheetDetailsByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_RetrieveSpreadsheetDetailsByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllCalendars Choreo.
 */
@implementation TMBGoogle_Calendar_GetAllCalendars_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The maximum number of calendars to return. The default is 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) The calendar fields to return. Accepted values are "etag", "items", "kind", and "nextPageToken". All calendar items are returned by default.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Hidden input for this Choreo.
	*(optional, boolean) Enter "1" to return hidden calendars in the results, or "0" (the default) to not return them.
	 */
	-(void)setHidden:(NSString*)Hidden {
		[super setInput:@"Hidden" toValue:Hidden];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllCalendars Choreo.
 */
@implementation TMBGoogle_Calendar_GetAllCalendars_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieve data for all calendars.
 */
@implementation TMBGoogle_Calendar_GetAllCalendars

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_GetAllCalendars Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/GetAllCalendars"] autorelease];
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
		TMBGoogle_Calendar_GetAllCalendars_ResultSet *results = [[[TMBGoogle_Calendar_GetAllCalendars_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllCalendars Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_GetAllCalendars_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_GetAllCalendars_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Delete_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBGoogle_Drive_Comments_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a comment.
 */
@implementation TMBGoogle_Drive_Comments_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Comments_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Comments/Delete"] autorelease];
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
		TMBGoogle_Drive_Comments_Delete_ResultSet *results = [[[TMBGoogle_Drive_Comments_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Comments_Delete_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Comments_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Plus_Activities_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Collection input for this Choreo.
	*(required, string) The collection of activities to list. Defaults to "public".
	 */
	-(void)setCollection:(NSString*)Collection {
		[super setInput:@"Collection" toValue:Collection];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of people to include in the response. Used for paging through results. Valid values are: 1 to 20. Default is 10.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "NextPageToken" returned in the Choreo output. Used to page through large result sets.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID of the person to get the profile for. The value "me" is set as the default to indicate the authenticated user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Plus_Activities_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 *  Returns a list of all activities in the specified collection for a particular user.
 */
@implementation TMBGoogle_Plus_Activities_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_Activities_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/Activities/List"] autorelease];
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
		TMBGoogle_Plus_Activities_List_ResultSet *results = [[[TMBGoogle_Plus_Activities_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_Activities_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_Activities_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCells Choreo.
 */
@implementation TMBGoogle_Spreadsheets_UpdateCells_Inputs

	/*!
	 * Set the value of the Column input for this Choreo.
	*(required, integer) The column number of the cell location that you want to update (for example, column A = 1, columnB = 2, etc).
	 */
	-(void)setColumn:(NSString*)Column {
		[super setInput:@"Column" toValue:Column];
	}

	/*!
	 * Set the value of the InputValue input for this Choreo.
	*(required, string) The new value for the cell
	 */
	-(void)setInputValue:(NSString*)InputValue {
		[super setInput:@"InputValue" toValue:InputValue];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Row input for this Choreo.
	*(required, integer) The row number of the cell location that you want to update
	 */
	-(void)setRow:(NSString*)Row {
		[super setInput:@"Row" toValue:Row];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique for key for the spreadsheet associated with the cell you want to update
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google email address
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id of the worksheet associated with the cell you want to update
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCells Choreo.
 */
@implementation TMBGoogle_Spreadsheets_UpdateCells_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified cell in a Google worksheet.
 */
@implementation TMBGoogle_Spreadsheets_UpdateCells

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_UpdateCells Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/UpdateCells"] autorelease];
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
		TMBGoogle_Spreadsheets_UpdateCells_ResultSet *results = [[[TMBGoogle_Spreadsheets_UpdateCells_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateCells Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_UpdateCells_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_UpdateCells_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotosByAlbum Choreo.
 */
@implementation TMBGoogle_Picasa_ListPhotosByAlbum_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumID input for this Choreo.
	*(required, integer) The album id. Note that this can be retrieved by running the ListAlbums Choreo.
	 */
	-(void)setAlbumID:(NSString*)AlbumID {
		[super setInput:@"AlbumID" toValue:AlbumID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotosByAlbum Choreo.
 */
@implementation TMBGoogle_Picasa_ListPhotosByAlbum_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all photos in a specified Google Picasa album.
 */
@implementation TMBGoogle_Picasa_ListPhotosByAlbum

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_ListPhotosByAlbum Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/ListPhotosByAlbum"] autorelease];
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
		TMBGoogle_Picasa_ListPhotosByAlbum_ResultSet *results = [[[TMBGoogle_Picasa_ListPhotosByAlbum_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPhotosByAlbum Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_ListPhotosByAlbum_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_ListPhotosByAlbum_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Comments_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set, this will succeed when retrieving a deleted comment, and will include any deleted replies. (Default: false)
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, string) The maximum number of discussions to include in the response, used for paging. Acceptable values are 0 to 100, inclusive. (Default: 20)
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UpdatedMIn input for this Choreo.
	*(optional, string) Only discussions that were updated after this timestamp will be returned. Formatted as an RFC 3339 timestamp.
	 */
	-(void)setUpdatedMIn:(NSString*)UpdatedMIn {
		[super setInput:@"UpdatedMIn" toValue:UpdatedMIn];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Comments_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists a file's comments.
 */
@implementation TMBGoogle_Drive_Comments_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Comments_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Comments/List"] autorelease];
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
		TMBGoogle_Drive_Comments_List_ResultSet *results = [[[TMBGoogle_Drive_Comments_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Comments_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Comments_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAlbum Choreo.
 */
@implementation TMBGoogle_Picasa_CreateAlbum_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Keywords input for this Choreo.
	*(optional, string) Keywords to associate with the album you are creating separated by commas.
	 */
	-(void)setKeywords:(NSString*)Keywords {
		[super setInput:@"Keywords" toValue:Keywords];
	}

	/*!
	 * Set the value of the PhotoAccess input for this Choreo.
	*(optional, string) The perssion level to specify for photo access. Defaults to 'public'.
	 */
	-(void)setPhotoAccess:(NSString*)PhotoAccess {
		[super setInput:@"PhotoAccess" toValue:PhotoAccess];
	}

	/*!
	 * Set the value of the PhotoLocation input for this Choreo.
	*(optional, string) The location to associate with the photo (i.e. Italy).
	 */
	-(void)setPhotoLocation:(NSString*)PhotoLocation {
		[super setInput:@"PhotoLocation" toValue:PhotoLocation];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the Summary input for this Choreo.
	*(optional, string) The album summary.
	 */
	-(void)setSummary:(NSString*)Summary {
		[super setInput:@"Summary" toValue:Summary];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(optional, date) The timestamp to associate with the photo.  Defaults to the current timestamp. Should be an epoch timestamp in milliseconds.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the album.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Google Picasa username. Defaults to 'default' which means the server will use the UserID of the user whose access token was specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAlbum Choreo.
 */
@implementation TMBGoogle_Picasa_CreateAlbum_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google Picasa.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a photo album in a Google Picasa account.
 */
@implementation TMBGoogle_Picasa_CreateAlbum

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Picasa_CreateAlbum Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Picasa/CreateAlbum"] autorelease];
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
		TMBGoogle_Picasa_CreateAlbum_ResultSet *results = [[[TMBGoogle_Picasa_CreateAlbum_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAlbum Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Picasa_CreateAlbum_Inputs*)newInputSet {
		return [[[TMBGoogle_Picasa_CreateAlbum_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBGoogle_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Google after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the CustomCallbackID input for this Choreo.
	*(optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
	 */
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID {
		[super setInput:@"CustomCallbackID" toValue:CustomCallbackID];
	}

	/*!
	 * Set the value of the ForwardingURL input for this Choreo.
	*(optional, string) The URL that Temboo will redirect your users to after they grant your application access.
	 */
	-(void)setForwardingURL:(NSString*)ForwardingURL {
		[super setInput:@"ForwardingURL" toValue:ForwardingURL];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(required, string) The OAuth scope that should be associated with the access token being requested. For example, to access Google Drive, you would specify the following scope: https://www.googleapis.com/auth/drive
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBGoogle_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationURL {
		return [super getOutputByName:@"AuthorizationURL"];
	}

	/*!
	 * Retrieve the value of the "CallbackID" output from an execution of this Choreo.
	 * @return - NSString* (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCallbackID {
		return [super getOutputByName:@"CallbackID"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBGoogle_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/OAuth/InitializeOAuth"] autorelease];
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
		TMBGoogle_OAuth_InitializeOAuth_ResultSet *results = [[[TMBGoogle_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBGoogle_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Changes_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChangeID input for this Choreo.
	*(required, string) The ID of the change.
	 */
	-(void)setChangeID:(NSString*)ChangeID {
		[super setInput:@"ChangeID" toValue:ChangeID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Changes_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Gets a specific change.
 */
@implementation TMBGoogle_Drive_Changes_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Changes_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Changes/Get"] autorelease];
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
		TMBGoogle_Drive_Changes_Get_ResultSet *results = [[[TMBGoogle_Drive_Changes_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Changes_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Changes_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Plus_Comments_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) The ID of the activity to get.
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of people to include in the response. Used for paging through results. Valid values are: 1 to 20. Default is 10.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "NextPageToken" returned in the Choreo output. Used to page through large result sets.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) The order in which to sort the list of comments. Valid values are: "ascending" (Sort oldest comments first, the default) and "descending" (Sort newest comments first).
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Plus_Comments_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list all of the comments for a given activity.
 */
@implementation TMBGoogle_Plus_Comments_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_Comments_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/Comments/List"] autorelease];
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
		TMBGoogle_Plus_Comments_List_ResultSet *results = [[[TMBGoogle_Plus_Comments_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_Comments_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_Comments_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_DeleteWorksheet_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Google password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SpreadsheetKey input for this Choreo.
	*(required, string) The unique key associated with the spreadsheet that contains a worksheet you want to delete
	 */
	-(void)setSpreadsheetKey:(NSString*)SpreadsheetKey {
		[super setInput:@"SpreadsheetKey" toValue:SpreadsheetKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Google username
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WorksheetId input for this Choreo.
	*(required, string) The unique id associated with the worksheet that you want to delete
	 */
	-(void)setWorksheetId:(NSString*)WorksheetId {
		[super setInput:@"WorksheetId" toValue:WorksheetId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWorksheet Choreo.
 */
@implementation TMBGoogle_Spreadsheets_DeleteWorksheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified worksheet from an existing spreadsheet.
 */
@implementation TMBGoogle_Spreadsheets_DeleteWorksheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Spreadsheets_DeleteWorksheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Spreadsheets/DeleteWorksheet"] autorelease];
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
		TMBGoogle_Spreadsheets_DeleteWorksheet_ResultSet *results = [[[TMBGoogle_Spreadsheets_DeleteWorksheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWorksheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Spreadsheets_DeleteWorksheet_Inputs*)newInputSet {
		return [[[TMBGoogle_Spreadsheets_DeleteWorksheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListLocationHistory Choreo.
 */
@implementation TMBGoogle_Latitude_ListLocationHistory_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Granularity input for this Choreo.
	*(optional, string) Specify the level of detailed returned.  Enter: best, or city.  Default is city.
	 */
	-(void)setGranularity:(NSString*)Granularity {
		[super setInput:@"Granularity" toValue:Granularity];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Enter the maximum number of results to return.  If unspecified, 100 results will be returned.  The maximum results returned is 1000.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the MaxTime input for this Choreo.
	*(optional, integer) The maximum timestamp of the locations to return (in milliseconds since the epoch).
	 */
	-(void)setMaxTime:(NSString*)MaxTime {
		[super setInput:@"MaxTime" toValue:MaxTime];
	}

	/*!
	 * Set the value of the MinTime input for this Choreo.
	*(optional, integer) The minimum timestamp of the locations to return (in milliseconds since the epoch).
	 */
	-(void)setMinTime:(NSString*)MinTime {
		[super setInput:@"MinTime" toValue:MinTime];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListLocationHistory Choreo.
 */
@implementation TMBGoogle_Latitude_ListLocationHistory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of a user's location history.
 */
@implementation TMBGoogle_Latitude_ListLocationHistory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_ListLocationHistory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/ListLocationHistory"] autorelease];
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
		TMBGoogle_Latitude_ListLocationHistory_ResultSet *results = [[[TMBGoogle_Latitude_ListLocationHistory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListLocationHistory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_ListLocationHistory_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_ListLocationHistory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePastLocation Choreo.
 */
@implementation TMBGoogle_Latitude_DeletePastLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the LocationID input for this Choreo.
	*(required, date) Enter the timestamp (in epoch time) of the location to be deleted.
	 */
	-(void)setLocationID:(NSString*)LocationID {
		[super setInput:@"LocationID" toValue:LocationID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePastLocation Choreo.
 */
@implementation TMBGoogle_Latitude_DeletePastLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specific location from a user's location history.
 */
@implementation TMBGoogle_Latitude_DeletePastLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Latitude_DeletePastLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Latitude/DeletePastLocation"] autorelease];
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
		TMBGoogle_Latitude_DeletePastLocation_ResultSet *results = [[[TMBGoogle_Latitude_DeletePastLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePastLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Latitude_DeletePastLocation_Inputs*)newInputSet {
		return [[[TMBGoogle_Latitude_DeletePastLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Drive_Files_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ExportFormat input for this Choreo.
	*(optional, string) Indicates the download format (i.e. pdf, doc, txt, rtf, odt, etc). When specified, the FileContent output will contain the file's base64 encoded value.
	 */
	-(void)setExportFormat:(NSString*)ExportFormat {
		[super setInput:@"ExportFormat" toValue:ExportFormat];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file to retrieve.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UpdateViewDate input for this Choreo.
	*(optional, boolean) Whether to update the view date after successfully retrieving the file. Default value is false.
	 */
	-(void)setUpdateViewDate:(NSString*)UpdateViewDate {
		[super setInput:@"UpdateViewDate" toValue:UpdateViewDate];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Drive_Files_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FileContent" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded file content.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFileContent {
		return [super getOutputByName:@"FileContent"];
	}

	/*!
	 * Retrieve the value of the "FileMetadata" output from an execution of this Choreo.
	 * @return - NSString* (json) The file metadata returned in the response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFileMetadata {
		return [super getOutputByName:@"FileMetadata"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}


	
@end

/*!
 * Gets a file's metadata and content by ID.
 */
@implementation TMBGoogle_Drive_Files_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Get"] autorelease];
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
		TMBGoogle_Drive_Files_Get_ResultSet *results = [[[TMBGoogle_Drive_Files_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WalkingDistanceMatrix Choreo.
 */
@implementation TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_Inputs

	/*!
	 * Set the value of the Alternatives input for this Choreo.
	*(optional, string) If set to true, additional routes will be returned.
	 */
	-(void)setAlternatives:(NSString*)Alternatives {
		[super setInput:@"Alternatives" toValue:Alternatives];
	}

	/*!
	 * Set the value of the Destinations input for this Choreo.
	*(required, string) Enter the address or latitude/longitude coordinates to which directions will be generated. Multiple destinations can be separated by pipes (|).  For example: Boston, MA|New Haven|40.7160,-74.0037.
	 */
	-(void)setDestinations:(NSString*)Destinations {
		[super setInput:@"Destinations" toValue:Destinations];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Set the language in which to return restults.  A list of supported languages is available here: https://spreadsheets.google.com/pub?key=p9pdwsai2hDMsLkXsoM05KQ&gid=1
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Origins input for this Choreo.
	*(required, string) Enter the address(es) or geo-coordinates from which distance and time will be computed. Multiple destinations can be separated by pipes (|).  For example: Boston, MA|New Haven|40.7160,-74.0037.
	 */
	-(void)setOrigins:(NSString*)Origins {
		[super setInput:@"Origins" toValue:Origins];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) Enter the region code for the directions, specified as a ccTLD two-character value.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the Sensor input for this Choreo.
	*(optional, boolean) Indicates whether or not the directions request is from a device with a location sensor. Value must be either 1 or 0. Defaults to 0 (false).
	 */
	-(void)setSensor:(NSString*)Sensor {
		[super setInput:@"Sensor" toValue:Sensor];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) Specify the units to be used when displaying results.  Options include, metric, or imperial.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WalkingDistanceMatrix Choreo.
 */
@implementation TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain walking distances and times for a matrix of addresses and/or latitude/longitude coordinates.
 */
@implementation TMBGoogle_DistanceMatrix_WalkingDistanceMatrix

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_DistanceMatrix_WalkingDistanceMatrix Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/DistanceMatrix/WalkingDistanceMatrix"] autorelease];
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
		TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_ResultSet *results = [[[TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WalkingDistanceMatrix Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_Inputs*)newInputSet {
		return [[[TMBGoogle_DistanceMatrix_WalkingDistanceMatrix_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAllEvents Choreo.
 */
@implementation TMBGoogle_Calendar_DeleteAllEvents_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAllEvents Choreo.
 */
@implementation TMBGoogle_Calendar_DeleteAllEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* No content is returned for delete calendar operations.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete all events from a primary calendar of an account. Note that this operation can't be undone.
 */
@implementation TMBGoogle_Calendar_DeleteAllEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_DeleteAllEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/DeleteAllEvents"] autorelease];
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
		TMBGoogle_Calendar_DeleteAllEvents_ResultSet *results = [[[TMBGoogle_Calendar_DeleteAllEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteAllEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_DeleteAllEvents_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_DeleteAllEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_Update_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a reply resource which shoud contain at least one key for pinned, publishAuto, published, or publishedOutsideDomain. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the RevisionID input for this Choreo.
	*(required, string) The ID of the revision.
	 */
	-(void)setRevisionID:(NSString*)RevisionID {
		[super setInput:@"RevisionID" toValue:RevisionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_Update_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates a revision.
 */
@implementation TMBGoogle_Drive_Revisions_Update

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Revisions_Update Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Revisions/Update"] autorelease];
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
		TMBGoogle_Drive_Revisions_Update_ResultSet *results = [[[TMBGoogle_Drive_Revisions_Update_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Update Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Revisions_Update_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Revisions_Update_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchCalendarsByName Choreo.
 */
@implementation TMBGoogle_Calendar_SearchCalendarsByName_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CalendarName input for this Choreo.
	*(required, string) The name of the calendar that you want to retrieve information for. Note that if there are multiple calendars with the same name, only the first one will be returned.
	 */
	-(void)setCalendarName:(NSString*)CalendarName {
		[super setInput:@"CalendarName" toValue:CalendarName];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The maximum number of calendars to search by name. The default is 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchCalendarsByName Choreo.
 */
@implementation TMBGoogle_Calendar_SearchCalendarsByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CalendarDescription" output from an execution of this Choreo.
	 * @return - NSString* (string) The calendar description parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCalendarDescription {
		return [super getOutputByName:@"CalendarDescription"];
	}

	/*!
	 * Retrieve the value of the "CalendarId" output from an execution of this Choreo.
	 * @return - NSString* (string) The calendar id parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCalendarId {
		return [super getOutputByName:@"CalendarId"];
	}

	/*!
	 * Retrieve the value of the "CalendarSummary" output from an execution of this Choreo.
	 * @return - NSString* (string) The summary or calendar name parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCalendarSummary {
		return [super getOutputByName:@"CalendarSummary"];
	}

	/*!
	 * Retrieve the value of the "CalendarTimezone" output from an execution of this Choreo.
	 * @return - NSString* (string) The calendar timezone parsed from the Google response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCalendarTimezone {
		return [super getOutputByName:@"CalendarTimezone"];
	}

	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}
	
@end

/*!
 * Retrieves information about a calendar including the id with a given calendar name.
 */
@implementation TMBGoogle_Calendar_SearchCalendarsByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_SearchCalendarsByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/SearchCalendarsByName"] autorelease];
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
		TMBGoogle_Calendar_SearchCalendarsByName_ResultSet *results = [[[TMBGoogle_Calendar_SearchCalendarsByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchCalendarsByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_SearchCalendarsByName_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_SearchCalendarsByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TestAccount Choreo.
 */
@implementation TMBGoogle_Checkout_TestAccount_Inputs

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to checkout.google.com when running in production. Defaults to sandbox.google.com for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MerchantId input for this Choreo.
	*(required, integer) The Merchant Id provided by Google
	 */
	-(void)setMerchantId:(NSString*)MerchantId {
		[super setInput:@"MerchantId" toValue:MerchantId];
	}

	/*!
	 * Set the value of the MerchantKey input for this Choreo.
	*(required, string) The Merchant Key provided by Google
	 */
	-(void)setMerchantKey:(NSString*)MerchantKey {
		[super setInput:@"MerchantKey" toValue:MerchantKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TestAccount Choreo.
 */
@implementation TMBGoogle_Checkout_TestAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to perform simple test to verify connectivity with your Google Checkout account.
 */
@implementation TMBGoogle_Checkout_TestAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Checkout_TestAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Checkout/TestAccount"] autorelease];
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
		TMBGoogle_Checkout_TestAccount_ResultSet *results = [[[TMBGoogle_Checkout_TestAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TestAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Checkout_TestAccount_Inputs*)newInputSet {
		return [[[TMBGoogle_Checkout_TestAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Touch Choreo.
 */
@implementation TMBGoogle_Drive_Files_Touch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file to update.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Touch Choreo.
 */
@implementation TMBGoogle_Drive_Files_Touch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Sets the file's updated time to the current server time.
 */
@implementation TMBGoogle_Drive_Files_Touch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Touch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Touch"] autorelease];
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
		TMBGoogle_Drive_Files_Touch_ResultSet *results = [[[TMBGoogle_Drive_Files_Touch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Touch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Touch_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Touch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateOrder Choreo.
 */
@implementation TMBGoogle_Checkout_CreateOrder_Inputs

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to checkout.google.com when running in production. Defaults to sandbox.google.com for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the ItemDescription input for this Choreo.
	*(string) The description of the shopping cart item
	 */
	-(void)setItemDescription:(NSString*)ItemDescription {
		[super setInput:@"ItemDescription" toValue:ItemDescription];
	}

	/*!
	 * Set the value of the ItemName input for this Choreo.
	*(string) A name of the shopping cart item
	 */
	-(void)setItemName:(NSString*)ItemName {
		[super setInput:@"ItemName" toValue:ItemName];
	}

	/*!
	 * Set the value of the MerchantId input for this Choreo.
	*(integer) The Merchant Id provided by Google
	 */
	-(void)setMerchantId:(NSString*)MerchantId {
		[super setInput:@"MerchantId" toValue:MerchantId];
	}

	/*!
	 * Set the value of the MerchantKey input for this Choreo.
	*(string) The Merchant Key provided by Google
	 */
	-(void)setMerchantKey:(NSString*)MerchantKey {
		[super setInput:@"MerchantKey" toValue:MerchantKey];
	}

	/*!
	 * Set the value of the Quanity input for this Choreo.
	*(integer) The quantity of the shopping cart item
	 */
	-(void)setQuanity:(NSString*)Quanity {
		[super setInput:@"Quanity" toValue:Quanity];
	}

	/*!
	 * Set the value of the ShippingMethod input for this Choreo.
	*(string) The shipping method for the order (i.e. SuperShip Ground)
	 */
	-(void)setShippingMethod:(NSString*)ShippingMethod {
		[super setInput:@"ShippingMethod" toValue:ShippingMethod];
	}

	/*!
	 * Set the value of the ShippingPrice input for this Choreo.
	*(decimal) The shipping price for the order
	 */
	-(void)setShippingPrice:(NSString*)ShippingPrice {
		[super setInput:@"ShippingPrice" toValue:ShippingPrice];
	}

	/*!
	 * Set the value of the UnitPrice input for this Choreo.
	*(decimal) The unit price of the item that is added to the shopping cart
	 */
	-(void)setUnitPrice:(NSString*)UnitPrice {
		[super setInput:@"UnitPrice" toValue:UnitPrice];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateOrder Choreo.
 */
@implementation TMBGoogle_Checkout_CreateOrder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Google.  Contains the redirect URL that a customer will use to complete the order.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Populates a shopping cart and sends order information to your merchant  account allowing a user to complete an order using Google Checkout.
 */
@implementation TMBGoogle_Checkout_CreateOrder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Checkout_CreateOrder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Checkout/CreateOrder"] autorelease];
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
		TMBGoogle_Checkout_CreateOrder_ResultSet *results = [[[TMBGoogle_Checkout_CreateOrder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateOrder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Checkout_CreateOrder_Inputs*)newInputSet {
		return [[[TMBGoogle_Checkout_CreateOrder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSetting Choreo.
 */
@implementation TMBGoogle_Calendar_GetSetting_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SettingID input for this Choreo.
	*(required, string) The unique ID for the setting to retrieve. Use the GetAllSettings Choreo to retrieve settings IDs.
	 */
	-(void)setSettingID:(NSString*)SettingID {
		[super setInput:@"SettingID" toValue:SettingID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSetting Choreo.
 */
@implementation TMBGoogle_Calendar_GetSetting_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Google. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a specifed setting for a Google Calendar account.
 */
@implementation TMBGoogle_Calendar_GetSetting

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Calendar_GetSetting Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Calendar/GetSetting"] autorelease];
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
		TMBGoogle_Calendar_GetSetting_ResultSet *results = [[[TMBGoogle_Calendar_GetSetting_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSetting Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Calendar_GetSetting_Inputs*)newInputSet {
		return [[[TMBGoogle_Calendar_GetSetting_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RefundOrder Choreo.
 */
@implementation TMBGoogle_Checkout_RefundOrder_Inputs

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(decimal) The amount to refund
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(string) The comment for the order refund
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Endpoint input for this Choreo.
	*(optional, string) Set to checkout.google.com when running in production. Defaults to sandbox.google.com for sandbox testing.
	 */
	-(void)setEndpoint:(NSString*)Endpoint {
		[super setInput:@"Endpoint" toValue:Endpoint];
	}

	/*!
	 * Set the value of the MerchantId input for this Choreo.
	*(integer) The Merchant Id provided by Google
	 */
	-(void)setMerchantId:(NSString*)MerchantId {
		[super setInput:@"MerchantId" toValue:MerchantId];
	}

	/*!
	 * Set the value of the MerchantKey input for this Choreo.
	*(string) The Merchant Key provided by Google
	 */
	-(void)setMerchantKey:(NSString*)MerchantKey {
		[super setInput:@"MerchantKey" toValue:MerchantKey];
	}

	/*!
	 * Set the value of the OrderNumber input for this Choreo.
	*(integer) The unique identifier for the order (There is an order number column in your Google Checkout Inbox).
	 */
	-(void)setOrderNumber:(NSString*)OrderNumber {
		[super setInput:@"OrderNumber" toValue:OrderNumber];
	}

	/*!
	 * Set the value of the Reason input for this Choreo.
	*(string) The reason for the refund
	 */
	-(void)setReason:(NSString*)Reason {
		[super setInput:@"Reason" toValue:Reason];
	}

	/*!
	 * Set the value of the SandboxMode input for this Choreo.
	*(optional, boolean) Set this flag to 1 when using this Choreo with the Google Checkout sandbox endpoint (i.e. sandbox.google.com). Defaults to 0.
	 */
	-(void)setSandboxMode:(NSString*)SandboxMode {
		[super setInput:@"SandboxMode" toValue:SandboxMode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefundOrder Choreo.
 */
@implementation TMBGoogle_Checkout_RefundOrder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ExecutionStatus" output from an execution of this Choreo.
	 * @return - NSString* Contains status information on the Choreo execution
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExecutionStatus {
		return [super getOutputByName:@"ExecutionStatus"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Google
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to refund an order that's been submitted to your Google Checkout merchant account.
 */
@implementation TMBGoogle_Checkout_RefundOrder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Checkout_RefundOrder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Checkout/RefundOrder"] autorelease];
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
		TMBGoogle_Checkout_RefundOrder_ResultSet *results = [[[TMBGoogle_Checkout_RefundOrder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RefundOrder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Checkout_RefundOrder_Inputs*)newInputSet {
		return [[[TMBGoogle_Checkout_RefundOrder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the List Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_List_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the List Choreo.
 */
@implementation TMBGoogle_Drive_Revisions_List_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists a file's revisions.
 */
@implementation TMBGoogle_Drive_Revisions_List

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Revisions_List Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Revisions/List"] autorelease];
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
		TMBGoogle_Drive_Revisions_List_ResultSet *results = [[[TMBGoogle_Drive_Revisions_List_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the List Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Revisions_List_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Revisions_List_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBGoogle_Plus_Comments_Get_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) Specifies a JavaScript function that will be passed the response data for using the API with JSONP.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment to get.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Used to specify fields to include in a partial response. This can be used to reduce the amount of data returned. See documentation for syntax rules.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the PrettyPrint input for this Choreo.
	*(optional, boolean) A flag used to pretty print the json response to make it more readable. Defaults to "true".
	 */
	-(void)setPrettyPrint:(NSString*)PrettyPrint {
		[super setInput:@"PrettyPrint" toValue:PrettyPrint];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the UserIP input for this Choreo.
	*(optional, string) Identifies the IP address of the end user for whom the API call is being made. Used to enforce per-user quotas.
	 */
	-(void)setUserIP:(NSString*)UserIP {
		[super setInput:@"UserIP" toValue:UserIP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBGoogle_Plus_Comments_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a given comment.
 */
@implementation TMBGoogle_Plus_Comments_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Plus_Comments_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Plus/Comments/Get"] autorelease];
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
		TMBGoogle_Plus_Comments_Get_ResultSet *results = [[[TMBGoogle_Plus_Comments_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Plus_Comments_Get_Inputs*)newInputSet {
		return [[[TMBGoogle_Plus_Comments_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateContact Choreo.
 */
@implementation TMBGoogle_Contacts_CreateContact_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The OAuth client ID provided by Google when you register your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The OAuth client secret provided by Google when you registered your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) The new contact's email address.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(conditional, string) The new contact's first name.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(conditional, string) The new contact's last name.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(optional, string) The phone number for the new contact. It's best to use the "(555) 123-4567" format.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) The refresh token retrieved in the last step of the OAuth process. This is used when an access token is expired or not provided.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateContact Choreo.
 */
@implementation TMBGoogle_Contacts_CreateContact_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (optional, string) The access token retrieved in the last step of the OAuth process. Access tokens that are expired will be refreshed and returned in the Choreo output.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "ContactID" output from an execution of this Choreo.
	 * @return - NSString* (string) The unique ID supplied by Google for the new user.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getContactID {
		return [super getOutputByName:@"ContactID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a new contact.
 */
@implementation TMBGoogle_Contacts_CreateContact

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Contacts_CreateContact Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Contacts/CreateContact"] autorelease];
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
		TMBGoogle_Contacts_CreateContact_ResultSet *results = [[[TMBGoogle_Contacts_CreateContact_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateContact Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Contacts_CreateContact_Inputs*)newInputSet {
		return [[[TMBGoogle_Contacts_CreateContact_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Insert_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a reply resource. The JSON string must contain a key for content or verb. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The ID of the comment.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Replies_Insert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a new reply to the given comment.
 */
@implementation TMBGoogle_Drive_Replies_Insert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Replies_Insert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Replies/Insert"] autorelease];
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
		TMBGoogle_Drive_Replies_Insert_ResultSet *results = [[[TMBGoogle_Drive_Replies_Insert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Insert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Replies_Insert_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Replies_Insert_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Insert_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(required, json) A JSON representation of fields in a permissions resource. The JSON string must contain keys for role, type, and value. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying a subset of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The ID of the file.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SendNotificationEmails input for this Choreo.
	*(optional, boolean) Whether to send notification emails. (Default: true).
	 */
	-(void)setSendNotificationEmails:(NSString*)SendNotificationEmails {
		[super setInput:@"SendNotificationEmails" toValue:SendNotificationEmails];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Insert Choreo.
 */
@implementation TMBGoogle_Drive_Permissions_Insert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Inserts a permission for a file.
 */
@implementation TMBGoogle_Drive_Permissions_Insert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Permissions_Insert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Permissions/Insert"] autorelease];
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
		TMBGoogle_Drive_Permissions_Insert_ResultSet *results = [[[TMBGoogle_Drive_Permissions_Insert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Insert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Permissions_Insert_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Permissions_Insert_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Update Choreo.
 */
@implementation TMBGoogle_Drive_Files_Update_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(conditional, json) A JSON representation of fields in a file resource. File metadata information (such as the title) can be updated using this input. See documentation for formatting examples.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(conditional, string) The Content-Type of the file that is being updated (i.e. image/jpeg). Required if modifying the file content.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the Convert input for this Choreo.
	*(optional, boolean) Whether to convert this file to the corresponding Google Docs format. (Default: false).
	 */
	-(void)setConvert:(NSString*)Convert {
		[super setInput:@"Convert" toValue:Convert];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Selector specifying which fields to include in a partial response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileContent input for this Choreo.
	*(conditional, string) The new Base64 encoded contents of the file that is being updated.
	 */
	-(void)setFileContent:(NSString*)FileContent {
		[super setInput:@"FileContent" toValue:FileContent];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file to update.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the OCR input for this Choreo.
	*(optional, boolean) Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads. (Default: false)
	 */
	-(void)setOCR:(NSString*)OCR {
		[super setInput:@"OCR" toValue:OCR];
	}

	/*!
	 * Set the value of the OcrLanguage input for this Choreo.
	*(optional, string) If ocr is true, hints at the language to use. Valid values are ISO 639-1 codes.
	 */
	-(void)setOcrLanguage:(NSString*)OcrLanguage {
		[super setInput:@"OcrLanguage" toValue:OcrLanguage];
	}

	/*!
	 * Set the value of the Pinned input for this Choreo.
	*(optional, boolean) Whether to pin the new revision. (Default: false).
	 */
	-(void)setPinned:(NSString*)Pinned {
		[super setInput:@"Pinned" toValue:Pinned];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SetModifiedDate input for this Choreo.
	*(optional, boolean) Whether to set the modified date with the supplied modified date.
	 */
	-(void)setSetModifiedDate:(NSString*)SetModifiedDate {
		[super setInput:@"SetModifiedDate" toValue:SetModifiedDate];
	}

	/*!
	 * Set the value of the SourceLanguage input for this Choreo.
	*(optional, string) The language of the original file to be translated.
	 */
	-(void)setSourceLanguage:(NSString*)SourceLanguage {
		[super setInput:@"SourceLanguage" toValue:SourceLanguage];
	}

	/*!
	 * Set the value of the TargetLanguage input for this Choreo.
	*(optional, string) Target language to translate the file to. If no sourceLanguage is provided, the API will attempt to detect the language.
	 */
	-(void)setTargetLanguage:(NSString*)TargetLanguage {
		[super setInput:@"TargetLanguage" toValue:TargetLanguage];
	}

	/*!
	 * Set the value of the TimedTextLanguage input for this Choreo.
	*(optional, string) The language of the timed text.
	 */
	-(void)setTimedTextLanguage:(NSString*)TimedTextLanguage {
		[super setInput:@"TimedTextLanguage" toValue:TimedTextLanguage];
	}

	/*!
	 * Set the value of the TimedTextTrackName input for this Choreo.
	*(optional, string) The timed text track name.
	 */
	-(void)setTimedTextTrackName:(NSString*)TimedTextTrackName {
		[super setInput:@"TimedTextTrackName" toValue:TimedTextTrackName];
	}

	/*!
	 * Set the value of the UpdateViewedDate input for this Choreo.
	*(optional, boolean) Whether to update the view date after successfully updating the file.
	 */
	-(void)setUpdateViewedDate:(NSString*)UpdateViewedDate {
		[super setInput:@"UpdateViewedDate" toValue:UpdateViewedDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to a vault file to upload. This can be used as an alternative to the FileContent input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Update Choreo.
 */
@implementation TMBGoogle_Drive_Files_Update_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates the metadata or content of an existing file.
 */
@implementation TMBGoogle_Drive_Files_Update

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGoogle_Drive_Files_Update Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Google/Drive/Files/Update"] autorelease];
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
		TMBGoogle_Drive_Files_Update_ResultSet *results = [[[TMBGoogle_Drive_Files_Update_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Update Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGoogle_Drive_Files_Update_Inputs*)newInputSet {
		return [[[TMBGoogle_Drive_Files_Update_Inputs alloc] init] autorelease];
	}
@end
	