/*!
 * @TMBUtilities.m
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

#import "TMBUtilities.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Checksum Choreo.
 */
@implementation TMBUtilities_Hashing_Checksum_Inputs

	/*!
	 * Set the value of the Algorithm input for this Choreo.
	*(required, string) Algorithm used to calculate the checksum. Valid values are: FIX44,  MD5+BASE64, or MD5+HEX (the default). MD5+BASE64 and MD5+HEX return the result in Base64 and hexadecimal encoding, respectively.
	 */
	-(void)setAlgorithm:(NSString*)Algorithm {
		[super setInput:@"Algorithm" toValue:Algorithm];
	}

	/*!
	 * Set the value of the Base64DecodeValue input for this Choreo.
	*(optional, boolean) Setting this parameter to 1 indicates that the Text is Base64 encoded, and that the choreo should decode the value before calculating the checksum. Defaults to 0.
	 */
	-(void)setBase64DecodeValue:(NSString*)Base64DecodeValue {
		[super setInput:@"Base64DecodeValue" toValue:Base64DecodeValue];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text to return a checksum for.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Checksum Choreo.
 */
@implementation TMBUtilities_Hashing_Checksum_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Checksum" output from an execution of this Choreo.
	 * @return - NSString* (string) The checksum result.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getChecksum {
		return [super getOutputByName:@"Checksum"];
	}
	
@end

/*!
 * Returns a checksum of the specified text calculated using the specified algorithm. 
 */
@implementation TMBUtilities_Hashing_Checksum

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Hashing_Checksum Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Hashing/Checksum"] autorelease];
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
		TMBUtilities_Hashing_Checksum_ResultSet *results = [[[TMBUtilities_Hashing_Checksum_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Checksum Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Hashing_Checksum_Inputs*)newInputSet {
		return [[[TMBUtilities_Hashing_Checksum_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FormatDateParameters Choreo.
 */
@implementation TMBUtilities_Formatting_FormatDateParameters_Inputs

	/*!
	 * Set the value of the Day input for this Choreo.
	*(required, integer) Sets the day (1–31) of the timestamp.
	 */
	-(void)setDay:(NSString*)Day {
		[super setInput:@"Day" toValue:Day];
	}

	/*!
	 * Set the value of the Hour input for this Choreo.
	*(optional, integer) Sets the hours (0–23) of the timestamp.
	 */
	-(void)setHour:(NSString*)Hour {
		[super setInput:@"Hour" toValue:Hour];
	}

	/*!
	 * Set the value of the Minute input for this Choreo.
	*(optional, integer) Sets the minutes (0–59) of the timestamp.
	 */
	-(void)setMinute:(NSString*)Minute {
		[super setInput:@"Minute" toValue:Minute];
	}

	/*!
	 * Set the value of the Month input for this Choreo.
	*(required, integer) Sets the month (1–12) of the timestamp.
	 */
	-(void)setMonth:(NSString*)Month {
		[super setInput:@"Month" toValue:Month];
	}

	/*!
	 * Set the value of the Second input for this Choreo.
	*(optional, integer) Sets the seconds (0–59) of the timestamp.
	 */
	-(void)setSecond:(NSString*)Second {
		[super setInput:@"Second" toValue:Second];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(required, integer) Sets the year of the timestamp.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FormatDateParameters Choreo.
 */
@implementation TMBUtilities_Formatting_FormatDateParameters_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Timestamp" output from an execution of this Choreo.
	 * @return - NSString* (date) A number representing the specified date and time, expressed as the number of milliseconds since January 1, 1970 (epoch time). 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTimestamp {
		return [super getOutputByName:@"Timestamp"];
	}
	
@end

/*!
 * Returns the specified date parameters as the number of milliseconds since January 1, 1970 (epoch time).
 */
@implementation TMBUtilities_Formatting_FormatDateParameters

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Formatting_FormatDateParameters Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Formatting/FormatDateParameters"] autorelease];
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
		TMBUtilities_Formatting_FormatDateParameters_ResultSet *results = [[[TMBUtilities_Formatting_FormatDateParameters_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FormatDateParameters Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Formatting_FormatDateParameters_Inputs*)newInputSet {
		return [[[TMBUtilities_Formatting_FormatDateParameters_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Base64Encode Choreo.
 */
@implementation TMBUtilities_Encoding_Base64Encode_Inputs

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text that should be Base64 encoded.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Base64Encode Choreo.
 */
@implementation TMBUtilities_Encoding_Base64Encode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Base64EncodedText" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded text.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getBase64EncodedText {
		return [super getOutputByName:@"Base64EncodedText"];
	}
	
@end

/*!
 * Returns the specified text as a Base64 encoded string.
 */
@implementation TMBUtilities_Encoding_Base64Encode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Encoding_Base64Encode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Encoding/Base64Encode"] autorelease];
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
		TMBUtilities_Encoding_Base64Encode_ResultSet *results = [[[TMBUtilities_Encoding_Base64Encode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Base64Encode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Encoding_Base64Encode_Inputs*)newInputSet {
		return [[[TMBUtilities_Encoding_Base64Encode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Put Choreo.
 */
@implementation TMBUtilities_HTTP_Put_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(optional, multiline) The request body for the PUT request.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, string) A valid password. This is used if the request required basic authentication.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RequestHeaders input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
	 */
	-(void)setRequestHeaders:(NSString*)RequestHeaders {
		[super setInput:@"RequestHeaders" toValue:RequestHeaders];
	}

	/*!
	 * Set the value of the RequestParameters input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as HTTP parameters.
	 */
	-(void)setRequestParameters:(NSString*)RequestParameters {
		[super setInput:@"RequestParameters" toValue:RequestParameters];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The base URL for the request (including http:// or https://).
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) A valid username. This is used if the request required basic authentication.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Put Choreo.
 */
@implementation TMBUtilities_HTTP_Put_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HTTPLog" output from an execution of this Choreo.
	 * @return - NSString* (string) A log of the http request that has been generated.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHTTPLog {
		return [super getOutputByName:@"HTTPLog"];
	}

	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the server.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Generates a HTTP PUT request.
 */
@implementation TMBUtilities_HTTP_Put

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_HTTP_Put Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/HTTP/Put"] autorelease];
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
		TMBUtilities_HTTP_Put_ResultSet *results = [[[TMBUtilities_HTTP_Put_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Put Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_HTTP_Put_Inputs*)newInputSet {
		return [[[TMBUtilities_HTTP_Put_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RSSToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_RSSToJSON_Inputs

	/*!
	 * Set the value of the RSSFeed input for this Choreo.
	*(required, string) The URL for an RSS feed that you wish to convert to JSON.
	 */
	-(void)setRSSFeed:(NSString*)RSSFeed {
		[super setInput:@"RSSFeed" toValue:RSSFeed];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RSSToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_RSSToJSON_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The feed data in JSON format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specified RSS Feed, and converts it to JSON format.
 */
@implementation TMBUtilities_DataConversions_RSSToJSON

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_RSSToJSON Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/RSSToJSON"] autorelease];
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
		TMBUtilities_DataConversions_RSSToJSON_ResultSet *results = [[[TMBUtilities_DataConversions_RSSToJSON_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RSSToJSON Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_RSSToJSON_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_RSSToJSON_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBUtilities_HTTP_Delete_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, string) A valid password. This is used if the request required basic authentication.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RequestHeaders input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
	 */
	-(void)setRequestHeaders:(NSString*)RequestHeaders {
		[super setInput:@"RequestHeaders" toValue:RequestHeaders];
	}

	/*!
	 * Set the value of the RequestParameters input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as HTTP parameters.
	 */
	-(void)setRequestParameters:(NSString*)RequestParameters {
		[super setInput:@"RequestParameters" toValue:RequestParameters];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The base URL for the request (including http:// or https://).
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) A valid username. This is used if the request required basic authentication.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBUtilities_HTTP_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HTTPLog" output from an execution of this Choreo.
	 * @return - NSString* (string) A log of the http request that has been generated.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHTTPLog {
		return [super getOutputByName:@"HTTPLog"];
	}

	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the server.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Generates a HTTP DELETE request.
 */
@implementation TMBUtilities_HTTP_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_HTTP_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/HTTP/Delete"] autorelease];
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
		TMBUtilities_HTTP_Delete_ResultSet *results = [[[TMBUtilities_HTTP_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_HTTP_Delete_Inputs*)newInputSet {
		return [[[TMBUtilities_HTTP_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveWhiteSpace Choreo.
 */
@implementation TMBUtilities_Formatting_RemoveWhiteSpace_Inputs

	/*!
	 * Set the value of the FormattedText input for this Choreo.
	*(required, multiline) The formatted text that should have line breaks and tabs removed.
	 */
	-(void)setFormattedText:(NSString*)FormattedText {
		[super setInput:@"FormattedText" toValue:FormattedText];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveWhiteSpace Choreo.
 */
@implementation TMBUtilities_Formatting_RemoveWhiteSpace_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CompactText" output from an execution of this Choreo.
	 * @return - NSString* (string) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCompactText {
		return [super getOutputByName:@"CompactText"];
	}
	
@end

/*!
 * Returns the specified formatted text as a compact string with no new lines, tabs, or preceding/trailing white space.
 */
@implementation TMBUtilities_Formatting_RemoveWhiteSpace

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Formatting_RemoveWhiteSpace Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Formatting/RemoveWhiteSpace"] autorelease];
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
		TMBUtilities_Formatting_RemoveWhiteSpace_ResultSet *results = [[[TMBUtilities_Formatting_RemoveWhiteSpace_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveWhiteSpace Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Formatting_RemoveWhiteSpace_Inputs*)newInputSet {
		return [[[TMBUtilities_Formatting_RemoveWhiteSpace_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HmacSHA1 Choreo.
 */
@implementation TMBUtilities_Hashing_HmacSHA1_Inputs

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) The secret key used to generate the SHA1-encrypted HMAC signature.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text that should be SHA1-encrypted.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HmacSHA1 Choreo.
 */
@implementation TMBUtilities_Hashing_HmacSHA1_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HmacSignature" output from an execution of this Choreo.
	 * @return - NSString* (string) The HMAC Signature for the specified string.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHmacSignature {
		return [super getOutputByName:@"HmacSignature"];
	}
	
@end

/*!
 * Generates a SHA1-encrypted HMAC signature for the specified message text using the specified secret key.
 */
@implementation TMBUtilities_Hashing_HmacSHA1

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Hashing_HmacSHA1 Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Hashing/HmacSHA1"] autorelease];
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
		TMBUtilities_Hashing_HmacSHA1_ResultSet *results = [[[TMBUtilities_Hashing_HmacSHA1_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HmacSHA1 Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Hashing_HmacSHA1_Inputs*)newInputSet {
		return [[[TMBUtilities_Hashing_HmacSHA1_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TSVToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_TSVToJSON_Inputs

	/*!
	 * Set the value of the TSV input for this Choreo.
	*(required, multiline) The TSV file to convert to XML. Your TSV data must contain column names.
	 */
	-(void)setTSV:(NSString*)TSV {
		[super setInput:@"TSV" toValue:TSV];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TSVToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_TSVToJSON_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "JSON" output from an execution of this Choreo.
	 * @return - NSString* (json) The JSON formatted data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getJSON {
		return [super getOutputByName:@"JSON"];
	}
	
@end

/*!
 * Converts a TSV formatted file to JSON.
 */
@implementation TMBUtilities_DataConversions_TSVToJSON

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_TSVToJSON Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/TSVToJSON"] autorelease];
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
		TMBUtilities_DataConversions_TSVToJSON_ResultSet *results = [[[TMBUtilities_DataConversions_TSVToJSON_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TSVToJSON Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_TSVToJSON_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_TSVToJSON_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XMLToCSV Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToCSV_Inputs

	/*!
	 * Set the value of the XML input for this Choreo.
	*(required, xml) The XML file to convert to CSV data.
	 */
	-(void)setXML:(NSString*)XML {
		[super setInput:@"XML" toValue:XML];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) If your XML is not in "/rowset/row/column_name" format, specify a path to the rows. See documentation for examples.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToCSV Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToCSV_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CSV" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The CSV data generated from the XML input.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCSV {
		return [super getOutputByName:@"CSV"];
	}
	
@end

/*!
 * Converts an XML file to CSV format.
 */
@implementation TMBUtilities_DataConversions_XMLToCSV

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_XMLToCSV Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/XMLToCSV"] autorelease];
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
		TMBUtilities_DataConversions_XMLToCSV_ResultSet *results = [[[TMBUtilities_DataConversions_XMLToCSV_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XMLToCSV Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_XMLToCSV_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_XMLToCSV_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Get Choreo.
 */
@implementation TMBUtilities_HTTP_Get_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, string) A valid password. This is used if the request required basic authentication.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RequestHeaders input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
	 */
	-(void)setRequestHeaders:(NSString*)RequestHeaders {
		[super setInput:@"RequestHeaders" toValue:RequestHeaders];
	}

	/*!
	 * Set the value of the RequestParameters input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as http parameters.
	 */
	-(void)setRequestParameters:(NSString*)RequestParameters {
		[super setInput:@"RequestParameters" toValue:RequestParameters];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The base URL for the request (including http:// or https://).
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) A valid username. This is used if the request required basic authentication.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Get Choreo.
 */
@implementation TMBUtilities_HTTP_Get_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HTTPLog" output from an execution of this Choreo.
	 * @return - NSString* (string) A log of the http request that has been generated.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHTTPLog {
		return [super getOutputByName:@"HTTPLog"];
	}

	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the server.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Generates a HTTP GET request.
 */
@implementation TMBUtilities_HTTP_Get

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_HTTP_Get Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/HTTP/Get"] autorelease];
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
		TMBUtilities_HTTP_Get_ResultSet *results = [[[TMBUtilities_HTTP_Get_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Get Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_HTTP_Get_Inputs*)newInputSet {
		return [[[TMBUtilities_HTTP_Get_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XLSToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_XLSToXML_Inputs

	/*!
	 * Set the value of the XLS input for this Choreo.
	*(conditional, string) The base64-encoded contents of the Excel file that you want to convert to XML. Compatible with Excel 97-2003.
	 */
	-(void)setXLS:(NSString*)XLS {
		[super setInput:@"XLS" toValue:XLS];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A path to an Excel file that has been uploaded to the vault. You can use this input alias as an alternative to the ExcelFile input variable.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XLSToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_XLSToXML_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "XML" output from an execution of this Choreo.
	 * @return - NSString* (xml) The data in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getXML {
		return [super getOutputByName:@"XML"];
	}
	
@end

/*!
 * Converts Excel (.xls) formatted data to XML.
 */
@implementation TMBUtilities_DataConversions_XLSToXML

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_XLSToXML Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/XLSToXML"] autorelease];
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
		TMBUtilities_DataConversions_XLSToXML_ResultSet *results = [[[TMBUtilities_DataConversions_XLSToXML_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XLSToXML Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_XLSToXML_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_XLSToXML_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HTMLUnescape Choreo.
 */
@implementation TMBUtilities_Encoding_HTMLUnescape_Inputs

	/*!
	 * Set the value of the EscapedHTML input for this Choreo.
	*(required, string) The escaped HTML that should be unescaped.
	 */
	-(void)setEscapedHTML:(NSString*)EscapedHTML {
		[super setInput:@"EscapedHTML" toValue:EscapedHTML];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HTMLUnescape Choreo.
 */
@implementation TMBUtilities_Encoding_HTMLUnescape_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "UnescapedHTML" output from an execution of this Choreo.
	 * @return - NSString* (string) The unescaped HTML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUnescapedHTML {
		return [super getOutputByName:@"UnescapedHTML"];
	}
	
@end

/*!
 * Replaces character entity names in the specified text with equivalent HTML markup characters.
 */
@implementation TMBUtilities_Encoding_HTMLUnescape

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Encoding_HTMLUnescape Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Encoding/HTMLUnescape"] autorelease];
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
		TMBUtilities_Encoding_HTMLUnescape_ResultSet *results = [[[TMBUtilities_Encoding_HTMLUnescape_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HTMLUnescape Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Encoding_HTMLUnescape_Inputs*)newInputSet {
		return [[[TMBUtilities_Encoding_HTMLUnescape_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HTMLEscape Choreo.
 */
@implementation TMBUtilities_Encoding_HTMLEscape_Inputs

	/*!
	 * Set the value of the UnescapedHTML input for this Choreo.
	*(required, string) The HTML that needs to be escaped.
	 */
	-(void)setUnescapedHTML:(NSString*)UnescapedHTML {
		[super setInput:@"UnescapedHTML" toValue:UnescapedHTML];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HTMLEscape Choreo.
 */
@implementation TMBUtilities_Encoding_HTMLEscape_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "EscapedHTML" output from an execution of this Choreo.
	 * @return - NSString* (string) The escaped HTML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getEscapedHTML {
		return [super getOutputByName:@"EscapedHTML"];
	}
	
@end

/*!
 * Replaces HTML markup characters in the specified text with equivalent character entity names. 
 */
@implementation TMBUtilities_Encoding_HTMLEscape

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Encoding_HTMLEscape Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Encoding/HTMLEscape"] autorelease];
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
		TMBUtilities_Encoding_HTMLEscape_ResultSet *results = [[[TMBUtilities_Encoding_HTMLEscape_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HTMLEscape Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Encoding_HTMLEscape_Inputs*)newInputSet {
		return [[[TMBUtilities_Encoding_HTMLEscape_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DutchPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_DutchPostalCodes_Inputs

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(required, string) The zip code to validate.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DutchPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_DutchPostalCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given zip code matches the format expected for Dutch addresses.
 */
@implementation TMBUtilities_Validation_DutchPostalCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_DutchPostalCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/DutchPostalCodes"] autorelease];
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
		TMBUtilities_Validation_DutchPostalCodes_ResultSet *results = [[[TMBUtilities_Validation_DutchPostalCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DutchPostalCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_DutchPostalCodes_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_DutchPostalCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the JSONToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_JSONToXML_Inputs

	/*!
	 * Set the value of the JSON input for this Choreo.
	*(required, json) The JSON data that you want to convert to XML.
	 */
	-(void)setJSON:(NSString*)JSON {
		[super setInput:@"JSON" toValue:JSON];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the JSONToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_JSONToXML_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "XML" output from an execution of this Choreo.
	 * @return - NSString* (xml) The converted data in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getXML {
		return [super getOutputByName:@"XML"];
	}
	
@end

/*!
 * Converts data from JSON format to XML format.
 */
@implementation TMBUtilities_DataConversions_JSONToXML

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_JSONToXML Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/JSONToXML"] autorelease];
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
		TMBUtilities_DataConversions_JSONToXML_ResultSet *results = [[[TMBUtilities_DataConversions_JSONToXML_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the JSONToXML Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_JSONToXML_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_JSONToXML_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XLSToCSV Choreo.
 */
@implementation TMBUtilities_DataConversions_XLSToCSV_Inputs

	/*!
	 * Set the value of the XLS input for this Choreo.
	*(conditional, string) The base64-encoded contents of the Excel file that you want to convert to CSV format. Compatible with Excel 97-2003.
	 */
	-(void)setXLS:(NSString*)XLS {
		[super setInput:@"XLS" toValue:XLS];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A path to an Excel file you've stored in the Vault. This can be used as an alternative to the ExcelFile input variable.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XLSToCSV Choreo.
 */
@implementation TMBUtilities_DataConversions_XLSToCSV_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CSV" output from an execution of this Choreo.
	 * @return - NSString* (string) The CSV formatted data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCSV {
		return [super getOutputByName:@"CSV"];
	}
	
@end

/*!
 * Converts Excel (.xls) formatted data to CSV.
 */
@implementation TMBUtilities_DataConversions_XLSToCSV

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_XLSToCSV Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/XLSToCSV"] autorelease];
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
		TMBUtilities_DataConversions_XLSToCSV_ResultSet *results = [[[TMBUtilities_DataConversions_XLSToCSV_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XLSToCSV Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_XLSToCSV_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_XLSToCSV_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FormatTimestamp Choreo.
 */
@implementation TMBUtilities_Formatting_FormatTimestamp_Inputs

	/*!
	 * Set the value of the AddDays input for this Choreo.
	*(optional, integer) Adds the specified number of days to the specified date serial number. A negative number will subtract.
	 */
	-(void)setAddDays:(NSString*)AddDays {
		[super setInput:@"AddDays" toValue:AddDays];
	}

	/*!
	 * Set the value of the AddHours input for this Choreo.
	*(optional, integer) Adds the specified number of hours to the specified date serial number. A negative number will subtract.
	 */
	-(void)setAddHours:(NSString*)AddHours {
		[super setInput:@"AddHours" toValue:AddHours];
	}

	/*!
	 * Set the value of the AddMinutes input for this Choreo.
	*(optional, integer) Adds the specified number of minutes to the specified date serial number. A negative number will subtract.
	 */
	-(void)setAddMinutes:(NSString*)AddMinutes {
		[super setInput:@"AddMinutes" toValue:AddMinutes];
	}

	/*!
	 * Set the value of the AddMonths input for this Choreo.
	*(optional, integer) Adds the specified number of months to the specified date serial number. A negative number will subtract.
	 */
	-(void)setAddMonths:(NSString*)AddMonths {
		[super setInput:@"AddMonths" toValue:AddMonths];
	}

	/*!
	 * Set the value of the AddSeconds input for this Choreo.
	*(optional, integer) Adds the specified number of seconds to the specified date serial number. A negative number will subtract.
	 */
	-(void)setAddSeconds:(NSString*)AddSeconds {
		[super setInput:@"AddSeconds" toValue:AddSeconds];
	}

	/*!
	 * Set the value of the AddYears input for this Choreo.
	*(optional, integer) Adds the specified number of years to the specified date serial number. A negative number will subtract.
	 */
	-(void)setAddYears:(NSString*)AddYears {
		[super setInput:@"AddYears" toValue:AddYears];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(conditional, string) The format that the timestamp should be in. Java SimpleDateFormat conventions are supported. Defaults to "yyyy-MM-dd'T'HH:mm:ss.SSSZ".
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the LocaleCountry input for this Choreo.
	*(optional, string) An ISO country code to specify locale.
	 */
	-(void)setLocaleCountry:(NSString*)LocaleCountry {
		[super setInput:@"LocaleCountry" toValue:LocaleCountry];
	}

	/*!
	 * Set the value of the LocaleLanguage input for this Choreo.
	*(optional, string) An ISO language code to specify locale.
	 */
	-(void)setLocaleLanguage:(NSString*)LocaleLanguage {
		[super setInput:@"LocaleLanguage" toValue:LocaleLanguage];
	}

	/*!
	 * Set the value of the LocaleVariant input for this Choreo.
	*(optional, string) A local variant code such as "NY" to add additional context for a locale.
	 */
	-(void)setLocaleVariant:(NSString*)LocaleVariant {
		[super setInput:@"LocaleVariant" toValue:LocaleVariant];
	}

	/*!
	 * Set the value of the SetDay input for this Choreo.
	*(optional, integer) Sets the day of month (1–31) of the specified date serial number.
	 */
	-(void)setSetDay:(NSString*)SetDay {
		[super setInput:@"SetDay" toValue:SetDay];
	}

	/*!
	 * Set the value of the SetHour input for this Choreo.
	*(optional, integer) Sets the hours (0–23) of the specified date serial number.
	 */
	-(void)setSetHour:(NSString*)SetHour {
		[super setInput:@"SetHour" toValue:SetHour];
	}

	/*!
	 * Set the value of the SetMinute input for this Choreo.
	*(optional, integer) Sets the minutes (0–59) of the specified date serial number.
	 */
	-(void)setSetMinute:(NSString*)SetMinute {
		[super setInput:@"SetMinute" toValue:SetMinute];
	}

	/*!
	 * Set the value of the SetMonth input for this Choreo.
	*(optional, integer) Sets the month (1–12) of the specified date serial number.
	 */
	-(void)setSetMonth:(NSString*)SetMonth {
		[super setInput:@"SetMonth" toValue:SetMonth];
	}

	/*!
	 * Set the value of the SetSecond input for this Choreo.
	*(optional, integer) Sets the seconds (0–59) of the specified date serial number.
	 */
	-(void)setSetSecond:(NSString*)SetSecond {
		[super setInput:@"SetSecond" toValue:SetSecond];
	}

	/*!
	 * Set the value of the SetYear input for this Choreo.
	*(optional, integer) Sets the year (such as 1989) of the specified date serial number.
	 */
	-(void)setSetYear:(NSString*)SetYear {
		[super setInput:@"SetYear" toValue:SetYear];
	}

	/*!
	 * Set the value of the TimeZone input for this Choreo.
	*(optional, string) The timezone to use for the date formatting function. Defaults to UTC.
	 */
	-(void)setTimeZone:(NSString*)TimeZone {
		[super setInput:@"TimeZone" toValue:TimeZone];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(conditional, date) A number representing the current date and time, expressed as the number of milliseconds since January 1, 1970 (epoch time).
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FormatTimestamp Choreo.
 */
@implementation TMBUtilities_Formatting_FormatTimestamp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "FormattedDate" output from an execution of this Choreo.
	 * @return - NSString* (date) The formatted version of the timestamp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getFormattedDate {
		return [super getOutputByName:@"FormattedDate"];
	}
	
@end

/*!
 * Returns the specified date serial number in the desired format.
 */
@implementation TMBUtilities_Formatting_FormatTimestamp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Formatting_FormatTimestamp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Formatting/FormatTimestamp"] autorelease];
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
		TMBUtilities_Formatting_FormatTimestamp_ResultSet *results = [[[TMBUtilities_Formatting_FormatTimestamp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FormatTimestamp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Formatting_FormatTimestamp_Inputs*)newInputSet {
		return [[[TMBUtilities_Formatting_FormatTimestamp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CanadianPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_CanadianPostalCodes_Inputs

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(required, string) The zip code to validate.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CanadianPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_CanadianPostalCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given zip code matches the format expected for Canadian addresses.
 */
@implementation TMBUtilities_Validation_CanadianPostalCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_CanadianPostalCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/CanadianPostalCodes"] autorelease];
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
		TMBUtilities_Validation_CanadianPostalCodes_ResultSet *results = [[[TMBUtilities_Validation_CanadianPostalCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CanadianPostalCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_CanadianPostalCodes_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_CanadianPostalCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CSVToXLS Choreo.
 */
@implementation TMBUtilities_DataConversions_CSVToXLS_Inputs

	/*!
	 * Set the value of the CSV input for this Choreo.
	*(conditional, multiline) The CSV data you want to convert to XLS format. Required unless using the VaultFile input alias (an advanced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setCSV:(NSString*)CSV {
		[super setInput:@"CSV" toValue:CSV];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A path to a CSV file you've stored in the Vault. This can be used as an alternative to the CSVFile input variable.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CSVToXLS Choreo.
 */
@implementation TMBUtilities_DataConversions_CSVToXLS_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "XLS" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded Excel data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getXLS {
		return [super getOutputByName:@"XLS"];
	}
	
@end

/*!
 * Converts a CSV formatted file to Base64 encoded Excel data.
 */
@implementation TMBUtilities_DataConversions_CSVToXLS

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_CSVToXLS Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/CSVToXLS"] autorelease];
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
		TMBUtilities_DataConversions_CSVToXLS_ResultSet *results = [[[TMBUtilities_DataConversions_CSVToXLS_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CSVToXLS Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_CSVToXLS_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_CSVToXLS_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CSVToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_CSVToXML_Inputs

	/*!
	 * Set the value of the CSV input for this Choreo.
	*(required, multiline) The CSV file to convert to XML. Your CSV data must contain column names.
	 */
	-(void)setCSV:(NSString*)CSV {
		[super setInput:@"CSV" toValue:CSV];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CSVToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_CSVToXML_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "XML" output from an execution of this Choreo.
	 * @return - NSString* (xml) The XML formatted data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getXML {
		return [super getOutputByName:@"XML"];
	}
	
@end

/*!
 * Converts a CSV formatted file to XML.
 */
@implementation TMBUtilities_DataConversions_CSVToXML

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_CSVToXML Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/CSVToXML"] autorelease];
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
		TMBUtilities_DataConversions_CSVToXML_ResultSet *results = [[[TMBUtilities_DataConversions_CSVToXML_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CSVToXML Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_CSVToXML_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_CSVToXML_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendEmail Choreo.
 */
@implementation TMBUtilities_Email_SendEmail_Inputs

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
	*(required, password) The password for your email account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Port input for this Choreo.
	*(required, integer) Specify the port number (i.e. 25 or 465).
	 */
	-(void)setPort:(NSString*)Port {
		[super setInput:@"Port" toValue:Port];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The name or IP address of the email server.
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
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
	 * Set the value of the UseSSL input for this Choreo.
	*(optional, boolean) Set to 1 to connect over SSL. Set to 0 for no SSL. Defaults to 1.
	 */
	-(void)setUseSSL:(NSString*)UseSSL {
		[super setInput:@"UseSSL" toValue:UseSSL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your username for your email account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendEmail Choreo.
 */
@implementation TMBUtilities_Email_SendEmail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	
@end

/*!
 * Sends an email using a specified email server.
 */
@implementation TMBUtilities_Email_SendEmail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Email_SendEmail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Email/SendEmail"] autorelease];
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
		TMBUtilities_Email_SendEmail_ResultSet *results = [[[TMBUtilities_Email_SendEmail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendEmail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Email_SendEmail_Inputs*)newInputSet {
		return [[[TMBUtilities_Email_SendEmail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XMLToXLS Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToXLS_Inputs

	/*!
	 * Set the value of the XML input for this Choreo.
	*(required, xml) The XML file you want to convert to XLS format. See documentation for information on the required XML schema.
	 */
	-(void)setXML:(NSString*)XML {
		[super setInput:@"XML" toValue:XML];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToXLS Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToXLS_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "XLS" output from an execution of this Choreo.
	 * @return - NSString* The Base64 encoded Excel data .
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getXLS {
		return [super getOutputByName:@"XLS"];
	}
	
@end

/*!
 * Converts an XML file to a Base64 encoded Excel file.
 */
@implementation TMBUtilities_DataConversions_XMLToXLS

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_XMLToXLS Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/XMLToXLS"] autorelease];
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
		TMBUtilities_DataConversions_XMLToXLS_ResultSet *results = [[[TMBUtilities_DataConversions_XMLToXLS_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XMLToXLS Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_XMLToXLS_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_XMLToXLS_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Post Choreo.
 */
@implementation TMBUtilities_HTTP_Post_Inputs

	/*!
	 * Set the value of the RequestBody input for this Choreo.
	*(optional, multiline) The request body for the POST request.
	 */
	-(void)setRequestBody:(NSString*)RequestBody {
		[super setInput:@"RequestBody" toValue:RequestBody];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(optional, string) A valid password. This is used if the request required basic authentication.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RequestHeaders input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
	 */
	-(void)setRequestHeaders:(NSString*)RequestHeaders {
		[super setInput:@"RequestHeaders" toValue:RequestHeaders];
	}

	/*!
	 * Set the value of the RequestParameters input for this Choreo.
	*(optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as http parameters.
	 */
	-(void)setRequestParameters:(NSString*)RequestParameters {
		[super setInput:@"RequestParameters" toValue:RequestParameters];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The base URL for the request (including http:// or https://).
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) A valid username. This is used if the request required basic authentication.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Post Choreo.
 */
@implementation TMBUtilities_HTTP_Post_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HTTPLog" output from an execution of this Choreo.
	 * @return - NSString* (string) A log of the http request that has been generated.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHTTPLog {
		return [super getOutputByName:@"HTTPLog"];
	}

	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The response status code.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the server.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Generates a HTTP POST request.
 */
@implementation TMBUtilities_HTTP_Post

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_HTTP_Post Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/HTTP/Post"] autorelease];
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
		TMBUtilities_HTTP_Post_ResultSet *results = [[[TMBUtilities_HTTP_Post_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Post Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_HTTP_Post_Inputs*)newInputSet {
		return [[[TMBUtilities_HTTP_Post_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UKPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_UKPostalCodes_Inputs

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(required, string) The zip code to validate. Letters must be in uppercase to be valid.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UKPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_UKPostalCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given zip code matches the format expected for UK addresses.
 */
@implementation TMBUtilities_Validation_UKPostalCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_UKPostalCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/UKPostalCodes"] autorelease];
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
		TMBUtilities_Validation_UKPostalCodes_ResultSet *results = [[[TMBUtilities_Validation_UKPostalCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UKPostalCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_UKPostalCodes_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_UKPostalCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EmailAddress Choreo.
 */
@implementation TMBUtilities_Validation_EmailAddress_Inputs

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The email address to validate.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EmailAddress Choreo.
 */
@implementation TMBUtilities_Validation_EmailAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given email address matches an expected standard pattern.
 */
@implementation TMBUtilities_Validation_EmailAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_EmailAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/EmailAddress"] autorelease];
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
		TMBUtilities_Validation_EmailAddress_ResultSet *results = [[[TMBUtilities_Validation_EmailAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EmailAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_EmailAddress_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_EmailAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PasswordCriteria Choreo.
 */
@implementation TMBUtilities_Validation_PasswordCriteria_Inputs

	/*!
	 * Set the value of the MaxLength input for this Choreo.
	*(optional, integer) The max length you want to allow for the password. Defaults to 14.
	 */
	-(void)setMaxLength:(NSString*)MaxLength {
		[super setInput:@"MaxLength" toValue:MaxLength];
	}

	/*!
	 * Set the value of the MinLength input for this Choreo.
	*(optional, integer) The minimum length you want to allow for the password. Defaults to 6.
	 */
	-(void)setMinLength:(NSString*)MinLength {
		[super setInput:@"MinLength" toValue:MinLength];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The password to validate.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordCriteria Choreo.
 */
@implementation TMBUtilities_Validation_PasswordCriteria_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given password matches a standard pattern for passwords.
 */
@implementation TMBUtilities_Validation_PasswordCriteria

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_PasswordCriteria Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/PasswordCriteria"] autorelease];
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
		TMBUtilities_Validation_PasswordCriteria_ResultSet *results = [[[TMBUtilities_Validation_PasswordCriteria_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PasswordCriteria Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_PasswordCriteria_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_PasswordCriteria_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XMLToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToJSON_Inputs

	/*!
	 * Set the value of the XML input for this Choreo.
	*(required, xml) The XML file that you want to convert to JSON format.
	 */
	-(void)setXML:(NSString*)XML {
		[super setInput:@"XML" toValue:XML];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToJSON_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "JSON" output from an execution of this Choreo.
	 * @return - NSString* (json) The converted data in JSON format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getJSON {
		return [super getOutputByName:@"JSON"];
	}
	
@end

/*!
 * Converts data from XML format to JSON format.
 */
@implementation TMBUtilities_DataConversions_XMLToJSON

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_XMLToJSON Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/XMLToJSON"] autorelease];
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
		TMBUtilities_DataConversions_XMLToJSON_ResultSet *results = [[[TMBUtilities_DataConversions_XMLToJSON_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XMLToJSON Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_XMLToJSON_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_XMLToJSON_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the URLDecode Choreo.
 */
@implementation TMBUtilities_Encoding_URLDecode_Inputs

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text that should be URL decoded.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the URLDecode Choreo.
 */
@implementation TMBUtilities_Encoding_URLDecode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "URLDecodedText" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL decoded text.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURLDecodedText {
		return [super getOutputByName:@"URLDecodedText"];
	}
	
@end

/*!
 * Removes URL encoding from the specified text string.
 */
@implementation TMBUtilities_Encoding_URLDecode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Encoding_URLDecode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Encoding/URLDecode"] autorelease];
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
		TMBUtilities_Encoding_URLDecode_ResultSet *results = [[[TMBUtilities_Encoding_URLDecode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the URLDecode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Encoding_URLDecode_Inputs*)newInputSet {
		return [[[TMBUtilities_Encoding_URLDecode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XML Choreo.
 */
@implementation TMBUtilities_Validation_XML_Inputs

	/*!
	 * Set the value of the XMLFile input for this Choreo.
	*(required, xml) The XML file you want to validate.
	 */
	-(void)setXMLFile:(NSString*)XMLFile {
		[super setInput:@"XMLFile" toValue:XMLFile];
	}

	/*!
	 * Set the value of the XSDFile input for this Choreo.
	*(optional, xml) The XSD file to validate an XML file against.
	 */
	-(void)setXSDFile:(NSString*)XSDFile {
		[super setInput:@"XSDFile" toValue:XSDFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XML Choreo.
 */
@implementation TMBUtilities_Validation_XML_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Error" output from an execution of this Choreo.
	 * @return - NSString* (string) The error description that is generated if a validation error occurs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getError {
		return [super getOutputByName:@"Error"];
	}

	/*!
	 * Retrieve the value of the "Result" output from an execution of this Choreo.
	 * @return - NSString* (string) The result of the validation. Returns the string "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResult {
		return [super getOutputByName:@"Result"];
	}
	
@end

/*!
 * Validates XML for basic well-formedness and allows you to check XML against a specified XSD schema file.
 */
@implementation TMBUtilities_Validation_XML

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_XML Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/XML"] autorelease];
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
		TMBUtilities_Validation_XML_ResultSet *results = [[[TMBUtilities_Validation_XML_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XML Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_XML_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_XML_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RussianPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_RussianPostalCodes_Inputs

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(required, string) The zip code to validate.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RussianPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_RussianPostalCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given zip code matches the format expected for Russian addresses.
 */
@implementation TMBUtilities_Validation_RussianPostalCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_RussianPostalCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/RussianPostalCodes"] autorelease];
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
		TMBUtilities_Validation_RussianPostalCodes_ResultSet *results = [[[TMBUtilities_Validation_RussianPostalCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RussianPostalCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_RussianPostalCodes_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_RussianPostalCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CSVToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_CSVToJSON_Inputs

	/*!
	 * Set the value of the CSV input for this Choreo.
	*(required, multiline) The CSV file to convert to XML. Your CSV data must contain column names.
	 */
	-(void)setCSV:(NSString*)CSV {
		[super setInput:@"CSV" toValue:CSV];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CSVToJSON Choreo.
 */
@implementation TMBUtilities_DataConversions_CSVToJSON_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "JSON" output from an execution of this Choreo.
	 * @return - NSString* (json) The JSON formatted data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getJSON {
		return [super getOutputByName:@"JSON"];
	}
	
@end

/*!
 * Converts a CSV formatted file to JSON.
 */
@implementation TMBUtilities_DataConversions_CSVToJSON

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_CSVToJSON Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/CSVToJSON"] autorelease];
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
		TMBUtilities_DataConversions_CSVToJSON_ResultSet *results = [[[TMBUtilities_DataConversions_CSVToJSON_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CSVToJSON Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_CSVToJSON_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_CSVToJSON_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the URLEncode Choreo.
 */
@implementation TMBUtilities_Encoding_URLEncode_Inputs

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text that should be URL encoded.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the URLEncode Choreo.
 */
@implementation TMBUtilities_Encoding_URLEncode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "URLEncodedText" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL encoded text.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURLEncodedText {
		return [super getOutputByName:@"URLEncodedText"];
	}
	
@end

/*!
 * Returns the specified text string in the application/x-www-form-urlencoded format.
 */
@implementation TMBUtilities_Encoding_URLEncode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Encoding_URLEncode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Encoding/URLEncode"] autorelease];
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
		TMBUtilities_Encoding_URLEncode_ResultSet *results = [[[TMBUtilities_Encoding_URLEncode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the URLEncode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Encoding_URLEncode_Inputs*)newInputSet {
		return [[[TMBUtilities_Encoding_URLEncode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TSVToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_TSVToXML_Inputs

	/*!
	 * Set the value of the TSV input for this Choreo.
	*(required, multiline) The TSV file to convert to XML. Your TSV data must contain column names.
	 */
	-(void)setTSV:(NSString*)TSV {
		[super setInput:@"TSV" toValue:TSV];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TSVToXML Choreo.
 */
@implementation TMBUtilities_DataConversions_TSVToXML_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "XML" output from an execution of this Choreo.
	 * @return - NSString* (xml) The XML formatted data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getXML {
		return [super getOutputByName:@"XML"];
	}
	
@end

/*!
 * Converts a TSV formatted file to XML.
 */
@implementation TMBUtilities_DataConversions_TSVToXML

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_TSVToXML Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/TSVToXML"] autorelease];
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
		TMBUtilities_DataConversions_TSVToXML_ResultSet *results = [[[TMBUtilities_DataConversions_TSVToXML_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TSVToXML Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_TSVToXML_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_TSVToXML_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GermanPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_GermanPostalCodes_Inputs

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(required, string) The zip code to validate.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GermanPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_GermanPostalCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match -- "valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given zip code matches the format expected for German addresses.
 */
@implementation TMBUtilities_Validation_GermanPostalCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_GermanPostalCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/GermanPostalCodes"] autorelease];
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
		TMBUtilities_Validation_GermanPostalCodes_ResultSet *results = [[[TMBUtilities_Validation_GermanPostalCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GermanPostalCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_GermanPostalCodes_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_GermanPostalCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the USPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_USPostalCodes_Inputs

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(required, string) The zip code to validate.
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the USPostalCodes Choreo.
 */
@implementation TMBUtilities_Validation_USPostalCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Match" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a string indicating the result of the match --"valid" or "invalid".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getMatch {
		return [super getOutputByName:@"Match"];
	}
	
@end

/*!
 * Verifies that a given zip code matches the format expected for US addresses.
 */
@implementation TMBUtilities_Validation_USPostalCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_Validation_USPostalCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/Validation/USPostalCodes"] autorelease];
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
		TMBUtilities_Validation_USPostalCodes_ResultSet *results = [[[TMBUtilities_Validation_USPostalCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the USPostalCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_Validation_USPostalCodes_Inputs*)newInputSet {
		return [[[TMBUtilities_Validation_USPostalCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the XMLToTSV Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToTSV_Inputs

	/*!
	 * Set the value of the XML input for this Choreo.
	*(required, xml) The XML file to convert to TSV data.
	 */
	-(void)setXML:(NSString*)XML {
		[super setInput:@"XML" toValue:XML];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) If your XML is not in "/rowset/row/column_name" format, specify a path to the rows. See documentation for examples.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the XMLToTSV Choreo.
 */
@implementation TMBUtilities_DataConversions_XMLToTSV_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "TSV" output from an execution of this Choreo.
	 * @return - NSString* (multiline) The tab-separated data generated from the XML input.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getTSV {
		return [super getOutputByName:@"TSV"];
	}
	
@end

/*!
 * Converts an XML file to TSV format (TAB-separated values).
 */
@implementation TMBUtilities_DataConversions_XMLToTSV

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBUtilities_DataConversions_XMLToTSV Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Utilities/DataConversions/XMLToTSV"] autorelease];
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
		TMBUtilities_DataConversions_XMLToTSV_ResultSet *results = [[[TMBUtilities_DataConversions_XMLToTSV_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the XMLToTSV Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBUtilities_DataConversions_XMLToTSV_Inputs*)newInputSet {
		return [[[TMBUtilities_DataConversions_XMLToTSV_Inputs alloc] init] autorelease];
	}
@end
	