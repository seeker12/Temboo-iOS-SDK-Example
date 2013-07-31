/*!
 * @header Temboo iOS SDK Utilities classes
 *
 * Execute Choreographies from the Temboo Utilities bundle.
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

/*! group TMBUtilities.Hashing.Checksum Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Checksum Choreo.
 */
@interface TMBUtilities_Hashing_Checksum_Inputs : TMBChoreographyInputSet
	-(void)setAlgorithm:(NSString*)Algorithm;
	-(void)setBase64DecodeValue:(NSString*)Base64DecodeValue;
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Checksum Choreo.
 */
@interface TMBUtilities_Hashing_Checksum_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getChecksum;	
@end

/*!
 * Returns a checksum of the specified text calculated using the specified algorithm. 
 */
@interface TMBUtilities_Hashing_Checksum : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Hashing_Checksum_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Hashing_Checksum Choreo */


/*! group TMBUtilities.Formatting.FormatDateParameters Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FormatDateParameters Choreo.
 */
@interface TMBUtilities_Formatting_FormatDateParameters_Inputs : TMBChoreographyInputSet
	-(void)setDay:(NSString*)Day;
	-(void)setHour:(NSString*)Hour;
	-(void)setMinute:(NSString*)Minute;
	-(void)setMonth:(NSString*)Month;
	-(void)setSecond:(NSString*)Second;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FormatDateParameters Choreo.
 */
@interface TMBUtilities_Formatting_FormatDateParameters_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getTimestamp;	
@end

/*!
 * Returns the specified date parameters as the number of milliseconds since January 1, 1970 (epoch time).
 */
@interface TMBUtilities_Formatting_FormatDateParameters : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Formatting_FormatDateParameters_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Formatting_FormatDateParameters Choreo */


/*! group TMBUtilities.Encoding.Base64Encode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Base64Encode Choreo.
 */
@interface TMBUtilities_Encoding_Base64Encode_Inputs : TMBChoreographyInputSet
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Base64Encode Choreo.
 */
@interface TMBUtilities_Encoding_Base64Encode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getBase64EncodedText;	
@end

/*!
 * Returns the specified text as a Base64 encoded string.
 */
@interface TMBUtilities_Encoding_Base64Encode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Encoding_Base64Encode_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Encoding_Base64Encode Choreo */


/*! group TMBUtilities.HTTP.Put Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Put Choreo.
 */
@interface TMBUtilities_HTTP_Put_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setPassword:(NSString*)Password;
	-(void)setRequestHeaders:(NSString*)RequestHeaders;
	-(void)setRequestParameters:(NSString*)RequestParameters;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Put Choreo.
 */
@interface TMBUtilities_HTTP_Put_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHTTPLog;
	-(NSString*)getResponseStatusCode;
	-(NSString*)getResponse;	
@end

/*!
 * Generates a HTTP PUT request.
 */
@interface TMBUtilities_HTTP_Put : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_HTTP_Put_Inputs*)newInputSet;
@end

/*! group TMBUtilities.HTTP_Put Choreo */


/*! group TMBUtilities.DataConversions.RSSToJSON Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RSSToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_RSSToJSON_Inputs : TMBChoreographyInputSet
	-(void)setRSSFeed:(NSString*)RSSFeed;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RSSToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_RSSToJSON_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specified RSS Feed, and converts it to JSON format.
 */
@interface TMBUtilities_DataConversions_RSSToJSON : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_RSSToJSON_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_RSSToJSON Choreo */


/*! group TMBUtilities.HTTP.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBUtilities_HTTP_Delete_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setRequestHeaders:(NSString*)RequestHeaders;
	-(void)setRequestParameters:(NSString*)RequestParameters;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBUtilities_HTTP_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHTTPLog;
	-(NSString*)getResponseStatusCode;
	-(NSString*)getResponse;	
@end

/*!
 * Generates a HTTP DELETE request.
 */
@interface TMBUtilities_HTTP_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_HTTP_Delete_Inputs*)newInputSet;
@end

/*! group TMBUtilities.HTTP_Delete Choreo */


/*! group TMBUtilities.Formatting.RemoveWhiteSpace Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveWhiteSpace Choreo.
 */
@interface TMBUtilities_Formatting_RemoveWhiteSpace_Inputs : TMBChoreographyInputSet
	-(void)setFormattedText:(NSString*)FormattedText;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveWhiteSpace Choreo.
 */
@interface TMBUtilities_Formatting_RemoveWhiteSpace_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCompactText;	
@end

