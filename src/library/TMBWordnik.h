/*!
 * @header Temboo iOS SDK Wordnik classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBWordnik.Words.ReverseDictionary Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReverseDictionary Choreo.
 */
@interface TMBWordnik_Words_ReverseDictionary_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech;
	-(void)setExcludeSource:(NSString*)ExcludeSource;
	-(void)setExpandTerms:(NSString*)ExpandTerms;
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech;
	-(void)setIncludeSource:(NSString*)IncludeSource;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaxCorpus:(NSString*)MaxCorpus;
	-(void)setMaxLength:(NSString*)MaxLength;
	-(void)setMinCorpus:(NSString*)MinCorpus;
	-(void)setMinLength:(NSString*)MinLength;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSkip:(NSString*)Skip;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setWordSense:(NSString*)WordSense;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReverseDictionary Choreo.
 */
@interface TMBWordnik_Words_ReverseDictionary_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a reverse dictionary search for a given word.
 */
@interface TMBWordnik_Words_ReverseDictionary : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Words_ReverseDictionary_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Words_ReverseDictionary Choreo */


/*! group TMBWordnik.Word.GetHyphenation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetHyphenation Choreo.
 */
@interface TMBWordnik_Word_GetHyphenation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setDictionary:(NSString*)Dictionary;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetHyphenation Choreo.
 */
@interface TMBWordnik_Word_GetHyphenation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the hyphenation of a given word.
 */
@interface TMBWordnik_Word_GetHyphenation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetHyphenation_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetHyphenation Choreo */


/*! group TMBWordnik.Account.GetAuthToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAuthToken Choreo.
 */
@interface TMBWordnik_Account_GetAuthToken_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAuthToken Choreo.
 */
@interface TMBWordnik_Account_GetAuthToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getToken;	
@end

/*!
 * Obtains an authentication token for use in other Wordnik Choreos.
 */
@interface TMBWordnik_Account_GetAuthToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Account_GetAuthToken_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Account_GetAuthToken Choreo */


/*! group TMBWordnik.Words.RandomWords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RandomWords Choreo.
 */
@interface TMBWordnik_Words_RandomWords_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech;
	-(void)setHasDefinition:(NSString*)HasDefinition;
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaxCorpus:(NSString*)MaxCorpus;
	-(void)setMaxDictionaries:(NSString*)MaxDictionaries;
	-(void)setMaxLength:(NSString*)MaxLength;
	-(void)setMinCorpus:(NSString*)MinCorpus;
	-(void)setMinDictionaries:(NSString*)MinDictionaries;
	-(void)setMinLength:(NSString*)MinLength;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RandomWords Choreo.
 */
@interface TMBWordnik_Words_RandomWords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of random words.
 */
@interface TMBWordnik_Words_RandomWords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Words_RandomWords_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Words_RandomWords Choreo */


/*! group TMBWordnik.Words.RandomWord Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RandomWord Choreo.
 */
@interface TMBWordnik_Words_RandomWord_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech;
	-(void)setHasDefinition:(NSString*)HasDefinition;
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaxCorpus:(NSString*)MaxCorpus;
	-(void)setMaxDictionaries:(NSString*)MaxDictionaries;
	-(void)setMaxLength:(NSString*)MaxLength;
	-(void)setMinCorpus:(NSString*)MinCorpus;
	-(void)setMinDictionaries:(NSString*)MinDictionaries;
	-(void)setMinLength:(NSString*)MinLength;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RandomWord Choreo.
 */
@interface TMBWordnik_Words_RandomWord_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a random word.
 */
@interface TMBWordnik_Words_RandomWord : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Words_RandomWord_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Words_RandomWord Choreo */


/*! group TMBWordnik.WordList.DeleteWordList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWordList Choreo.
 */
@interface TMBWordnik_WordList_DeleteWordList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
	-(void)setWordList:(NSString*)WordList;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWordList Choreo.
 */
@interface TMBWordnik_WordList_DeleteWordList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given word list.
 */
@interface TMBWordnik_WordList_DeleteWordList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_WordList_DeleteWordList_Inputs*)newInputSet;
@end

/*! group TMBWordnik.WordList_DeleteWordList Choreo */


