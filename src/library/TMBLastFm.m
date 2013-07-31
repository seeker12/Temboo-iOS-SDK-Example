/*!
 * @TMBLastFm.m
 *
 * Execute Choreographies from the Temboo LastFm bundle.
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

#import "TMBLastFm.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetPastEvents Choreo.
 */
@implementation TMBLastFm_Artist_GetPastEvents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(optional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPastEvents Choreo.
 */
@implementation TMBLastFm_Artist_GetPastEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a paginated list of all the events this artist has played at in the past.
 */
@implementation TMBLastFm_Artist_GetPastEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetPastEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetPastEvents"] autorelease];
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
		TMBLastFm_Artist_GetPastEvents_ResultSet *results = [[[TMBLastFm_Artist_GetPastEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPastEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetPastEvents_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetPastEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetInfo Choreo.
 */
@implementation TMBLastFm_User_GetInfo_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The user to fetch info for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInfo Choreo.
 */
@implementation TMBLastFm_User_GetInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get information about a user profile.
 */
@implementation TMBLastFm_User_GetInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetInfo"] autorelease];
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
		TMBLastFm_User_GetInfo_ResultSet *results = [[[TMBLastFm_User_GetInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetInfo_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetShouts Choreo.
 */
@implementation TMBLastFm_User_GetShouts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50. Maximum is 200.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch shouts for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShouts Choreo.
 */
@implementation TMBLastFm_User_GetShouts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of shouts for a specified user.
 */
@implementation TMBLastFm_User_GetShouts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetShouts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetShouts"] autorelease];
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
		TMBLastFm_User_GetShouts_ResultSet *results = [[[TMBLastFm_User_GetShouts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetShouts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetShouts_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetShouts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecommendedArtists Choreo.
 */
@implementation TMBLastFm_User_GetRecommendedArtists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to first page.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecommendedArtists Choreo.
 */
@implementation TMBLastFm_User_GetRecommendedArtists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves Last.fm artist recommendations for a user.
 */
@implementation TMBLastFm_User_GetRecommendedArtists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetRecommendedArtists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetRecommendedArtists"] autorelease];
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
		TMBLastFm_User_GetRecommendedArtists_ResultSet *results = [[[TMBLastFm_User_GetRecommendedArtists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecommendedArtists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetRecommendedArtists_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetRecommendedArtists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTracks Choreo.
 */
@implementation TMBLastFm_User_GetTopTracks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Period input for this Choreo.
	*(optional, string) The time period over which to retrieve top tracks for. Valid values are: overall, 7day, 3month, 6month, 12month. Defaults to 'overall'.
	 */
	-(void)setPeriod:(NSString*)Period {
		[super setInput:@"Period" toValue:Period];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The Last.fm username to fetch top tracks for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTracks Choreo.
 */
@implementation TMBLastFm_User_GetTopTracks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top tracks listened to by a user.
 */
@implementation TMBLastFm_User_GetTopTracks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetTopTracks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetTopTracks"] autorelease];
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
		TMBLastFm_User_GetTopTracks_ResultSet *results = [[[TMBLastFm_User_GetTopTracks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopTracks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetTopTracks_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetTopTracks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Share Choreo.
 */
@implementation TMBLastFm_Artist_Share_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) An optional message to send with the recommendation. If not supplied a default message will be used.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Public input for this Choreo.
	*(optional, boolean) Optionally show in the sharing users activity feed. Defaults to 0 (false).
	 */
	-(void)setPublic:(NSString*)Public {
		[super setInput:@"Public" toValue:Public];
	}

	/*!
	 * Set the value of the Recipient input for this Choreo.
	*(string) A comma delimited list of email addresses or Last.fm usernames. Maximum is 10.
	 */
	-(void)setRecipient:(NSString*)Recipient {
		[super setInput:@"Recipient" toValue:Recipient];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Share Choreo.
 */
@implementation TMBLastFm_Artist_Share_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to share an artist with Last.fm users or other friends.
 */
@implementation TMBLastFm_Artist_Share

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_Share Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/Share"] autorelease];
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
		TMBLastFm_Artist_Share_ResultSet *results = [[[TMBLastFm_Artist_Share_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Share Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_Share_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_Share_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopAlbums Choreo.
 */
@implementation TMBLastFm_User_GetTopAlbums_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Period input for this Choreo.
	*(optional, string) The time period over which to retrieve top albums for. Valid values are: overall, 7day, 3month, 6month, 12month. Defaults to 'overall'.
	 */
	-(void)setPeriod:(NSString*)Period {
		[super setInput:@"Period" toValue:Period];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The Last.fm username to fetch top albums for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopAlbums Choreo.
 */
@implementation TMBLastFm_User_GetTopAlbums_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top albums listened to by a user.
 */
@implementation TMBLastFm_User_GetTopAlbums

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetTopAlbums Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetTopAlbums"] autorelease];
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
		TMBLastFm_User_GetTopAlbums_ResultSet *results = [[[TMBLastFm_User_GetTopAlbums_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopAlbums Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetTopAlbums_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetTopAlbums_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEvents Choreo.
 */
@implementation TMBLastFm_Artist_GetEvents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the FestivalsOnly input for this Choreo.
	*(optional, boolean) Whether only festivals should be returned, or all events. Defaults to 0 (false).
	 */
	-(void)setFestivalsOnly:(NSString*)FestivalsOnly {
		[super setInput:@"FestivalsOnly" toValue:FestivalsOnly];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEvents Choreo.
 */
@implementation TMBLastFm_Artist_GetEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of upcoming events for this artist.
 */
@implementation TMBLastFm_Artist_GetEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetEvents"] autorelease];
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
		TMBLastFm_Artist_GetEvents_ResultSet *results = [[[TMBLastFm_Artist_GetEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetEvents_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyArtistChart Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyArtistChart_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EndTimestamp input for this Choreo.
	*(optional, date) End timestamp at which the chart should end on, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setEndTimestamp:(NSString*)EndTimestamp {
		[super setInput:@"EndTimestamp" toValue:EndTimestamp];
	}

	/*!
	 * Set the value of the StartTimestamp input for this Choreo.
	*(optional, date) Beginning timestamp at which the chart should start from, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setStartTimestamp:(NSString*)StartTimestamp {
		[super setInput:@"StartTimestamp" toValue:StartTimestamp];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the charts of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyArtistChart Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyArtistChart_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an artist chart for a user profile, for a given date range.
 */
@implementation TMBLastFm_User_GetWeeklyArtistChart

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetWeeklyArtistChart Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetWeeklyArtistChart"] autorelease];
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
		TMBLastFm_User_GetWeeklyArtistChart_ResultSet *results = [[[TMBLastFm_User_GetWeeklyArtistChart_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeeklyArtistChart Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetWeeklyArtistChart_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetWeeklyArtistChart_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopAlbums Choreo.
 */
@implementation TMBLastFm_Artist_GetTopAlbums_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopAlbums Choreo.
 */
@implementation TMBLastFm_Artist_GetTopAlbums_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top albums for an artist on Last.fm, ordered by popularity.
 */
@implementation TMBLastFm_Artist_GetTopAlbums

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetTopAlbums Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetTopAlbums"] autorelease];
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
		TMBLastFm_Artist_GetTopAlbums_ResultSet *results = [[[TMBLastFm_Artist_GetTopAlbums_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopAlbums Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetTopAlbums_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetTopAlbums_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTags Choreo.
 */
@implementation TMBLastFm_User_GetTopTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limit the number of tags returned. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The Last.fm username to fetch top tags for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTags Choreo.
 */
@implementation TMBLastFm_User_GetTopTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top tags used by a user. 
 */
@implementation TMBLastFm_User_GetTopTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetTopTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetTopTags"] autorelease];
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
		TMBLastFm_User_GetTopTags_ResultSet *results = [[[TMBLastFm_User_GetTopTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetTopTags_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetTopTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBLastFm_Artist_Search_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 30.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBLastFm_Artist_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for an artist by name. Returns artist matches sorted by relevance.
 */
@implementation TMBLastFm_Artist_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/Search"] autorelease];
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
		TMBLastFm_Artist_Search_ResultSet *results = [[[TMBLastFm_Artist_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_Search_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddTags Choreo.
 */
@implementation TMBLastFm_Album_AddTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(string) The album name.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(string) A comma delimited list of user supplied tags to apply to this album. Accepts a maximum of 10 tags.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTags Choreo.
 */
@implementation TMBLastFm_Album_AddTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Tags an album using a list of user supplied tags. 
 */
@implementation TMBLastFm_Album_AddTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_AddTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/AddTags"] autorelease];
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
		TMBLastFm_Album_AddTags_ResultSet *results = [[[TMBLastFm_Album_AddTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_AddTags_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_AddTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTags Choreo.
 */
@implementation TMBLastFm_Artist_GetTopTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTags Choreo.
 */
@implementation TMBLastFm_Artist_GetTopTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top tags for an artist on Last.fm, ordered by popularity.
 */
@implementation TMBLastFm_Artist_GetTopTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetTopTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetTopTags"] autorelease];
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
		TMBLastFm_Artist_GetTopTags_ResultSet *results = [[[TMBLastFm_Artist_GetTopTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetTopTags_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetTopTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEvents Choreo.
 */
@implementation TMBLastFm_User_GetEvents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the FestivalsOnly input for this Choreo.
	*(optional, boolean) Whether only festivals should be returned, or all events. Defaults to 0 to return all events.
	 */
	-(void)setFestivalsOnly:(NSString*)FestivalsOnly {
		[super setInput:@"FestivalsOnly" toValue:FestivalsOnly];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The user to fetch the events for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEvents Choreo.
 */
@implementation TMBLastFm_User_GetEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of upcoming events that a user is attending.
 */
@implementation TMBLastFm_User_GetEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetEvents"] autorelease];
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
		TMBLastFm_User_GetEvents_ResultSet *results = [[[TMBLastFm_User_GetEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetEvents_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBuyLinks Choreo.
 */
@implementation TMBLastFm_Album_GetBuyLinks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(conditional, string) The album name. Required unless providing MbID.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) A country name, as defined by the ISO 3166-1 country names standard.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBuyLinks Choreo.
 */
@implementation TMBLastFm_Album_GetBuyLinks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of Buy Links for a particular Album.
 */
@implementation TMBLastFm_Album_GetBuyLinks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_GetBuyLinks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/GetBuyLinks"] autorelease];
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
		TMBLastFm_Album_GetBuyLinks_ResultSet *results = [[[TMBLastFm_Album_GetBuyLinks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBuyLinks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_GetBuyLinks_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_GetBuyLinks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBLastFm_Album_Search_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(string) The album name.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 30.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBLastFm_Album_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for an album by name. Returns album matches sorted by relevance.
 */
@implementation TMBLastFm_Album_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/Search"] autorelease];
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
		TMBLastFm_Album_Search_ResultSet *results = [[[TMBLastFm_Album_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_Search_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetInfo Choreo.
 */
@implementation TMBLastFm_Artist_GetInfo_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) The language to return the biography in, expressed as an ISO 639 alpha-2 code.
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) The username for the context of the request. If supplied, the user's playcount for this artist is included in the response.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInfo Choreo.
 */
@implementation TMBLastFm_Artist_GetInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the metadata for an artist including biographical data.
 */
@implementation TMBLastFm_Artist_GetInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetInfo"] autorelease];
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
		TMBLastFm_Artist_GetInfo_ResultSet *results = [[[TMBLastFm_Artist_GetInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetInfo_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNewReleases Choreo.
 */
@implementation TMBLastFm_User_GetNewReleases_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the UserRecommendations input for this Choreo.
	*(optional, boolean) If 1, the feed contains new releases based on Last.fm's artist recommendations for this user. Otherwise, it is based on their library.
	 */
	-(void)setUserRecommendations:(NSString*)UserRecommendations {
		[super setInput:@"UserRecommendations" toValue:UserRecommendations];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The Last.fm username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewReleases Choreo.
 */
@implementation TMBLastFm_User_GetNewReleases_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of forthcoming releases based on a user's musical taste. 
 */
@implementation TMBLastFm_User_GetNewReleases

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetNewReleases Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetNewReleases"] autorelease];
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
		TMBLastFm_User_GetNewReleases_ResultSet *results = [[[TMBLastFm_User_GetNewReleases_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNewReleases Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetNewReleases_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetNewReleases_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetImages Choreo.
 */
@implementation TMBLastFm_Artist_GetImages_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(optional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Sort ordering can be either 'popularity' (default) or 'dateadded'.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetImages Choreo.
 */
@implementation TMBLastFm_Artist_GetImages_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of images for a specified artist in a variety of sizes. 
 */
@implementation TMBLastFm_Artist_GetImages

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetImages Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetImages"] autorelease];
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
		TMBLastFm_Artist_GetImages_ResultSet *results = [[[TMBLastFm_Artist_GetImages_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetImages Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetImages_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetImages_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTags Choreo.
 */
@implementation TMBLastFm_Album_GetTopTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(conditional, string) The album name. Required unless providing MbID.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTags Choreo.
 */
@implementation TMBLastFm_Album_GetTopTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the top tags for an album on Last.fm, ordered by popularity. 
 */
@implementation TMBLastFm_Album_GetTopTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_GetTopTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/GetTopTags"] autorelease];
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
		TMBLastFm_Album_GetTopTags_ResultSet *results = [[[TMBLastFm_Album_GetTopTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_GetTopTags_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_GetTopTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Share Choreo.
 */
@implementation TMBLastFm_Album_Share_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(string) The album name.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) An optional message to send with the recommendation. If not supplied a default message will be used.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Public input for this Choreo.
	*(optional, boolean) Optionally show in the sharing users activity feed. Defaults to 0 (false).
	 */
	-(void)setPublic:(NSString*)Public {
		[super setInput:@"Public" toValue:Public];
	}

	/*!
	 * Set the value of the Recipient input for this Choreo.
	*(string) A comma delimited list of email addresses or Last.fm usernames. Maximum is 10.
	 */
	-(void)setRecipient:(NSString*)Recipient {
		[super setInput:@"Recipient" toValue:Recipient];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Share Choreo.
 */
@implementation TMBLastFm_Album_Share_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to share an album with one or more Last.fm users or other friends.
 */
@implementation TMBLastFm_Album_Share

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_Share Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/Share"] autorelease];
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
		TMBLastFm_Album_Share_ResultSet *results = [[[TMBLastFm_Album_Share_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Share Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_Share_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_Share_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTags Choreo.
 */
@implementation TMBLastFm_Artist_GetTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The last.fm username to use for the lookup.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTags Choreo.
 */
@implementation TMBLastFm_Artist_GetTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the tags applied by an individual user to an artist on Last.fm.
 */
@implementation TMBLastFm_Artist_GetTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetTags"] autorelease];
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
		TMBLastFm_Artist_GetTags_ResultSet *results = [[[TMBLastFm_Artist_GetTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetTags_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetShouts Choreo.
 */
@implementation TMBLastFm_Album_GetShouts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(conditional, string) The album title. Required unless providing MbID.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to first page.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShouts Choreo.
 */
@implementation TMBLastFm_Album_GetShouts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of shouts for a specified album.
 */
@implementation TMBLastFm_Album_GetShouts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_GetShouts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/GetShouts"] autorelease];
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
		TMBLastFm_Album_GetShouts_ResultSet *results = [[[TMBLastFm_Album_GetShouts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetShouts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_GetShouts_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_GetShouts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopArtists Choreo.
 */
@implementation TMBLastFm_User_GetTopArtists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Period input for this Choreo.
	*(optional, string) The time period over which to retrieve top artists for. Valid values are: overall, 7day, 3month, 6month, 12month. Defaults to 'overall'.
	 */
	-(void)setPeriod:(NSString*)Period {
		[super setInput:@"Period" toValue:Period];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The Last.fm username to fetch top artists for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopArtists Choreo.
 */
@implementation TMBLastFm_User_GetTopArtists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top artists listened to by a user.
 */
@implementation TMBLastFm_User_GetTopArtists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetTopArtists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetTopArtists"] autorelease];
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
		TMBLastFm_User_GetTopArtists_ResultSet *results = [[[TMBLastFm_User_GetTopArtists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopArtists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetTopArtists_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetTopArtists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCorrection Choreo.
 */
@implementation TMBLastFm_Artist_GetCorrection_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name to correct.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCorrection Choreo.
 */
@implementation TMBLastFm_Artist_GetCorrection_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to check whether the supplied artist has a correction to a canonical artist.
 */
@implementation TMBLastFm_Artist_GetCorrection

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetCorrection Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetCorrection"] autorelease];
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
		TMBLastFm_Artist_GetCorrection_ResultSet *results = [[[TMBLastFm_Artist_GetCorrection_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCorrection Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetCorrection_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetCorrection_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTags Choreo.
 */
@implementation TMBLastFm_Album_GetTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(conditional, string) The album name. Required unless providing MbID.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The last.fm username to lookup.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTags Choreo.
 */
@implementation TMBLastFm_Album_GetTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the tags applied by an individual user to an album on Last.fm.
 */
@implementation TMBLastFm_Album_GetTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_GetTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/GetTags"] autorelease];
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
		TMBLastFm_Album_GetTags_ResultSet *results = [[[TMBLastFm_Album_GetTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_GetTags_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_GetTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPastEvents Choreo.
 */
@implementation TMBLastFm_User_GetPastEvents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The username to fetch the events for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPastEvents Choreo.
 */
@implementation TMBLastFm_User_GetPastEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a paginated list of all events a user has attended in the past. 
 */
@implementation TMBLastFm_User_GetPastEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetPastEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetPastEvents"] autorelease];
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
		TMBLastFm_User_GetPastEvents_ResultSet *results = [[[TMBLastFm_User_GetPastEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPastEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetPastEvents_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetPastEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFriends Choreo.
 */
@implementation TMBLastFm_User_GetFriends_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the RecentTracks input for this Choreo.
	*(optional, boolean) Whether or not to include information about friends' recent listening in the response. Defaults to 0 for false.
	 */
	-(void)setRecentTracks:(NSString*)RecentTracks {
		[super setInput:@"RecentTracks" toValue:RecentTracks];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the friends of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriends Choreo.
 */
@implementation TMBLastFm_User_GetFriends_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the user's friends on Last.fm.
 */
@implementation TMBLastFm_User_GetFriends

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetFriends Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetFriends"] autorelease];
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
		TMBLastFm_User_GetFriends_ResultSet *results = [[[TMBLastFm_User_GetFriends_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFriends Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetFriends_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetFriends_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveTag Choreo.
 */
@implementation TMBLastFm_Artist_RemoveTag_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(string) A single user tag to remove from this artist.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveTag Choreo.
 */
@implementation TMBLastFm_Artist_RemoveTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a user's tag from an artist.
 */
@implementation TMBLastFm_Artist_RemoveTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_RemoveTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/RemoveTag"] autorelease];
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
		TMBLastFm_Artist_RemoveTag_ResultSet *results = [[[TMBLastFm_Artist_RemoveTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_RemoveTag_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_RemoveTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecommendedEvents Choreo.
 */
@implementation TMBLastFm_User_GetRecommendedEvents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to first page.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecommendedEvents Choreo.
 */
@implementation TMBLastFm_User_GetRecommendedEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a paginated list of all events recommended to a user by Last.fm, based on their listening profile. 
 */
@implementation TMBLastFm_User_GetRecommendedEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetRecommendedEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetRecommendedEvents"] autorelease];
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
		TMBLastFm_User_GetRecommendedEvents_ResultSet *results = [[[TMBLastFm_User_GetRecommendedEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecommendedEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetRecommendedEvents_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetRecommendedEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPersonalTags Choreo.
 */
@implementation TMBLastFm_User_GetPersonalTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(string) The tag you're interested in.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the TaggingType input for this Choreo.
	*(string) The type of items which have been tagged. Valid values are: artist, album, track.
	 */
	-(void)setTaggingType:(NSString*)TaggingType {
		[super setInput:@"TaggingType" toValue:TaggingType];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The user who performed the taggings.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPersonalTags Choreo.
 */
@implementation TMBLastFm_User_GetPersonalTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a user's personal tags.
 */
@implementation TMBLastFm_User_GetPersonalTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetPersonalTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetPersonalTags"] autorelease];
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
		TMBLastFm_User_GetPersonalTags_ResultSet *results = [[[TMBLastFm_User_GetPersonalTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPersonalTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetPersonalTags_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetPersonalTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetShouts Choreo.
 */
@implementation TMBLastFm_Artist_GetShouts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShouts Choreo.
 */
@implementation TMBLastFm_Artist_GetShouts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of shouts for a specified artist.
 */
@implementation TMBLastFm_Artist_GetShouts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetShouts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetShouts"] autorelease];
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
		TMBLastFm_Artist_GetShouts_ResultSet *results = [[[TMBLastFm_Artist_GetShouts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetShouts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetShouts_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetShouts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyChartList Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyChartList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the charts of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyChartList Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyChartList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of available charts for this user, expressed as date ranges which can be sent to the chart services.
 */
@implementation TMBLastFm_User_GetWeeklyChartList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetWeeklyChartList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetWeeklyChartList"] autorelease];
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
		TMBLastFm_User_GetWeeklyChartList_ResultSet *results = [[[TMBLastFm_User_GetWeeklyChartList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeeklyChartList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetWeeklyChartList_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetWeeklyChartList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopFans Choreo.
 */
@implementation TMBLastFm_Artist_GetTopFans_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopFans Choreo.
 */
@implementation TMBLastFm_Artist_GetTopFans_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top fans for an artist on Last.fm, based on listening data.
 */
@implementation TMBLastFm_Artist_GetTopFans

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetTopFans Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetTopFans"] autorelease];
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
		TMBLastFm_Artist_GetTopFans_ResultSet *results = [[[TMBLastFm_Artist_GetTopFans_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopFans Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetTopFans_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetTopFans_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveTag Choreo.
 */
@implementation TMBLastFm_Album_RemoveTag_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(string) The album name.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(string) A single user tag to remove from this album.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveTag Choreo.
 */
@implementation TMBLastFm_Album_RemoveTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a user's tag from a specified album.
 */
@implementation TMBLastFm_Album_RemoveTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_RemoveTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/RemoveTag"] autorelease];
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
		TMBLastFm_Album_RemoveTag_ResultSet *results = [[[TMBLastFm_Album_RemoveTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_RemoveTag_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_RemoveTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompareUsers Choreo.
 */
@implementation TMBLastFm_Tasteometer_CompareUsers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) How many shared artists to display. Defaults to 5.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the User1 input for this Choreo.
	*(string) The first user to compare.
	 */
	-(void)setUser1:(NSString*)User1 {
		[super setInput:@"User1" toValue:User1];
	}

	/*!
	 * Set the value of the User2 input for this Choreo.
	*(string) The second user to compare.
	 */
	-(void)setUser2:(NSString*)User2 {
		[super setInput:@"User2" toValue:User2];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompareUsers Choreo.
 */
@implementation TMBLastFm_Tasteometer_CompareUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a Tasteometer score from two user inputs, along with a list of shared artists.
 */
@implementation TMBLastFm_Tasteometer_CompareUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Tasteometer_CompareUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Tasteometer/CompareUsers"] autorelease];
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
		TMBLastFm_Tasteometer_CompareUsers_ResultSet *results = [[[TMBLastFm_Tasteometer_CompareUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompareUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Tasteometer_CompareUsers_Inputs*)newInputSet {
		return [[[TMBLastFm_Tasteometer_CompareUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPodcast Choreo.
 */
@implementation TMBLastFm_Artist_GetPodcast_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(optional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPodcast Choreo.
 */
@implementation TMBLastFm_Artist_GetPodcast_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a podcast of free mp3s based on a specified artist.
 */
@implementation TMBLastFm_Artist_GetPodcast

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetPodcast Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetPodcast"] autorelease];
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
		TMBLastFm_Artist_GetPodcast_ResultSet *results = [[[TMBLastFm_Artist_GetPodcast_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPodcast Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetPodcast_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetPodcast_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNeighbours Choreo.
 */
@implementation TMBLastFm_User_GetNeighbours_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the neighbours of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNeighbours Choreo.
 */
@implementation TMBLastFm_User_GetNeighbours_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of a user's neighbours on Last.fm. 
 */
@implementation TMBLastFm_User_GetNeighbours

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetNeighbours Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetNeighbours"] autorelease];
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
		TMBLastFm_User_GetNeighbours_ResultSet *results = [[[TMBLastFm_User_GetNeighbours_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNeighbours Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetNeighbours_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetNeighbours_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTracks Choreo.
 */
@implementation TMBLastFm_Artist_GetTopTracks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTracks Choreo.
 */
@implementation TMBLastFm_Artist_GetTopTracks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the top tracks by an artist on Last.fm, ordered by popularity.
 */
@implementation TMBLastFm_Artist_GetTopTracks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetTopTracks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetTopTracks"] autorelease];
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
		TMBLastFm_Artist_GetTopTracks_ResultSet *results = [[[TMBLastFm_Artist_GetTopTracks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopTracks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetTopTracks_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetTopTracks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSimilar Choreo.
 */
@implementation TMBLastFm_Artist_GetSimilar_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the artist. Required unless providing Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSimilar Choreo.
 */
@implementation TMBLastFm_Artist_GetSimilar_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all the artists similar to the specified artist.
 */
@implementation TMBLastFm_Artist_GetSimilar

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_GetSimilar Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/GetSimilar"] autorelease];
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
		TMBLastFm_Artist_GetSimilar_ResultSet *results = [[[TMBLastFm_Artist_GetSimilar_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSimilar Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_GetSimilar_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_GetSimilar_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddTags Choreo.
 */
@implementation TMBLastFm_Artist_AddTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(string) A comma delimited list of user supplied tags to apply to this artist. Accepts a maximum of 10 tags.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTags Choreo.
 */
@implementation TMBLastFm_Artist_AddTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Tags an artist with one or more user supplied tags. 
 */
@implementation TMBLastFm_Artist_AddTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_AddTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/AddTags"] autorelease];
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
		TMBLastFm_Artist_AddTags_ResultSet *results = [[[TMBLastFm_Artist_AddTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_AddTags_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_AddTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentStations Choreo.
 */
@implementation TMBLastFm_User_GetRecentStations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 10. Maximum is 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to first page.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(required, string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The last.fm username to fetch the recent Stations of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentStations Choreo.
 */
@implementation TMBLastFm_User_GetRecentStations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the recent Stations listened to by this user.
 */
@implementation TMBLastFm_User_GetRecentStations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetRecentStations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetRecentStations"] autorelease];
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
		TMBLastFm_User_GetRecentStations_ResultSet *results = [[[TMBLastFm_User_GetRecentStations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentStations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetRecentStations_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetRecentStations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLovedTracks Choreo.
 */
@implementation TMBLastFm_User_GetLovedTracks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The user name to fetch the loved tracks for.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLovedTracks Choreo.
 */
@implementation TMBLastFm_User_GetLovedTracks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the last 50 tracks loved by a user.
 */
@implementation TMBLastFm_User_GetLovedTracks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetLovedTracks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetLovedTracks"] autorelease];
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
		TMBLastFm_User_GetLovedTracks_ResultSet *results = [[[TMBLastFm_User_GetLovedTracks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLovedTracks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetLovedTracks_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetLovedTracks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPlaylists Choreo.
 */
@implementation TMBLastFm_User_GetPlaylists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The last.fm username to fetch the playlists of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPlaylists Choreo.
 */
@implementation TMBLastFm_User_GetPlaylists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of a user's playlists on Last.fm. 
 */
@implementation TMBLastFm_User_GetPlaylists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetPlaylists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetPlaylists"] autorelease];
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
		TMBLastFm_User_GetPlaylists_ResultSet *results = [[[TMBLastFm_User_GetPlaylists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPlaylists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetPlaylists_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetPlaylists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompareArtists Choreo.
 */
@implementation TMBLastFm_Tasteometer_CompareArtists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist1 input for this Choreo.
	*(string) The first artist to compare.
	 */
	-(void)setArtist1:(NSString*)Artist1 {
		[super setInput:@"Artist1" toValue:Artist1];
	}

	/*!
	 * Set the value of the Artist2 input for this Choreo.
	*(string) The second artist to compare.
	 */
	-(void)setArtist2:(NSString*)Artist2 {
		[super setInput:@"Artist2" toValue:Artist2];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) How many shared artists to display. Defaults to 5.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompareArtists Choreo.
 */
@implementation TMBLastFm_Tasteometer_CompareArtists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a Tasteometer score from two artist inputs.
 */
@implementation TMBLastFm_Tasteometer_CompareArtists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Tasteometer_CompareArtists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Tasteometer/CompareArtists"] autorelease];
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
		TMBLastFm_Tasteometer_CompareArtists_ResultSet *results = [[[TMBLastFm_Tasteometer_CompareArtists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompareArtists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Tasteometer_CompareArtists_Inputs*)newInputSet {
		return [[[TMBLastFm_Tasteometer_CompareArtists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyAlbumChart Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyAlbumChart_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EndTimestamp input for this Choreo.
	*(optional, date) End timestamp at which the chart should end on, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setEndTimestamp:(NSString*)EndTimestamp {
		[super setInput:@"EndTimestamp" toValue:EndTimestamp];
	}

	/*!
	 * Set the value of the StartTimestamp input for this Choreo.
	*(optional, date) Beginning timestamp at which the chart should start from, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setStartTimestamp:(NSString*)StartTimestamp {
		[super setInput:@"StartTimestamp" toValue:StartTimestamp];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the charts of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyAlbumChart Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyAlbumChart_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an album chart for a user profile, for a given date range.
 */
@implementation TMBLastFm_User_GetWeeklyAlbumChart

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetWeeklyAlbumChart Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetWeeklyAlbumChart"] autorelease];
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
		TMBLastFm_User_GetWeeklyAlbumChart_ResultSet *results = [[[TMBLastFm_User_GetWeeklyAlbumChart_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeeklyAlbumChart Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetWeeklyAlbumChart_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetWeeklyAlbumChart_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyTrackChart Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyTrackChart_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EndTimestamp input for this Choreo.
	*(optional, date) End timestamp at which the chart should end on, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setEndTimestamp:(NSString*)EndTimestamp {
		[super setInput:@"EndTimestamp" toValue:EndTimestamp];
	}

	/*!
	 * Set the value of the StartTimestamp input for this Choreo.
	*(optional, date) Beginning timestamp at which the chart should start from, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setStartTimestamp:(NSString*)StartTimestamp {
		[super setInput:@"StartTimestamp" toValue:StartTimestamp];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the charts of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyTrackChart Choreo.
 */
@implementation TMBLastFm_User_GetWeeklyTrackChart_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a track chart for a user profile, for a given date range.
 */
@implementation TMBLastFm_User_GetWeeklyTrackChart

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetWeeklyTrackChart Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetWeeklyTrackChart"] autorelease];
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
		TMBLastFm_User_GetWeeklyTrackChart_ResultSet *results = [[[TMBLastFm_User_GetWeeklyTrackChart_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeeklyTrackChart Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetWeeklyTrackChart_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetWeeklyTrackChart_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentTracks Choreo.
 */
@implementation TMBLastFm_User_GetRecentTracks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EndTimestamp input for this Choreo.
	*(optional, date) End timestamp of a range - only display scrobbles before this time, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setEndTimestamp:(NSString*)EndTimestamp {
		[super setInput:@"EndTimestamp" toValue:EndTimestamp];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50. Maximum is 200.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the StartTimestamp input for this Choreo.
	*(optional, date) Beginning timestamp of a range - only display scrobbles after this time, in UNIX timestamp format. This must be in the UTC time zone.
	 */
	-(void)setStartTimestamp:(NSString*)StartTimestamp {
		[super setInput:@"StartTimestamp" toValue:StartTimestamp];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The last.fm username to fetch the recent tracks of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentTracks Choreo.
 */
@implementation TMBLastFm_User_GetRecentTracks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of the recent tracks listened to by this user.
 */
@implementation TMBLastFm_User_GetRecentTracks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetRecentTracks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetRecentTracks"] autorelease];
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
		TMBLastFm_User_GetRecentTracks_ResultSet *results = [[[TMBLastFm_User_GetRecentTracks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentTracks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetRecentTracks_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetRecentTracks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBannedTracks Choreo.
 */
@implementation TMBLastFm_User_GetBannedTracks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to fetch per page. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(string) The user name associated with the banned tracks you want to retrieve.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBannedTracks Choreo.
 */
@implementation TMBLastFm_User_GetBannedTracks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the tracks banned by a particular user.
 */
@implementation TMBLastFm_User_GetBannedTracks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetBannedTracks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetBannedTracks"] autorelease];
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
		TMBLastFm_User_GetBannedTracks_ResultSet *results = [[[TMBLastFm_User_GetBannedTracks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBannedTracks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetBannedTracks_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetBannedTracks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetInfo Choreo.
 */
@implementation TMBLastFm_Album_GetInfo_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(conditional, string) The album name. Required unless providing MbID.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(conditional, string) The artist name. Required unless providing MbID.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the AutoCorrect input for this Choreo.
	*(optional, boolean) Transform misspelled artist names into correct artist names. The corrected artist name will be returned in the response. Defaults to 0.
	 */
	-(void)setAutoCorrect:(NSString*)AutoCorrect {
		[super setInput:@"AutoCorrect" toValue:AutoCorrect];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) The language to return the biography in, expressed as an ISO 639 alpha-2 code.
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the MbID input for this Choreo.
	*(conditional, string) The musicbrainz id for the album. Required unless providing the Album and Artist.
	 */
	-(void)setMbID:(NSString*)MbID {
		[super setInput:@"MbID" toValue:MbID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) The username for the context of the request. If supplied, the user's playcount for this album is included in the response.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInfo Choreo.
 */
@implementation TMBLastFm_Album_GetInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the metadata for an album on Last.fm using the album and artist name or a musicbrainz id.
 */
@implementation TMBLastFm_Album_GetInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Album_GetInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Album/GetInfo"] autorelease];
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
		TMBLastFm_Album_GetInfo_ResultSet *results = [[[TMBLastFm_Album_GetInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Album_GetInfo_Inputs*)newInputSet {
		return [[[TMBLastFm_Album_GetInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Shout Choreo.
 */
@implementation TMBLastFm_Artist_Shout_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(string) The artist name.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) An optional message to send with the recommendation. If not supplied a default message will be used.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Shout Choreo.
 */
@implementation TMBLastFm_Artist_Shout_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a message in an artist's shoutbox.
 */
@implementation TMBLastFm_Artist_Shout

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_Artist_Shout Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/Artist/Shout"] autorelease];
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
		TMBLastFm_Artist_Shout_ResultSet *results = [[[TMBLastFm_Artist_Shout_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Shout Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_Artist_Shout_Inputs*)newInputSet {
		return [[[TMBLastFm_Artist_Shout_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Shout Choreo.
 */
@implementation TMBLastFm_User_Shout_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) Your Last.fm API Secret.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The message to post to the shoutbox.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the SessionKey input for this Choreo.
	*(required, string) The session key retrieved in the last step of the authorization process.
	 */
	-(void)setSessionKey:(NSString*)SessionKey {
		[super setInput:@"SessionKey" toValue:SessionKey];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The name of the user to shout on.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Shout Choreo.
 */
@implementation TMBLastFm_User_Shout_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a message in a user's shoutbox 
 */
@implementation TMBLastFm_User_Shout

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_Shout Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/Shout"] autorelease];
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
		TMBLastFm_User_Shout_ResultSet *results = [[[TMBLastFm_User_Shout_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Shout Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_Shout_Inputs*)newInputSet {
		return [[[TMBLastFm_User_Shout_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetArtistTracks Choreo.
 */
@implementation TMBLastFm_User_GetArtistTracks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) Your Last.fm API Key.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Artist input for this Choreo.
	*(required, string) The artist name you are interested in.
	 */
	-(void)setArtist:(NSString*)Artist {
		[super setInput:@"Artist" toValue:Artist];
	}

	/*!
	 * Set the value of the EndTimestamp input for this Choreo.
	*(optional, date) A unix timestamp to end at.
	 */
	-(void)setEndTimestamp:(NSString*)EndTimestamp {
		[super setInput:@"EndTimestamp" toValue:EndTimestamp];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to fetch. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the StartTimestamp input for this Choreo.
	*(optional, date) A unix timestamp to start at.
	 */
	-(void)setStartTimestamp:(NSString*)StartTimestamp {
		[super setInput:@"StartTimestamp" toValue:StartTimestamp];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The last.fm username to fetch the recent tracks of.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetArtistTracks Choreo.
 */
@implementation TMBLastFm_User_GetArtistTracks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Last.fm.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of tracks by a given artist scrobbled by this user, including scrobble time.
 */
@implementation TMBLastFm_User_GetArtistTracks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLastFm_User_GetArtistTracks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LastFm/User/GetArtistTracks"] autorelease];
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
		TMBLastFm_User_GetArtistTracks_ResultSet *results = [[[TMBLastFm_User_GetArtistTracks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetArtistTracks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLastFm_User_GetArtistTracks_Inputs*)newInputSet {
		return [[[TMBLastFm_User_GetArtistTracks_Inputs alloc] init] autorelease];
	}
@end
	