/*!
 * Returns the specified formatted text as a compact string with no new lines, tabs, or preceding/trailing white space.
 */
@interface TMBUtilities_Formatting_RemoveWhiteSpace : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Formatting_RemoveWhiteSpace_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Formatting_RemoveWhiteSpace Choreo */


/*! group TMBUtilities.Hashing.HmacSHA1 Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HmacSHA1 Choreo.
 */
@interface TMBUtilities_Hashing_HmacSHA1_Inputs : TMBChoreographyInputSet
	-(void)setKey:(NSString*)Key;
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HmacSHA1 Choreo.
 */
@interface TMBUtilities_Hashing_HmacSHA1_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHmacSignature;	
@end

/*!
 * Generates a SHA1-encrypted HMAC signature for the specified message text using the specified secret key.
 */
@interface TMBUtilities_Hashing_HmacSHA1 : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Hashing_HmacSHA1_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Hashing_HmacSHA1 Choreo */


/*! group TMBUtilities.DataConversions.TSVToJSON Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TSVToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_TSVToJSON_Inputs : TMBChoreographyInputSet
	-(void)setTSV:(NSString*)TSV;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TSVToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_TSVToJSON_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getJSON;	
@end

/*!
 * Converts a TSV formatted file to JSON.
 */
@interface TMBUtilities_DataConversions_TSVToJSON : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_TSVToJSON_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_TSVToJSON Choreo */


/*! group TMBUtilities.DataConversions.XMLToCSV Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XMLToCSV Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToCSV_Inputs : TMBChoreographyInputSet
	-(void)setXML:(NSString*)XML;
	-(void)setPath:(NSString*)Path;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToCSV Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToCSV_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCSV;	
@end

/*!
 * Converts an XML file to CSV format.
 */
@interface TMBUtilities_DataConversions_XMLToCSV : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_XMLToCSV_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_XMLToCSV Choreo */


/*! group TMBUtilities.HTTP.Get Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@interface TMBUtilities_HTTP_Get_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setRequestHeaders:(NSString*)RequestHeaders;
	-(void)setRequestParameters:(NSString*)RequestParameters;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@interface TMBUtilities_HTTP_Get_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHTTPLog;
	-(NSString*)getResponseStatusCode;
	-(NSString*)getResponse;	
@end

/*!
 * Generates a HTTP GET request.
 */
@interface TMBUtilities_HTTP_Get : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_HTTP_Get_Inputs*)newInputSet;
@end

/*! group TMBUtilities.HTTP_Get Choreo */


/*! group TMBUtilities.DataConversions.XLSToXML Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XLSToXML Choreo.
 */
@interface TMBUtilities_DataConversions_XLSToXML_Inputs : TMBChoreographyInputSet
	-(void)setXLS:(NSString*)XLS;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XLSToXML Choreo.
 */
@interface TMBUtilities_DataConversions_XLSToXML_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getXML;	
@end

/*!
 * Converts Excel (.xls) formatted data to XML.
 */
@interface TMBUtilities_DataConversions_XLSToXML : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_XLSToXML_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_XLSToXML Choreo */


/*! group TMBUtilities.Encoding.HTMLUnescape Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HTMLUnescape Choreo.
 */
@interface TMBUtilities_Encoding_HTMLUnescape_Inputs : TMBChoreographyInputSet
	-(void)setEscapedHTML:(NSString*)EscapedHTML;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HTMLUnescape Choreo.
 */
@interface TMBUtilities_Encoding_HTMLUnescape_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getUnescapedHTML;	
@end

/*!
 * Replaces character entity names in the specified text with equivalent HTML markup characters.
 */
@interface TMBUtilities_Encoding_HTMLUnescape : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Encoding_HTMLUnescape_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Encoding_HTMLUnescape Choreo */


/*! group TMBUtilities.Encoding.HTMLEscape Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HTMLEscape Choreo.
 */
@interface TMBUtilities_Encoding_HTMLEscape_Inputs : TMBChoreographyInputSet
	-(void)setUnescapedHTML:(NSString*)UnescapedHTML;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HTMLEscape Choreo.
 */
@interface TMBUtilities_Encoding_HTMLEscape_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getEscapedHTML;	
@end

/*!
 * Replaces HTML markup characters in the specified text with equivalent character entity names. 
 */
@interface TMBUtilities_Encoding_HTMLEscape : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Encoding_HTMLEscape_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Encoding_HTMLEscape Choreo */


/*! group TMBUtilities.Validation.DutchPostalCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DutchPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_DutchPostalCodes_Inputs : TMBChoreographyInputSet
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DutchPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_DutchPostalCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given zip code matches the format expected for Dutch addresses.
 */
