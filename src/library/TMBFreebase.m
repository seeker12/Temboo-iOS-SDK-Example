/*!
 * @TMBFreebase.m
 *
 * Execute Choreographies from the Temboo Freebase bundle.
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

#import "TMBFreebase.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Image Choreo.
 */
@implementation TMBFreebase_Image_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Freebase.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the FallbackID input for this Choreo.
	*(optional, string) Use this second (fallback) image ID, if the primary ID is not available.
	 */
	-(void)setFallbackID:(NSString*)FallbackID {
		[super setInput:@"FallbackID" toValue:FallbackID];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) Enter the ID of the entity for which description information will be retrieved. IDs and MIDs can be obtained by running the Search Choreo in this bundle. Example input: /en/bob_dylan
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the MaximumHeight input for this Choreo.
	*(optional, integer) Enter the desired maximum image height in pixels. Integers must be in the following range: (0 --> 4,096)
	 */
	-(void)setMaximumHeight:(NSString*)MaximumHeight {
		[super setInput:@"MaximumHeight" toValue:MaximumHeight];
	}

	/*!
	 * Set the value of the MaximumWidth input for this Choreo.
	*(optional, integer) Enter the desired maximum image width in pixels. Integers must be in the following range: (0 --> 4,096)
	 */
	-(void)setMaximumWidth:(NSString*)MaximumWidth {
		[super setInput:@"MaximumWidth" toValue:MaximumWidth];
	}

	/*!
	 * Set the value of the Mode input for this Choreo.
	*(optional, string) Specify the method used to crop or scale images.  Available methods include: fill, fillcrop, fillcropmid, fit.
	 */
	-(void)setMode:(NSString*)Mode {
		[super setInput:@"Mode" toValue:Mode];
	}

	/*!
	 * Set the value of the Pad input for this Choreo.
	*(optional, boolean) Enter 0, or 1 to specify whether the provided image should be padded to the requested dimensions.
	 */
	-(void)setPad:(NSString*)Pad {
		[super setInput:@"Pad" toValue:Pad];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Image Choreo.
 */
@implementation TMBFreebase_Image_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from the Freebase Image API returns the thumbnail in base 64-encoded  format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Generates a thumbnail for an image from the content database to the requested size. 
 */
@implementation TMBFreebase_Image

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFreebase_Image Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Freebase/Image"] autorelease];
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
		TMBFreebase_Image_ResultSet *results = [[[TMBFreebase_Image_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Image Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFreebase_Image_Inputs*)newInputSet {
		return [[[TMBFreebase_Image_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBFreebase_Search_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Freebase.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Domain input for this Choreo.
	*(optional, string) Enter a comma separated list of domain IDs.
	 */
	-(void)setDomain:(NSString*)Domain {
		[super setInput:@"Domain" toValue:Domain];
	}

	/*!
	 * Set the value of the EscapeHTMLResults input for this Choreo.
	*(optional, boolean) Specify whether html results are to be escaped or not.  Default is set to: true.
	 */
	-(void)setEscapeHTMLResults:(NSString*)EscapeHTMLResults {
		[super setInput:@"EscapeHTMLResults" toValue:EscapeHTMLResults];
	}

	/*!
	 * Set the value of the Exact input for this Choreo.
	*(optional, boolean) If set to true, the search query will match only the name and keys exactly. No normalization of any kind will be performed at indexing and query time.Default is set to: false.
	 */
	-(void)setExact:(NSString*)Exact {
		[super setInput:@"Exact" toValue:Exact];
	}

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(optional, string) Specify an s-expression to filter search results. For more info, see: http://wiki.freebase.com/wiki/Search_Cookbook
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Indent input for this Choreo.
	*(optional, boolean) Specify whether the JSON results should be indented, or not. Enter true, or false. Default: false.
	 */
	-(void)setIndent:(NSString*)Indent {
		[super setInput:@"Indent" toValue:Indent];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Specify the language in which the searches will be performed.  Default is set to English: /lang/en
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify the number of results to be retrieved.  Default: 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MQLOutput input for this Choreo.
	*(optional, string) Enter an MQL query to extract entity information.
	 */
	-(void)setMQLOutput:(NSString*)MQLOutput {
		[super setInput:@"MQLOutput" toValue:MQLOutput];
	}

	/*!
	 * Set the value of the Prefixed input for this Choreo.
	*(optional, boolean) Specify whether or not search queries are to match results by name prefix. Default value: false.
	 */
	-(void)setPrefixed:(NSString*)Prefixed {
		[super setInput:@"Prefixed" toValue:Prefixed];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Enter a search query.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Start input for this Choreo.
	*(optional, integer) Enter a value to page through results.  Default is set to 0.
	 */
	-(void)setStart:(NSString*)Start {
		[super setInput:@"Start" toValue:Start];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Enter a comma-seperated list of type IDs.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBFreebase_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Freebase Search API in JSON format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search the Freebase dataset.
 */
@implementation TMBFreebase_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFreebase_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Freebase/Search"] autorelease];
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
		TMBFreebase_Search_ResultSet *results = [[[TMBFreebase_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFreebase_Search_Inputs*)newInputSet {
		return [[[TMBFreebase_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Text Choreo.
 */
@implementation TMBFreebase_Text_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Freebase.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, boolean) Specify the retrieved results format.  Enter, html, plan, or raw. Default is set to: raw
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) Enter the ID of the entity for which description information will be retrieved. IDs and MIDs can be obtained by running the Search Choreo in this bundle. Example input: /en/bob_dylan
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Specify the language in which the searches will be performed. Default is set to English: /lang/en
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the MaximumLength input for this Choreo.
	*(optional, integer) Enter the max number of characters to return with the rage of 0 - 4,294,967,295. Valid only for plan Format. Default is to: 200
	 */
	-(void)setMaximumLength:(NSString*)MaximumLength {
		[super setInput:@"MaximumLength" toValue:MaximumLength];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Text Choreo.
 */
@implementation TMBFreebase_Text_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Freebase Text API in JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Access Freebase topic and schema descriptions.
 */
@implementation TMBFreebase_Text

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFreebase_Text Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Freebase/Text"] autorelease];
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
		TMBFreebase_Text_ResultSet *results = [[[TMBFreebase_Text_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Text Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFreebase_Text_Inputs*)newInputSet {
		return [[[TMBFreebase_Text_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MQLRead Choreo.
 */
@implementation TMBFreebase_MQLRead_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Freebase.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AsOfTime input for this Choreo.
	*(optional, string) Run a query as it would have run at a specific point in time. Timestamps must be entered in the following format: 2007-01-09T22, or 2007-02.
	 */
	-(void)setAsOfTime:(NSString*)AsOfTime {
		[super setInput:@"AsOfTime" toValue:AsOfTime];
	}

	/*!
	 * Set the value of the Cost input for this Choreo.
	*(optional, boolean) If cost is set to true, a key is returned in the results, indicating the computational cost incurred by lower levels of the service. Default value: false
	 */
	-(void)setCost:(NSString*)Cost {
		[super setInput:@"Cost" toValue:Cost];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) If set. results can be paged.  See examples at: http://wiki.freebase.com/wiki/MQL_Read_Service
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the EscapeHTMLResults input for this Choreo.
	*(optional, boolean) Specify whether html results are to be escaped or not.  Default is set to: true.
	 */
	-(void)setEscapeHTMLResults:(NSString*)EscapeHTMLResults {
		[super setInput:@"EscapeHTMLResults" toValue:EscapeHTMLResults];
	}

	/*!
	 * Set the value of the Indent input for this Choreo.
	*(optional, boolean) Specify whether the JSON results should be indented, or not. Enter true, or false. Default: false. Range of values: 0-10.
	 */
	-(void)setIndent:(NSString*)Indent {
		[super setInput:@"Indent" toValue:Indent];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Specify the language in which the searches will be performed.  Multiple languages can be specified. Default is: /lang/en
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Enter a search query  in a valid MQL JSON format.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the UniqenessFailure input for this Choreo.
	*(optional, string) Specify how MQL responds to uniqueness failures. Enter hard, or soft.  Default is set to: hard.
	 */
	-(void)setUniqenessFailure:(NSString*)UniqenessFailure {
		[super setInput:@"UniqenessFailure" toValue:UniqenessFailure];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MQLRead Choreo.
 */
@implementation TMBFreebase_MQLRead_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Freebase MQL Read API in JSON format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search the Freebase dataset using the Metaweb query language (MQL).
 */
@implementation TMBFreebase_MQLRead

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFreebase_MQLRead Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Freebase/MQLRead"] autorelease];
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
		TMBFreebase_MQLRead_ResultSet *results = [[[TMBFreebase_MQLRead_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MQLRead Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFreebase_MQLRead_Inputs*)newInputSet {
		return [[[TMBFreebase_MQLRead_Inputs alloc] init] autorelease];
	}
@end
	