/*! group TMBWordnik.WordLists.CreateWordList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateWordList Choreo.
 */
@interface TMBWordnik_WordLists_CreateWordList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setListDescription:(NSString*)ListDescription;
	-(void)setListName:(NSString*)ListName;
	-(void)setListStatus:(NSString*)ListStatus;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWordList Choreo.
 */
@interface TMBWordnik_WordLists_CreateWordList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new word list for the specified user.
 */
@interface TMBWordnik_WordLists_CreateWordList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_WordLists_CreateWordList_Inputs*)newInputSet;
@end

/*! group TMBWordnik.WordLists_CreateWordList Choreo */


/*! group TMBWordnik.Word.GetRelatedWords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRelatedWords Choreo.
 */
@interface TMBWordnik_Word_GetRelatedWords_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setLimitPerType:(NSString*)LimitPerType;
	-(void)setRelationshipType:(NSString*)RelationshipType;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRelatedWords Choreo.
 */
@interface TMBWordnik_Word_GetRelatedWords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the related words of a given word.
 */
@interface TMBWordnik_Word_GetRelatedWords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetRelatedWords_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetRelatedWords Choreo */


/*! group TMBWordnik.Word.GetAudio Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAudio Choreo.
 */
@interface TMBWordnik_Word_GetAudio_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAudio Choreo.
 */
@interface TMBWordnik_Word_GetAudio_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the audio pronunciation of a given word.
 */
@interface TMBWordnik_Word_GetAudio : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetAudio_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetAudio Choreo */


/*! group TMBWordnik.WordList.GetWordList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWordList Choreo.
 */
@interface TMBWordnik_WordList_GetWordList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setUsername:(NSString*)Username;
	-(void)setWordList:(NSString*)WordList;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordList Choreo.
 */
@interface TMBWordnik_WordList_GetWordList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a word list by its ID.
 */
@interface TMBWordnik_WordList_GetWordList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_WordList_GetWordList_Inputs*)newInputSet;
@end

/*! group TMBWordnik.WordList_GetWordList Choreo */


/*! group TMBWordnik.Words.GetWordOfTheDay Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWordOfTheDay Choreo.
 */
@interface TMBWordnik_Words_GetWordOfTheDay_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordOfTheDay Choreo.
 */
@interface TMBWordnik_Words_GetWordOfTheDay_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the word of the day for specified dates.
 */
@interface TMBWordnik_Words_GetWordOfTheDay : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Words_GetWordOfTheDay_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Words_GetWordOfTheDay Choreo */


/*! group TMBWordnik.Word.GetTopExample Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopExample Choreo.
 */
@interface TMBWordnik_Word_GetTopExample_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopExample Choreo.
 */
@interface TMBWordnik_Word_GetTopExample_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top example of a given word.
 */
@interface TMBWordnik_Word_GetTopExample : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetTopExample_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetTopExample Choreo */


/*! group TMBWordnik.Word.GetDefinitions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDefinitions Choreo.
 */
@interface TMBWordnik_Word_GetDefinitions_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setDictionaries:(NSString*)Dictionaries;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPartOfSpeech:(NSString*)PartOfSpeech;
	-(void)setRelatedWords:(NSString*)RelatedWords;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDefinitions Choreo.
 */
@interface TMBWordnik_Word_GetDefinitions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the definition of a given word.
 */
@interface TMBWordnik_Word_GetDefinitions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetDefinitions_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetDefinitions Choreo */


/*! group TMBWordnik.Account.GetUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUser Choreo.
 */
@interface TMBWordnik_Account_GetUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUser Choreo.
 */
@interface TMBWordnik_Account_GetUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information on the specified user.
 */
@interface TMBWordnik_Account_GetUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Account_GetUser_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Account_GetUser Choreo */


/*! group TMBWordnik.Account.GetWordLists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWordLists Choreo.
 */
@interface TMBWordnik_Account_GetWordLists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSkip:(NSString*)Skip;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordLists Choreo.
 */
@interface TMBWordnik_Account_GetWordLists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the word lists for the specified user.
 */
@interface TMBWordnik_Account_GetWordLists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Account_GetWordLists_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Account_GetWordLists Choreo */