@interface TMBUtilities_Validation_DutchPostalCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_DutchPostalCodes_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_DutchPostalCodes Choreo */


/*! group TMBUtilities.DataConversions.JSONToXML Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the JSONToXML Choreo.
 */
@interface TMBUtilities_DataConversions_JSONToXML_Inputs : TMBChoreographyInputSet
	-(void)setJSON:(NSString*)JSON;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the JSONToXML Choreo.
 */
@interface TMBUtilities_DataConversions_JSONToXML_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getXML;	
@end

/*!
 * Converts data from JSON format to XML format.
 */
@interface TMBUtilities_DataConversions_JSONToXML : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_JSONToXML_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_JSONToXML Choreo */


/*! group TMBUtilities.DataConversions.XLSToCSV Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XLSToCSV Choreo.
 */
@interface TMBUtilities_DataConversions_XLSToCSV_Inputs : TMBChoreographyInputSet
	-(void)setXLS:(NSString*)XLS;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XLSToCSV Choreo.
 */
@interface TMBUtilities_DataConversions_XLSToCSV_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCSV;	
@end

/*!
 * Converts Excel (.xls) formatted data to CSV.
 */
@interface TMBUtilities_DataConversions_XLSToCSV : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_XLSToCSV_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_XLSToCSV Choreo */


/*! group TMBUtilities.Formatting.FormatTimestamp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FormatTimestamp Choreo.
 */
@interface TMBUtilities_Formatting_FormatTimestamp_Inputs : TMBChoreographyInputSet
	-(void)setAddDays:(NSString*)AddDays;
	-(void)setAddHours:(NSString*)AddHours;
	-(void)setAddMinutes:(NSString*)AddMinutes;
	-(void)setAddMonths:(NSString*)AddMonths;
	-(void)setAddSeconds:(NSString*)AddSeconds;
	-(void)setAddYears:(NSString*)AddYears;
	-(void)setFormat:(NSString*)Format;
	-(void)setLocaleCountry:(NSString*)LocaleCountry;
	-(void)setLocaleLanguage:(NSString*)LocaleLanguage;
	-(void)setLocaleVariant:(NSString*)LocaleVariant;
	-(void)setSetDay:(NSString*)SetDay;
	-(void)setSetHour:(NSString*)SetHour;
	-(void)setSetMinute:(NSString*)SetMinute;
	-(void)setSetMonth:(NSString*)SetMonth;
	-(void)setSetSecond:(NSString*)SetSecond;
	-(void)setSetYear:(NSString*)SetYear;
	-(void)setTimeZone:(NSString*)TimeZone;
	-(void)setTimestamp:(NSString*)Timestamp;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FormatTimestamp Choreo.
 */
@interface TMBUtilities_Formatting_FormatTimestamp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFormattedDate;	
@end

/*!
 * Returns the specified date serial number in the desired format.
 */
@interface TMBUtilities_Formatting_FormatTimestamp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Formatting_FormatTimestamp_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Formatting_FormatTimestamp Choreo */


/*! group TMBUtilities.Validation.CanadianPostalCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CanadianPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_CanadianPostalCodes_Inputs : TMBChoreographyInputSet
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CanadianPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_CanadianPostalCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given zip code matches the format expected for Canadian addresses.
 */
@interface TMBUtilities_Validation_CanadianPostalCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_CanadianPostalCodes_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_CanadianPostalCodes Choreo */


/*! group TMBUtilities.DataConversions.CSVToXLS Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CSVToXLS Choreo.
 */
@interface TMBUtilities_DataConversions_CSVToXLS_Inputs : TMBChoreographyInputSet
	-(void)setCSV:(NSString*)CSV;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CSVToXLS Choreo.
 */
@interface TMBUtilities_DataConversions_CSVToXLS_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getXLS;	
@end

/*!
 * Converts a CSV formatted file to Base64 encoded Excel data.
 */
@interface TMBUtilities_DataConversions_CSVToXLS : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_CSVToXLS_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_CSVToXLS Choreo */


/*! group TMBUtilities.DataConversions.CSVToXML Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CSVToXML Choreo.
 */
@interface TMBUtilities_DataConversions_CSVToXML_Inputs : TMBChoreographyInputSet
	-(void)setCSV:(NSString*)CSV;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CSVToXML Choreo.
 */
@interface TMBUtilities_DataConversions_CSVToXML_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getXML;	
@end

/*!
 * Converts a CSV formatted file to XML.
 */
