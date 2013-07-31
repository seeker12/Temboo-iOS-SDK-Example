/*!
 * @TMBDonorsChoose.m
 *
 * Execute Choreographies from the Temboo DonorsChoose bundle.
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

#import "TMBDonorsChoose.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the SearchProjectsByKeyword Choreo.
 */
@implementation TMBDonorsChoose_SearchProjectsByKeyword_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(required, string) Allows you to search for subjects using keyword search
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchProjectsByKeyword Choreo.
 */
@implementation TMBDonorsChoose_SearchProjectsByKeyword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to projects subjects by keyword.
 */
@implementation TMBDonorsChoose_SearchProjectsByKeyword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_SearchProjectsByKeyword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/SearchProjectsByKeyword"] autorelease];
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
		TMBDonorsChoose_SearchProjectsByKeyword_ResultSet *results = [[[TMBDonorsChoose_SearchProjectsByKeyword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchProjectsByKeyword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_SearchProjectsByKeyword_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_SearchProjectsByKeyword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MusicAndTheArts Choreo.
 */
@implementation TMBDonorsChoose_MusicAndTheArts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowCounts input for this Choreo.
	*(optional, boolean) Set to 1 to return facet counts in the response
	 */
	-(void)setShowCounts:(NSString*)ShowCounts {
		[super setInput:@"ShowCounts" toValue:ShowCounts];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) Enter a sub-category of Music & The Arts. When left empty, all Art & Music projects are returned.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MusicAndTheArts Choreo.
 */
@implementation TMBDonorsChoose_MusicAndTheArts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the Music and The Arts category.
 */
@implementation TMBDonorsChoose_MusicAndTheArts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_MusicAndTheArts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/MusicAndTheArts"] autorelease];
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
		TMBDonorsChoose_MusicAndTheArts_ResultSet *results = [[[TMBDonorsChoose_MusicAndTheArts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MusicAndTheArts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_MusicAndTheArts_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_MusicAndTheArts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LiteracyAndLanguage Choreo.
 */
@implementation TMBDonorsChoose_LiteracyAndLanguage_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowCounts input for this Choreo.
	*(optional, boolean) Set to 1 to return facet counts in the response
	 */
	-(void)setShowCounts:(NSString*)ShowCounts {
		[super setInput:@"ShowCounts" toValue:ShowCounts];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) Enter a sub-category of Literacy & Language. When left empty, all Literacy & Language projects are returned.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LiteracyAndLanguage Choreo.
 */
@implementation TMBDonorsChoose_LiteracyAndLanguage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the Literacy and Language category.
 */
@implementation TMBDonorsChoose_LiteracyAndLanguage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_LiteracyAndLanguage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/LiteracyAndLanguage"] autorelease];
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
		TMBDonorsChoose_LiteracyAndLanguage_ResultSet *results = [[[TMBDonorsChoose_LiteracyAndLanguage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LiteracyAndLanguage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_LiteracyAndLanguage_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_LiteracyAndLanguage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HistoryAndCivics Choreo.
 */
@implementation TMBDonorsChoose_HistoryAndCivics_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowCounts input for this Choreo.
	*(optional, boolean) Set to 1 to return facet counts in the response
	 */
	-(void)setShowCounts:(NSString*)ShowCounts {
		[super setInput:@"ShowCounts" toValue:ShowCounts];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) Enter a sub-category of History & Civics. When left empty, all History & Civics projects are returned.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HistoryAndCivics Choreo.
 */
@implementation TMBDonorsChoose_HistoryAndCivics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the History and Civics category.
 */
@implementation TMBDonorsChoose_HistoryAndCivics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_HistoryAndCivics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/HistoryAndCivics"] autorelease];
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
		TMBDonorsChoose_HistoryAndCivics_ResultSet *results = [[[TMBDonorsChoose_HistoryAndCivics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HistoryAndCivics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_HistoryAndCivics_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_HistoryAndCivics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SpecialNeeds Choreo.
 */
@implementation TMBDonorsChoose_SpecialNeeds_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SpecialNeeds Choreo.
 */
@implementation TMBDonorsChoose_SpecialNeeds_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the Special Needs category.
 */
@implementation TMBDonorsChoose_SpecialNeeds

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_SpecialNeeds Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/SpecialNeeds"] autorelease];
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
		TMBDonorsChoose_SpecialNeeds_ResultSet *results = [[[TMBDonorsChoose_SpecialNeeds_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SpecialNeeds Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_SpecialNeeds_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_SpecialNeeds_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DonateToProject Choreo.
 */
@implementation TMBDonorsChoose_DonateToProject_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The APIKey provided by DonorsChoose.org.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIPassword input for this Choreo.
	*(required, string) Your DonorsChoose.org API password. This is only required when performing transactions.
	 */
	-(void)setAPIPassword:(NSString*)APIPassword {
		[super setInput:@"APIPassword" toValue:APIPassword];
	}

	/*!
	 * Set the value of the Address1 input for this Choreo.
	*(optional, string) Line one of the donor's address.
	 */
	-(void)setAddress1:(NSString*)Address1 {
		[super setInput:@"Address1" toValue:Address1];
	}

	/*!
	 * Set the value of the Address2 input for this Choreo.
	*(optional, string) Line two of the donor's address.
	 */
	-(void)setAddress2:(NSString*)Address2 {
		[super setInput:@"Address2" toValue:Address2];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The donation amount. Must be a whole number.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) To wrap the response in a callback function, include the name in this input.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The donor's city.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address of the person who is making the donation.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) The first name of the donor.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) The last name of the donor.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the ProposalId input for this Choreo.
	*(required, integer) The ID of the project that will receive the donation.
	 */
	-(void)setProposalId:(NSString*)ProposalId {
		[super setInput:@"ProposalId" toValue:ProposalId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Salutation input for this Choreo.
	*(optional, string) Hwo the donor wants to be acknowledged on donorschoose.org.
	 */
	-(void)setSalutation:(NSString*)Salutation {
		[super setInput:@"Salutation" toValue:Salutation];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The donor's state.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, string) The donor's five-digit zip code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DonateToProject Choreo.
 */
@implementation TMBDonorsChoose_DonateToProject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Makes a donation to a specified DonorsChoose.org project.
 */
@implementation TMBDonorsChoose_DonateToProject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_DonateToProject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/DonateToProject"] autorelease];
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
		TMBDonorsChoose_DonateToProject_ResultSet *results = [[[TMBDonorsChoose_DonateToProject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DonateToProject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_DonateToProject_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_DonateToProject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MathAndScience Choreo.
 */
@implementation TMBDonorsChoose_MathAndScience_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) Enter a sub-category of Math & Science. When left empty, all Math & Science projects are returned.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MathAndScience Choreo.
 */
@implementation TMBDonorsChoose_MathAndScience_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the Math and Science category.
 */
@implementation TMBDonorsChoose_MathAndScience

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_MathAndScience Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/MathAndScience"] autorelease];
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
		TMBDonorsChoose_MathAndScience_ResultSet *results = [[[TMBDonorsChoose_MathAndScience_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MathAndScience Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_MathAndScience_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_MathAndScience_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AppliedLearning Choreo.
 */
@implementation TMBDonorsChoose_AppliedLearning_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowCounts input for this Choreo.
	*(optional, boolean) Set to 1 to return facet counts in the response
	 */
	-(void)setShowCounts:(NSString*)ShowCounts {
		[super setInput:@"ShowCounts" toValue:ShowCounts];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) Enter a sub-category of Applied Learning. When left empty, all Applied Learning projects are returned.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AppliedLearning Choreo.
 */
@implementation TMBDonorsChoose_AppliedLearning_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the Applied Learning category.
 */
@implementation TMBDonorsChoose_AppliedLearning

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_AppliedLearning Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/AppliedLearning"] autorelease];
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
		TMBDonorsChoose_AppliedLearning_ResultSet *results = [[[TMBDonorsChoose_AppliedLearning_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AppliedLearning Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_AppliedLearning_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_AppliedLearning_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HealthAndSports Choreo.
 */
@implementation TMBDonorsChoose_HealthAndSports_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey provided by DonorsChoose.org. Defaults to the test  APIKey 'DONORSCHOOSE'.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) The number of the first row to return in the result. For example, if index=10, the results could show rows 10-59.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Max input for this Choreo.
	*(optional, integer) The max number of projects to return. Can return up to 50 rows at a time. Defaults to 10 when left empty.
	 */
	-(void)setMax:(NSString*)Max {
		[super setInput:@"Max" toValue:Max];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShowCounts input for this Choreo.
	*(optional, boolean) Set to 1 to return facet counts in the response
	 */
	-(void)setShowCounts:(NSString*)ShowCounts {
		[super setInput:@"ShowCounts" toValue:ShowCounts];
	}

	/*!
	 * Set the value of the ShowSynopsis input for this Choreo.
	*(optional, boolean) Set to 1 to show the synopsis for each project listing
	 */
	-(void)setShowSynopsis:(NSString*)ShowSynopsis {
		[super setInput:@"ShowSynopsis" toValue:ShowSynopsis];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(optional, string) Enter a sub-category of Health & Sports. When left empty, all Health & Sports projects are returned.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HealthAndSports Choreo.
 */
@implementation TMBDonorsChoose_HealthAndSports_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from DonorsChoose.org
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns results for projects within the Health and Sports category.
 */
@implementation TMBDonorsChoose_HealthAndSports

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDonorsChoose_HealthAndSports Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DonorsChoose/HealthAndSports"] autorelease];
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
		TMBDonorsChoose_HealthAndSports_ResultSet *results = [[[TMBDonorsChoose_HealthAndSports_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HealthAndSports Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDonorsChoose_HealthAndSports_Inputs*)newInputSet {
		return [[[TMBDonorsChoose_HealthAndSports_Inputs alloc] init] autorelease];
	}
@end
	