/*! group TMBWordnik.Word.GetExamples Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExamples Choreo.
 */
@interface TMBWordnik_Word_GetExamples_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setDuplicates:(NSString*)Duplicates;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSkip:(NSString*)Skip;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExamples Choreo.
 */
@interface TMBWordnik_Word_GetExamples_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the examples of a given word.
 */
@interface TMBWordnik_Word_GetExamples : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetExamples_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetExamples Choreo */


/*! group TMBWordnik.Word.GetEtymology Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEtymology Choreo.
 */
@interface TMBWordnik_Word_GetEtymology_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEtymology Choreo.
 */
@interface TMBWordnik_Word_GetEtymology_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the etymology of a given word.
 */
@interface TMBWordnik_Word_GetEtymology : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetEtymology_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetEtymology Choreo */


/*! group TMBWordnik.Account.GetKeyStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetKeyStatus Choreo.
 */
@interface TMBWordnik_Account_GetKeyStatus_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseType:(NSString*)ResponseType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetKeyStatus Choreo.
 */
@interface TMBWordnik_Account_GetKeyStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtains the status of the user's current API Key.
 */
@interface TMBWordnik_Account_GetKeyStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Account_GetKeyStatus_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Account_GetKeyStatus Choreo */


/*! group TMBWordnik.Word.GetPronunciations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPronunciations Choreo.
 */
@interface TMBWordnik_Word_GetPronunciations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setDictionary:(NSString*)Dictionary;
	-(void)setLimit:(NSString*)Limit;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setTypeFormat:(NSString*)TypeFormat;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPronunciations Choreo.
 */
@interface TMBWordnik_Word_GetPronunciations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the pronuciation of a given word.
 */
@interface TMBWordnik_Word_GetPronunciations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetPronunciations_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetPronunciations Choreo */


/*! group TMBWordnik.Word.GetFrequency Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFrequency Choreo.
 */
@interface TMBWordnik_Word_GetFrequency_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCannonical:(NSString*)Cannonical;
	-(void)setEndYear:(NSString*)EndYear;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setStartYear:(NSString*)StartYear;
	-(void)setWord:(NSString*)Word;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFrequency Choreo.
 */
@interface TMBWordnik_Word_GetFrequency_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the word frequency of a given word.
 */
@interface TMBWordnik_Word_GetFrequency : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Word_GetFrequency_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Word_GetFrequency Choreo */


/*! group TMBWordnik.WordList.GetWordsInWordList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWordsInWordList Choreo.
 */
@interface TMBWordnik_WordList_GetWordsInWordList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSkip:(NSString*)Skip;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setUsername:(NSString*)Username;
	-(void)setWordList:(NSString*)WordList;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWordsInWordList Choreo.
 */
@interface TMBWordnik_WordList_GetWordsInWordList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrievs the words in a word list.
 */
@interface TMBWordnik_WordList_GetWordsInWordList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_WordList_GetWordsInWordList_Inputs*)newInputSet;
@end

/*! group TMBWordnik.WordList_GetWordsInWordList Choreo */


/*! group TMBWordnik.Words.SearchWords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchWords Choreo.
 */
@interface TMBWordnik_Words_SearchWords_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCaseSensitive:(NSString*)CaseSensitive;
	-(void)setExcludePartOfSpeech:(NSString*)ExcludePartOfSpeech;
	-(void)setIncludePartOfSpeech:(NSString*)IncludePartOfSpeech;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaxCorpus:(NSString*)MaxCorpus;
	-(void)setMaxEntries:(NSString*)MaxEntries;
	-(void)setMaxLength:(NSString*)MaxLength;
	-(void)setMinCorpus:(NSString*)MinCorpus;
	-(void)setMinEntries:(NSString*)MinEntries;
	-(void)setMinLength:(NSString*)MinLength;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setSkip:(NSString*)Skip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchWords Choreo.
 */
@interface TMBWordnik_Words_SearchWords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches words.
 */
@interface TMBWordnik_Words_SearchWords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBWordnik_Words_SearchWords_Inputs*)newInputSet;
@end

/*! group TMBWordnik.Words_SearchWords Choreo */