@interface TMBUtilities_DataConversions_CSVToXML : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_CSVToXML_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_CSVToXML Choreo */


/*! group TMBUtilities.Email.SendEmail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendEmail Choreo.
 */
@interface TMBUtilities_Email_SendEmail_Inputs : TMBChoreographyInputSet
	-(void)setAttachmentName:(NSString*)AttachmentName;
	-(void)setAttachment:(NSString*)Attachment;
	-(void)setBCC:(NSString*)BCC;
	-(void)setCC:(NSString*)CC;
	-(void)setFromAddress:(NSString*)FromAddress;
	-(void)setMessageBody:(NSString*)MessageBody;
	-(void)setPassword:(NSString*)Password;
	-(void)setPort:(NSString*)Port;
	-(void)setServer:(NSString*)Server;
	-(void)setSubject:(NSString*)Subject;
	-(void)setToAddress:(NSString*)ToAddress;
	-(void)setUseSSL:(NSString*)UseSSL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendEmail Choreo.
 */
@interface TMBUtilities_Email_SendEmail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	
@end

/*!
 * Sends an email using a specified email server.
 */
@interface TMBUtilities_Email_SendEmail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Email_SendEmail_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Email_SendEmail Choreo */


/*! group TMBUtilities.DataConversions.XMLToXLS Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XMLToXLS Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToXLS_Inputs : TMBChoreographyInputSet
	-(void)setXML:(NSString*)XML;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToXLS Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToXLS_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getXLS;	
@end

/*!
 * Converts an XML file to a Base64 encoded Excel file.
 */
@interface TMBUtilities_DataConversions_XMLToXLS : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_XMLToXLS_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_XMLToXLS Choreo */


/*! group TMBUtilities.HTTP.Post Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Post Choreo.
 */
@interface TMBUtilities_HTTP_Post_Inputs : TMBChoreographyInputSet
	-(void)setRequestBody:(NSString*)RequestBody;
	-(void)setPassword:(NSString*)Password;
	-(void)setRequestHeaders:(NSString*)RequestHeaders;
	-(void)setRequestParameters:(NSString*)RequestParameters;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Post Choreo.
 */
@interface TMBUtilities_HTTP_Post_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHTTPLog;
	-(NSString*)getResponseStatusCode;
	-(NSString*)getResponse;	
@end

/*!
 * Generates a HTTP POST request.
 */
@interface TMBUtilities_HTTP_Post : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_HTTP_Post_Inputs*)newInputSet;
@end

/*! group TMBUtilities.HTTP_Post Choreo */


/*! group TMBUtilities.Validation.UKPostalCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UKPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_UKPostalCodes_Inputs : TMBChoreographyInputSet
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UKPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_UKPostalCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given zip code matches the format expected for UK addresses.
 */
@interface TMBUtilities_Validation_UKPostalCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_UKPostalCodes_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_UKPostalCodes Choreo */


/*! group TMBUtilities.Validation.EmailAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EmailAddress Choreo.
 */
@interface TMBUtilities_Validation_EmailAddress_Inputs : TMBChoreographyInputSet
	-(void)setEmailAddress:(NSString*)EmailAddress;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EmailAddress Choreo.
 */
@interface TMBUtilities_Validation_EmailAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given email address matches an expected standard pattern.
 */
@interface TMBUtilities_Validation_EmailAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_EmailAddress_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_EmailAddress Choreo */


/*! group TMBUtilities.Validation.PasswordCriteria Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PasswordCriteria Choreo.
 */
@interface TMBUtilities_Validation_PasswordCriteria_Inputs : TMBChoreographyInputSet
	-(void)setMaxLength:(NSString*)MaxLength;
	-(void)setMinLength:(NSString*)MinLength;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordCriteria Choreo.
 */
@interface TMBUtilities_Validation_PasswordCriteria_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given password matches a standard pattern for passwords.
 */
@interface TMBUtilities_Validation_PasswordCriteria : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_PasswordCriteria_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_PasswordCriteria Choreo */


/*! group TMBUtilities.DataConversions.XMLToJSON Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XMLToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToJSON_Inputs : TMBChoreographyInputSet
	-(void)setXML:(NSString*)XML;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToJSON_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getJSON;	
@end

/*!
 * Converts data from XML format to JSON format.
 */
@interface TMBUtilities_DataConversions_XMLToJSON : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_XMLToJSON_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_XMLToJSON Choreo */


/*! group TMBUtilities.Encoding.URLDecode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the URLDecode Choreo.
 */
@interface TMBUtilities_Encoding_URLDecode_Inputs : TMBChoreographyInputSet
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the URLDecode Choreo.
 */
