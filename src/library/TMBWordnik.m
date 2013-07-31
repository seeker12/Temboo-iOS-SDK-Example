/*!
 * @TMBWordnik.m
 *
 * Execute Choreographies from the Temboo Wordnik bundle.
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

#import "TMBWordnik.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ReverseDictionary Choreo.
 */
@implementation TMBWordnik_Words_ReverseDictionary_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ExcludePartOfSpeech input for this Choreo.
	*(optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech {
		[super setInput:@"ExcludePartOfSpeech" toValue:ExcludePartOfSpeech];
	}

	/*!
	 * Set the value of the ExcludeSource input for this Choreo.
	*(optional, string) Exclude these comma-delimited source dictionaries: ahd, century, wiktionary,webster, wordnet.
	 */
	-(void)setExcludeSource:(NSString*)ExcludeSource {
		[super setInput:@"ExcludeSource" toValue:ExcludeSource];
	}

	/*!
	 * Set the value of the ExpandTerms input for this Choreo.
	*(optional, any) Expand terms by either: synonym or hypernym.
	 */
	-(void)setExpandTerms:(NSString*)ExpandTerms {
		[super setInput:@"ExpandTerms" toValue:ExpandTerms];
	}

	/*!
	 * Set the value of the IncludePartOfSpeech input for this Choreo.
	*(optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech {
		[super setInput:@"IncludePartOfSpeech" toValue:IncludePartOfSpeech];
	}

	/*!
	 * Set the value of the IncludeSource input for this Choreo.
	*(optional, string) Only include these comma-delimited source dictionaries: ahd, century, wiktionary,webster, wordnet.
	 */
	-(void)setIncludeSource:(NSString*)IncludeSource {
		[super setInput:@"IncludeSource" toValue:IncludeSource];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaxCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
	 */
	-(void)setMaxCorpus:(NSString*)MaxCorpus {
		[super setInput:@"MaxCorpus" toValue:MaxCorpus];
	}

	/*!
	 * Set the value of the MaxLength input for this Choreo.
	*(optional, integer) Maximum word length.
	 */
	-(void)setMaxLength:(NSString*)MaxLength {
		[super setInput:@"MaxLength" toValue:MaxLength];
	}

	/*!
	 * Set the value of the MinCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
	 */
	-(void)setMinCorpus:(NSString*)MinCorpus {
		[super setInput:@"MinCorpus" toValue:MinCorpus];
	}

	/*!
	 * Set the value of the MinLength input for this Choreo.
	*(optional, integer) ‪Minimum word length.
	 */
	-(void)setMinLength:(NSString*)MinLength {
		[super setInput:@"MinLength" toValue:MinLength];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Word or fragment to query for in Wordnik.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Number of results to skip.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Results can be sorted by: alpha, count, or length.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Indicate the order to sort, either asc (ascending) or desc (descending).
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the WordSense input for this Choreo.
	*(optional, string) Restricts words and finds the closest sense to the one indicated.
	 */
	-(void)setWordSense:(NSString*)WordSense {
		[super setInput:@"WordSense" toValue:WordSense];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReverseDictionary Choreo.
 */
@implementation TMBWordnik_Words_ReverseDictionary_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a reverse dictionary search for a given word.
 */
@implementation TMBWordnik_Words_ReverseDictionary

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Words_ReverseDictionary Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Words/ReverseDictionary"] autorelease];
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
		TMBWordnik_Words_ReverseDictionary_ResultSet *results = [[[TMBWordnik_Words_ReverseDictionary_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReverseDictionary Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Words_ReverseDictionary_Inputs*)newInputSet {
		return [[[TMBWordnik_Words_ReverseDictionary_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetHyphenation Choreo.
 */
@implementation TMBWordnik_Word_GetHyphenation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the Dictionary input for this Choreo.
	*(optional, string) Source dictionary to return pronunciation from. Acceptable values: ahd, century, cmu, macmillan, wiktionary,webster, wordnet.
	 */
	-(void)setDictionary:(NSString*)Dictionary {
		[super setInput:@"Dictionary" toValue:Dictionary];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetHyphenation Choreo.
 */
@implementation TMBWordnik_Word_GetHyphenation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the hyphenation of a given word.
 */
@implementation TMBWordnik_Word_GetHyphenation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetHyphenation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetHyphenation"] autorelease];
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
		TMBWordnik_Word_GetHyphenation_ResultSet *results = [[[TMBWordnik_Word_GetHyphenation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetHyphenation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetHyphenation_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetHyphenation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAuthToken Choreo.
 */
@implementation TMBWordnik_Account_GetAuthToken_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) Password of the Wordnik account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Username of the Wordnik account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAuthToken Choreo.
 */
@implementation TMBWordnik_Account_GetAuthToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* The Token obtained from running this Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Obtains an authentication token for use in other Wordnik Choreos.
 */
@implementation TMBWordnik_Account_GetAuthToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Account_GetAuthToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Account/GetAuthToken"] autorelease];
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
		TMBWordnik_Account_GetAuthToken_ResultSet *results = [[[TMBWordnik_Account_GetAuthToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAuthToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Account_GetAuthToken_Inputs*)newInputSet {
		return [[[TMBWordnik_Account_GetAuthToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RandomWords Choreo.
 */
@implementation TMBWordnik_Words_RandomWords_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ExcludePartOfSpeech input for this Choreo.
	*(optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech {
		[super setInput:@"ExcludePartOfSpeech" toValue:ExcludePartOfSpeech];
	}

	/*!
	 * Set the value of the HasDefinition input for this Choreo.
	*(optional, string) Only returns words that have dictionary definitions when true. Otherwise false. Defaults to true.
	 */
	-(void)setHasDefinition:(NSString*)HasDefinition {
		[super setInput:@"HasDefinition" toValue:HasDefinition];
	}

	/*!
	 * Set the value of the IncludePartOfSpeech input for this Choreo.
	*(optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech {
		[super setInput:@"IncludePartOfSpeech" toValue:IncludePartOfSpeech];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaxCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
	 */
	-(void)setMaxCorpus:(NSString*)MaxCorpus {
		[super setInput:@"MaxCorpus" toValue:MaxCorpus];
	}

	/*!
	 * Set the value of the MaxDictionaries input for this Choreo.
	*(optional, integer) Maximum number of dictionaries in which the words appear.
	 */
	-(void)setMaxDictionaries:(NSString*)MaxDictionaries {
		[super setInput:@"MaxDictionaries" toValue:MaxDictionaries];
	}

	/*!
	 * Set the value of the MaxLength input for this Choreo.
	*(optional, integer) Maximum word length.
	 */
	-(void)setMaxLength:(NSString*)MaxLength {
		[super setInput:@"MaxLength" toValue:MaxLength];
	}

	/*!
	 * Set the value of the MinCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
	 */
	-(void)setMinCorpus:(NSString*)MinCorpus {
		[super setInput:@"MinCorpus" toValue:MinCorpus];
	}

	/*!
	 * Set the value of the MinDictionaries input for this Choreo.
	*(optional, integer) Minimum number of dictionaries in which the words appear.
	 */
	-(void)setMinDictionaries:(NSString*)MinDictionaries {
		[super setInput:@"MinDictionaries" toValue:MinDictionaries];
	}

	/*!
	 * Set the value of the MinLength input for this Choreo.
	*(optional, integer) ‪Minimum word length.
	 */
	-(void)setMinLength:(NSString*)MinLength {
		[super setInput:@"MinLength" toValue:MinLength];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Results can be sorted by: alpha, count, or length.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Indicate the order to sort, either asc (ascending) or desc (descending).
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RandomWords Choreo.
 */
@implementation TMBWordnik_Words_RandomWords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of random words.
 */
@implementation TMBWordnik_Words_RandomWords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Words_RandomWords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Words/RandomWords"] autorelease];
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
		TMBWordnik_Words_RandomWords_ResultSet *results = [[[TMBWordnik_Words_RandomWords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RandomWords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Words_RandomWords_Inputs*)newInputSet {
		return [[[TMBWordnik_Words_RandomWords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RandomWord Choreo.
 */
@implementation TMBWordnik_Words_RandomWord_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ExcludePartOfSpeech input for this Choreo.
	*(optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech {
		[super setInput:@"ExcludePartOfSpeech" toValue:ExcludePartOfSpeech];
	}

	/*!
	 * Set the value of the HasDefinition input for this Choreo.
	*(optional, string) Only returns words that have dictionary definitions when true. Otherwise false. Defaults to true.
	 */
	-(void)setHasDefinition:(NSString*)HasDefinition {
		[super setInput:@"HasDefinition" toValue:HasDefinition];
	}

	/*!
	 * Set the value of the IncludePartOfSpeech input for this Choreo.
	*(optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech {
		[super setInput:@"IncludePartOfSpeech" toValue:IncludePartOfSpeech];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaxCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
	 */
	-(void)setMaxCorpus:(NSString*)MaxCorpus {
		[super setInput:@"MaxCorpus" toValue:MaxCorpus];
	}

	/*!
	 * Set the value of the MaxDictionaries input for this Choreo.
	*(optional, integer) Maximum number of dictionaries in which the words appear.
	 */
	-(void)setMaxDictionaries:(NSString*)MaxDictionaries {
		[super setInput:@"MaxDictionaries" toValue:MaxDictionaries];
	}

	/*!
	 * Set the value of the MaxLength input for this Choreo.
	*(optional, integer) Maximum word length.
	 */
	-(void)setMaxLength:(NSString*)MaxLength {
		[super setInput:@"MaxLength" toValue:MaxLength];
	}

	/*!
	 * Set the value of the MinCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
	 */
	-(void)setMinCorpus:(NSString*)MinCorpus {
		[super setInput:@"MinCorpus" toValue:MinCorpus];
	}

	/*!
	 * Set the value of the MinDictionaries input for this Choreo.
	*(optional, integer) Minimum number of dictionaries in which the words appear.
	 */
	-(void)setMinDictionaries:(NSString*)MinDictionaries {
		[super setInput:@"MinDictionaries" toValue:MinDictionaries];
	}

	/*!
	 * Set the value of the MinLength input for this Choreo.
	*(optional, integer) ‪Minimum word length.
	 */
	-(void)setMinLength:(NSString*)MinLength {
		[super setInput:@"MinLength" toValue:MinLength];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RandomWord Choreo.
 */
@implementation TMBWordnik_Words_RandomWord_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a random word.
 */
@implementation TMBWordnik_Words_RandomWord

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Words_RandomWord Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Words/RandomWord"] autorelease];
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
		TMBWordnik_Words_RandomWord_ResultSet *results = [[[TMBWordnik_Words_RandomWord_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RandomWord Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Words_RandomWord_Inputs*)newInputSet {
		return [[[TMBWordnik_Words_RandomWord_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWordList Choreo.
 */
@implementation TMBWordnik_WordList_DeleteWordList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The Password of the Wordnik account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The Username of the Wordnik account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WordList input for this Choreo.
	*(required, string) The perma-link of the WordLIst to delete.
	 */
	-(void)setWordList:(NSString*)WordList {
		[super setInput:@"WordList" toValue:WordList];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWordList Choreo.
 */
@implementation TMBWordnik_WordList_DeleteWordList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given word list.
 */
@implementation TMBWordnik_WordList_DeleteWordList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_WordList_DeleteWordList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/WordList/DeleteWordList"] autorelease];
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
		TMBWordnik_WordList_DeleteWordList_ResultSet *results = [[[TMBWordnik_WordList_DeleteWordList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWordList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_WordList_DeleteWordList_Inputs*)newInputSet {
		return [[[TMBWordnik_WordList_DeleteWordList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateWordList Choreo.
 */
@implementation TMBWordnik_WordLists_CreateWordList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ListDescription input for this Choreo.
	*(required, string) A description of the list to create.
	 */
	-(void)setListDescription:(NSString*)ListDescription {
		[super setInput:@"ListDescription" toValue:ListDescription];
	}

	/*!
	 * Set the value of the ListName input for this Choreo.
	*(required, string) Name of list to create.
	 */
	-(void)setListName:(NSString*)ListName {
		[super setInput:@"ListName" toValue:ListName];
	}

	/*!
	 * Set the value of the ListStatus input for this Choreo.
	*(optional, string) Determines whether the list to cretae is public or private. Acceptable values: PUBLIC or PRIVATE.
	 */
	-(void)setListStatus:(NSString*)ListStatus {
		[super setInput:@"ListStatus" toValue:ListStatus];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The Password of the Wordnik account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The Username of the Wordnik account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWordList Choreo.
 */
@implementation TMBWordnik_WordLists_CreateWordList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new word list for the specified user.
 */
@implementation TMBWordnik_WordLists_CreateWordList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_WordLists_CreateWordList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/WordLists/CreateWordList"] autorelease];
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
		TMBWordnik_WordLists_CreateWordList_ResultSet *results = [[[TMBWordnik_WordLists_CreateWordList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateWordList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_WordLists_CreateWordList_Inputs*)newInputSet {
		return [[[TMBWordnik_WordLists_CreateWordList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRelatedWords Choreo.
 */
@implementation TMBWordnik_Word_GetRelatedWords_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the LimitPerType input for this Choreo.
	*(optional, integer) Limits the amount of results returned for each relationship type included in the output. Defaults to 10.
	 */
	-(void)setLimitPerType:(NSString*)LimitPerType {
		[super setInput:@"LimitPerType" toValue:LimitPerType];
	}

	/*!
	 * Set the value of the RelationshipType input for this Choreo.
	*(optional, string) Limits the total results per type of relationship. Acceptable values inlcude adjective, noun, etc. See docs for complete list.
	 */
	-(void)setRelationshipType:(NSString*)RelationshipType {
		[super setInput:@"RelationshipType" toValue:RelationshipType];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelatedWords Choreo.
 */
@implementation TMBWordnik_Word_GetRelatedWords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the related words of a given word.
 */
@implementation TMBWordnik_Word_GetRelatedWords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetRelatedWords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetRelatedWords"] autorelease];
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
		TMBWordnik_Word_GetRelatedWords_ResultSet *results = [[[TMBWordnik_Word_GetRelatedWords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRelatedWords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetRelatedWords_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetRelatedWords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAudio Choreo.
 */
@implementation TMBWordnik_Word_GetAudio_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAudio Choreo.
 */
@implementation TMBWordnik_Word_GetAudio_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the audio pronunciation of a given word.
 */
@implementation TMBWordnik_Word_GetAudio

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetAudio Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetAudio"] autorelease];
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
		TMBWordnik_Word_GetAudio_ResultSet *results = [[[TMBWordnik_Word_GetAudio_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAudio Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetAudio_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetAudio_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWordList Choreo.
 */
@implementation TMBWordnik_WordList_GetWordList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The Password of the Wordnik account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The Username of the Wordnik account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WordList input for this Choreo.
	*(required, string) The perma-link for the Word List to retrieve.
	 */
	-(void)setWordList:(NSString*)WordList {
		[super setInput:@"WordList" toValue:WordList];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordList Choreo.
 */
@implementation TMBWordnik_WordList_GetWordList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a word list by its ID.
 */
@implementation TMBWordnik_WordList_GetWordList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_WordList_GetWordList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/WordList/GetWordList"] autorelease];
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
		TMBWordnik_WordList_GetWordList_ResultSet *results = [[[TMBWordnik_WordList_GetWordList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWordList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_WordList_GetWordList_Inputs*)newInputSet {
		return [[[TMBWordnik_WordList_GetWordList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWordOfTheDay Choreo.
 */
@implementation TMBWordnik_Words_GetWordOfTheDay_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, string) The date of the Word of the Day to retrieve, in yyyy-MM-dd format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordOfTheDay Choreo.
 */
@implementation TMBWordnik_Words_GetWordOfTheDay_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the word of the day for specified dates.
 */
@implementation TMBWordnik_Words_GetWordOfTheDay

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Words_GetWordOfTheDay Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Words/GetWordOfTheDay"] autorelease];
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
		TMBWordnik_Words_GetWordOfTheDay_ResultSet *results = [[[TMBWordnik_Words_GetWordOfTheDay_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWordOfTheDay Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Words_GetWordOfTheDay_Inputs*)newInputSet {
		return [[[TMBWordnik_Words_GetWordOfTheDay_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopExample Choreo.
 */
@implementation TMBWordnik_Word_GetTopExample_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopExample Choreo.
 */
@implementation TMBWordnik_Word_GetTopExample_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top example of a given word.
 */
@implementation TMBWordnik_Word_GetTopExample

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetTopExample Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetTopExample"] autorelease];
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
		TMBWordnik_Word_GetTopExample_ResultSet *results = [[[TMBWordnik_Word_GetTopExample_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopExample Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetTopExample_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetTopExample_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDefinitions Choreo.
 */
@implementation TMBWordnik_Word_GetDefinitions_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the Dictionaries input for this Choreo.
	*(optional, string) Source dictionary to return definitions from. Defaults to all, which returns definitions from all sources. See docs fro full list of acceptable values.
	 */
	-(void)setDictionaries:(NSString*)Dictionaries {
		[super setInput:@"Dictionaries" toValue:Dictionaries];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the PartOfSpeech input for this Choreo.
	*(optional, string) Returns only definitions for particular parts of speech when this input is specified. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setPartOfSpeech:(NSString*)PartOfSpeech {
		[super setInput:@"PartOfSpeech" toValue:PartOfSpeech];
	}

	/*!
	 * Set the value of the RelatedWords input for this Choreo.
	*(optional, string) Returns related words with definitions when true. Defaults to false.
	 */
	-(void)setRelatedWords:(NSString*)RelatedWords {
		[super setInput:@"RelatedWords" toValue:RelatedWords];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDefinitions Choreo.
 */
@implementation TMBWordnik_Word_GetDefinitions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the definition of a given word.
 */
@implementation TMBWordnik_Word_GetDefinitions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetDefinitions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetDefinitions"] autorelease];
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
		TMBWordnik_Word_GetDefinitions_ResultSet *results = [[[TMBWordnik_Word_GetDefinitions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDefinitions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetDefinitions_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetDefinitions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUser Choreo.
 */
@implementation TMBWordnik_Account_GetUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) Password of the Wordnik account. 
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Username of the Wordnik account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUser Choreo.
 */
@implementation TMBWordnik_Account_GetUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information on the specified user.
 */
@implementation TMBWordnik_Account_GetUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Account_GetUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Account/GetUser"] autorelease];
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
		TMBWordnik_Account_GetUser_ResultSet *results = [[[TMBWordnik_Account_GetUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Account_GetUser_Inputs*)newInputSet {
		return [[[TMBWordnik_Account_GetUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWordLists Choreo.
 */
@implementation TMBWordnik_Account_GetWordLists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The Password of the Wordnik account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Number of results to skip. Defaults to 0.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The Username of the Wordnik account.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordLists Choreo.
 */
@implementation TMBWordnik_Account_GetWordLists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the word lists for the specified user.
 */
@implementation TMBWordnik_Account_GetWordLists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Account_GetWordLists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Account/GetWordLists"] autorelease];
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
		TMBWordnik_Account_GetWordLists_ResultSet *results = [[[TMBWordnik_Account_GetWordLists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWordLists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Account_GetWordLists_Inputs*)newInputSet {
		return [[[TMBWordnik_Account_GetWordLists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExamples Choreo.
 */
@implementation TMBWordnik_Word_GetExamples_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the Duplicates input for this Choreo.
	*(optional, string) Shows duplicate examples from different sources when set to true. Defaults to false.
	 */
	-(void)setDuplicates:(NSString*)Duplicates {
		[super setInput:@"Duplicates" toValue:Duplicates];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Results to skip. Defaults to 0.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExamples Choreo.
 */
@implementation TMBWordnik_Word_GetExamples_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the examples of a given word.
 */
@implementation TMBWordnik_Word_GetExamples

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetExamples Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetExamples"] autorelease];
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
		TMBWordnik_Word_GetExamples_ResultSet *results = [[[TMBWordnik_Word_GetExamples_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExamples Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetExamples_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetExamples_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEtymology Choreo.
 */
@implementation TMBWordnik_Word_GetEtymology_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEtymology Choreo.
 */
@implementation TMBWordnik_Word_GetEtymology_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the etymology of a given word.
 */
@implementation TMBWordnik_Word_GetEtymology

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetEtymology Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetEtymology"] autorelease];
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
		TMBWordnik_Word_GetEtymology_ResultSet *results = [[[TMBWordnik_Word_GetEtymology_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEtymology Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetEtymology_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetEtymology_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetKeyStatus Choreo.
 */
@implementation TMBWordnik_Account_GetKeyStatus_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetKeyStatus Choreo.
 */
@implementation TMBWordnik_Account_GetKeyStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtains the status of the user's current API Key.
 */
@implementation TMBWordnik_Account_GetKeyStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Account_GetKeyStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Account/GetKeyStatus"] autorelease];
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
		TMBWordnik_Account_GetKeyStatus_ResultSet *results = [[[TMBWordnik_Account_GetKeyStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetKeyStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Account_GetKeyStatus_Inputs*)newInputSet {
		return [[[TMBWordnik_Account_GetKeyStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPronunciations Choreo.
 */
@implementation TMBWordnik_Word_GetPronunciations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the Dictionary input for this Choreo.
	*(optional, string) Source dictionary to return pronunciation from. Acceptable values: ahd, century, cmu, macmillan, wiktionary,webster, wordnet.
	 */
	-(void)setDictionary:(NSString*)Dictionary {
		[super setInput:@"Dictionary" toValue:Dictionary];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the TypeFormat input for this Choreo.
	*(optional, string) Text pronunciation type. Acceptable values: ahd, arpabet, gcide-diacritical, IPA.
	 */
	-(void)setTypeFormat:(NSString*)TypeFormat {
		[super setInput:@"TypeFormat" toValue:TypeFormat];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPronunciations Choreo.
 */
@implementation TMBWordnik_Word_GetPronunciations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the pronuciation of a given word.
 */
@implementation TMBWordnik_Word_GetPronunciations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetPronunciations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetPronunciations"] autorelease];
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
		TMBWordnik_Word_GetPronunciations_ResultSet *results = [[[TMBWordnik_Word_GetPronunciations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPronunciations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetPronunciations_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetPronunciations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFrequency Choreo.
 */
@implementation TMBWordnik_Word_GetFrequency_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cannonical input for this Choreo.
	*(optional, string) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
	 */
	-(void)setCannonical:(NSString*)Cannonical {
		[super setInput:@"Cannonical" toValue:Cannonical];
	}

	/*!
	 * Set the value of the EndYear input for this Choreo.
	*(optional, integer) End year for which to return word use frequencies. Defaults to 2012.
	 */
	-(void)setEndYear:(NSString*)EndYear {
		[super setInput:@"EndYear" toValue:EndYear];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the StartYear input for this Choreo.
	*(optional, integer) Start year for which to return word use frequencies. Defaults to 1800.
	 */
	-(void)setStartYear:(NSString*)StartYear {
		[super setInput:@"StartYear" toValue:StartYear];
	}

	/*!
	 * Set the value of the Word input for this Choreo.
	*(required, string) The word you want to look up on Wordnik.
	 */
	-(void)setWord:(NSString*)Word {
		[super setInput:@"Word" toValue:Word];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFrequency Choreo.
 */
@implementation TMBWordnik_Word_GetFrequency_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the word frequency of a given word.
 */
@implementation TMBWordnik_Word_GetFrequency

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Word_GetFrequency Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Word/GetFrequency"] autorelease];
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
		TMBWordnik_Word_GetFrequency_ResultSet *results = [[[TMBWordnik_Word_GetFrequency_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFrequency Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Word_GetFrequency_Inputs*)newInputSet {
		return [[[TMBWordnik_Word_GetFrequency_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWordsInWordList Choreo.
 */
@implementation TMBWordnik_WordList_GetWordsInWordList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits teh number of results returned. Defaults to 100.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The Password of the Wordnik user account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Number of results to skip. Defaults to 0.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Sorts the results by either alpha (alphabetically) or createDate (the date created). Defaults to createDate.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) The direction to sort results by either asc (ascending) or desc (descending). Defaults to desc.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The Username of the Wordnik user.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the WordList input for this Choreo.
	*(required, string) The perma-link for the Word List to retrieve.
	 */
	-(void)setWordList:(NSString*)WordList {
		[super setInput:@"WordList" toValue:WordList];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordsInWordList Choreo.
 */
@implementation TMBWordnik_WordList_GetWordsInWordList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrievs the words in a word list.
 */
@implementation TMBWordnik_WordList_GetWordsInWordList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_WordList_GetWordsInWordList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/WordList/GetWordsInWordList"] autorelease];
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
		TMBWordnik_WordList_GetWordsInWordList_ResultSet *results = [[[TMBWordnik_WordList_GetWordsInWordList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWordsInWordList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_WordList_GetWordsInWordList_Inputs*)newInputSet {
		return [[[TMBWordnik_WordList_GetWordsInWordList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchWords Choreo.
 */
@implementation TMBWordnik_Words_SearchWords_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key from Wordnik.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CaseSensitive input for this Choreo.
	*(optional, string) Makes the query case-insensitive when false. Defaults to true, so queries are case-sensitive.
	 */
	-(void)setCaseSensitive:(NSString*)CaseSensitive {
		[super setInput:@"CaseSensitive" toValue:CaseSensitive];
	}

	/*!
	 * Set the value of the ExcludePartOfSpeech input for this Choreo.
	*(optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech {
		[super setInput:@"ExcludePartOfSpeech" toValue:ExcludePartOfSpeech];
	}

	/*!
	 * Set the value of the IncludePartOfSpeech input for this Choreo.
	*(optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
	 */
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech {
		[super setInput:@"IncludePartOfSpeech" toValue:IncludePartOfSpeech];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Maximum number of results to return. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaxCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
	 */
	-(void)setMaxCorpus:(NSString*)MaxCorpus {
		[super setInput:@"MaxCorpus" toValue:MaxCorpus];
	}

	/*!
	 * Set the value of the MaxEntries input for this Choreo.
	*(optional, integer) Limits the results to words that have fewer than the given numner of dictionary entries.
	 */
	-(void)setMaxEntries:(NSString*)MaxEntries {
		[super setInput:@"MaxEntries" toValue:MaxEntries];
	}

	/*!
	 * Set the value of the MaxLength input for this Choreo.
	*(optional, integer) Maximum word length.
	 */
	-(void)setMaxLength:(NSString*)MaxLength {
		[super setInput:@"MaxLength" toValue:MaxLength];
	}

	/*!
	 * Set the value of the MinCorpus input for this Choreo.
	*(optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
	 */
	-(void)setMinCorpus:(NSString*)MinCorpus {
		[super setInput:@"MinCorpus" toValue:MinCorpus];
	}

	/*!
	 * Set the value of the MinEntries input for this Choreo.
	*(optional, integer) Limits the results to words that have more than the given numner of dictionary entries.
	 */
	-(void)setMinEntries:(NSString*)MinEntries {
		[super setInput:@"MinEntries" toValue:MinEntries];
	}

	/*!
	 * Set the value of the MinLength input for this Choreo.
	*(optional, integer) ‪Minimum word length.
	 */
	-(void)setMinLength:(NSString*)MinLength {
		[super setInput:@"MinLength" toValue:MinLength];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Word or fragment to query for in Wordnik.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Response can be either JSON or XML. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Number of results to skip.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchWords Choreo.
 */
@implementation TMBWordnik_Words_SearchWords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Wordnik.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches words.
 */
@implementation TMBWordnik_Words_SearchWords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBWordnik_Words_SearchWords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Wordnik/Words/SearchWords"] autorelease];
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
		TMBWordnik_Words_SearchWords_ResultSet *results = [[[TMBWordnik_Words_SearchWords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchWords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBWordnik_Words_SearchWords_Inputs*)newInputSet {
		return [[[TMBWordnik_Words_SearchWords_Inputs alloc] init] autorelease];
	}
@end
	