@interface TMBUtilities_Encoding_URLDecode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getURLDecodedText;	
@end

/*!
 * Removes URL encoding from the specified text string.
 */
@interface TMBUtilities_Encoding_URLDecode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Encoding_URLDecode_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Encoding_URLDecode Choreo */


/*! group TMBUtilities.Validation.XML Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XML Choreo.
 */
@interface TMBUtilities_Validation_XML_Inputs : TMBChoreographyInputSet
	-(void)setXMLFile:(NSString*)XMLFile;
	-(void)setXSDFile:(NSString*)XSDFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XML Choreo.
 */
@interface TMBUtilities_Validation_XML_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getError;
	-(NSString*)getResult;	
@end

/*!
 * Validates XML for basic well-formedness and allows you to check XML against a specified XSD schema file.
 */
@interface TMBUtilities_Validation_XML : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_XML_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_XML Choreo */


/*! group TMBUtilities.Validation.RussianPostalCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RussianPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_RussianPostalCodes_Inputs : TMBChoreographyInputSet
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RussianPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_RussianPostalCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given zip code matches the format expected for Russian addresses.
 */
@interface TMBUtilities_Validation_RussianPostalCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_RussianPostalCodes_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_RussianPostalCodes Choreo */


/*! group TMBUtilities.DataConversions.CSVToJSON Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CSVToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_CSVToJSON_Inputs : TMBChoreographyInputSet
	-(void)setCSV:(NSString*)CSV;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CSVToJSON Choreo.
 */
@interface TMBUtilities_DataConversions_CSVToJSON_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getJSON;	
@end

/*!
 * Converts a CSV formatted file to JSON.
 */
@interface TMBUtilities_DataConversions_CSVToJSON : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_CSVToJSON_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_CSVToJSON Choreo */


/*! group TMBUtilities.Encoding.URLEncode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the URLEncode Choreo.
 */
@interface TMBUtilities_Encoding_URLEncode_Inputs : TMBChoreographyInputSet
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the URLEncode Choreo.
 */
@interface TMBUtilities_Encoding_URLEncode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getURLEncodedText;	
@end

/*!
 * Returns the specified text string in the application/x-www-form-urlencoded format.
 */
@interface TMBUtilities_Encoding_URLEncode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Encoding_URLEncode_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Encoding_URLEncode Choreo */


/*! group TMBUtilities.DataConversions.TSVToXML Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TSVToXML Choreo.
 */
@interface TMBUtilities_DataConversions_TSVToXML_Inputs : TMBChoreographyInputSet
	-(void)setTSV:(NSString*)TSV;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TSVToXML Choreo.
 */
@interface TMBUtilities_DataConversions_TSVToXML_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getXML;	
@end

/*!
 * Converts a TSV formatted file to XML.
 */
@interface TMBUtilities_DataConversions_TSVToXML : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_TSVToXML_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_TSVToXML Choreo */


/*! group TMBUtilities.Validation.GermanPostalCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GermanPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_GermanPostalCodes_Inputs : TMBChoreographyInputSet
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GermanPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_GermanPostalCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given zip code matches the format expected for German addresses.
 */
@interface TMBUtilities_Validation_GermanPostalCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_GermanPostalCodes_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_GermanPostalCodes Choreo */


/*! group TMBUtilities.Validation.USPostalCodes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the USPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_USPostalCodes_Inputs : TMBChoreographyInputSet
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the USPostalCodes Choreo.
 */
@interface TMBUtilities_Validation_USPostalCodes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getMatch;	
@end

/*!
 * Verifies that a given zip code matches the format expected for US addresses.
 */
@interface TMBUtilities_Validation_USPostalCodes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_Validation_USPostalCodes_Inputs*)newInputSet;
@end

/*! group TMBUtilities.Validation_USPostalCodes Choreo */


/*! group TMBUtilities.DataConversions.XMLToTSV Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the XMLToTSV Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToTSV_Inputs : TMBChoreographyInputSet
	-(void)setXML:(NSString*)XML;
	-(void)setPath:(NSString*)Path;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToTSV Choreo.
 */
@interface TMBUtilities_DataConversions_XMLToTSV_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getTSV;	
@end

/*!
 * Converts an XML file to TSV format (TAB-separated values).
 */
@interface TMBUtilities_DataConversions_XMLToTSV : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBUtilities_DataConversions_XMLToTSV_Inputs*)newInputSet;
@end

/*! group TMBUtilities.DataConversions_XMLToTSV Choreo */
