/*!
 * @TMBLinkedIn.m
 *
 * Execute Choreographies from the Temboo LinkedIn bundle.
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

#import "TMBLinkedIn.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetSuggestedJobs Choreo.
 */
@implementation TMBLinkedIn_Jobs_GetSuggestedJobs_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSuggestedJobs Choreo.
 */
@implementation TMBLinkedIn_Jobs_GetSuggestedJobs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of job suggestions for the current user.
 */
@implementation TMBLinkedIn_Jobs_GetSuggestedJobs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_GetSuggestedJobs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/GetSuggestedJobs"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_GetSuggestedJobs_ResultSet *results = [[[TMBLinkedIn_Jobs_GetSuggestedJobs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSuggestedJobs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_GetSuggestedJobs_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_GetSuggestedJobs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfileByID Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CompanyID input for this Choreo.
	*(required, integer) A LinkedIn assigned ID associated with the company that you want to retrieve.
	 */
	-(void)setCompanyID:(NSString*)CompanyID {
		[super setInput:@"CompanyID" toValue:CompanyID];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfileByID Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a company profile by ID.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Companies_GetCompanyProfileByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Companies/GetCompanyProfileByID"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Companies_GetCompanyProfileByID_ResultSet *results = [[[TMBLinkedIn_Companies_GetCompanyProfileByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyProfileByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Companies_GetCompanyProfileByID_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Companies_GetCompanyProfileByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchJobsByZipcodeAndCountryCode Choreo.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specify the number of jobs to be returned.  Default is 10.  The maximum is 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(optional, string) Enter an ISO 3166 country code.  Default is set to U.S. (US).
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(required, integer) Enter a postal (zip) code.  Don't forget to also set the CountryCode variable.
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Specify the ordering of results. Enter R (for relationship from job to member); DA (dated posted in ascending order); DO (job posted in descending order).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJobsByZipcodeAndCountryCode Choreo.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve jobs filtered by zipcode (postal code) and country code.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/SearchJobsByZipcodeAndCountryCode"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_ResultSet *results = [[[TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchJobsByZipcodeAndCountryCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_SearchJobsByZipcodeAndCountryCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetJobs Choreo.
 */
@implementation TMBLinkedIn_Jobs_GetJobs_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the JobID input for this Choreo.
	*(required, integer) A LinkedIn assigned job ID.
	 */
	-(void)setJobID:(NSString*)JobID {
		[super setInput:@"JobID" toValue:JobID];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetJobs Choreo.
 */
@implementation TMBLinkedIn_Jobs_GetJobs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Tumblr in XML format
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a listed LinkedIn job.
 */
@implementation TMBLinkedIn_Jobs_GetJobs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_GetJobs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/GetJobs"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_GetJobs_ResultSet *results = [[[TMBLinkedIn_Jobs_GetJobs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetJobs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_GetJobs_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_GetJobs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateShare Choreo.
 */
@implementation TMBLinkedIn_ShareAndSocialStream_CreateShare_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(conditional, string) The text of the member's comment. Required unless providing Title and URL for a shared post.
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description of the shared content.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ImageURL input for this Choreo.
	*(optional, string) The URL for the image of the shared content.
	 */
	-(void)setImageURL:(NSString*)ImageURL {
		[super setInput:@"ImageURL" toValue:ImageURL];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(conditional, string) The title of the shared content. Required unless providing a Comment.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(conditional, string) The URL for the shared content. Required unless providing a Comment.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Visibility input for this Choreo.
	*(optional, string) Determines if the post will be visible to everyone, or only those who are connected to you. Valid values are: "anyone" or "connections-only" (the default).
	 */
	-(void)setVisibility:(NSString*)Visibility {
		[super setInput:@"Visibility" toValue:Visibility];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateShare Choreo.
 */
@implementation TMBLinkedIn_ShareAndSocialStream_CreateShare_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LinkedIn.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to share content on behalf of a LinkedIn member.
 */
@implementation TMBLinkedIn_ShareAndSocialStream_CreateShare

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_ShareAndSocialStream_CreateShare Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/ShareAndSocialStream/CreateShare"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_ShareAndSocialStream_CreateShare_ResultSet *results = [[[TMBLinkedIn_ShareAndSocialStream_CreateShare_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateShare Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_ShareAndSocialStream_CreateShare_Inputs*)newInputSet {
		return [[[TMBLinkedIn_ShareAndSocialStream_CreateShare_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendMessage Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_SendMessage_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, multiline) Message body. Cannot contain any HTML.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the Recipients input for this Choreo.
	*(required, string) Comma-separated list of recipients by personID. For sending to 'self', put in a tilda (~). Ex.: "~",  "~,XtdrgWytGD".
	 */
	-(void)setRecipients:(NSString*)Recipients {
		[super setInput:@"Recipients" toValue:Recipients];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) Subject line of message.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMessage Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_SendMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ResponseStatusCode" output from an execution of this Choreo.
	 * @return - NSString* (integer) The Response Status Code from LinkedIn. For a successful message, the status code should be 201.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponseStatusCode {
		return [super getOutputByName:@"ResponseStatusCode"];
	}
	
@end

/*!
 * Sends a message to a connected member given the member's personID.
 */
@implementation TMBLinkedIn_PeopleAndConnections_SendMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_PeopleAndConnections_SendMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/PeopleAndConnections/SendMessage"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_PeopleAndConnections_SendMessage_ResultSet *results = [[[TMBLinkedIn_PeopleAndConnections_SendMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_PeopleAndConnections_SendMessage_Inputs*)newInputSet {
		return [[[TMBLinkedIn_PeopleAndConnections_SendMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMemberProfile Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetMemberProfile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMemberProfile Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetMemberProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the standard default profile of the current user.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetMemberProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_PeopleAndConnections_GetMemberProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/PeopleAndConnections/GetMemberProfile"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_PeopleAndConnections_GetMemberProfile_ResultSet *results = [[[TMBLinkedIn_PeopleAndConnections_GetMemberProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMemberProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_PeopleAndConnections_GetMemberProfile_Inputs*)newInputSet {
		return [[[TMBLinkedIn_PeopleAndConnections_GetMemberProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchJobsByKeywords Choreo.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByKeywords_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specify the number of jobs to be returned.  Default is 10.  The maximum is 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Keywords input for this Choreo.
	*(required, string) Limit search by specified keyword(s).
	 */
	-(void)setKeywords:(NSString*)Keywords {
		[super setInput:@"Keywords" toValue:Keywords];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Specify the ordering of results. Enter R (for relationship from job to member); DA (dated posted in ascending order); DO (job posted in descending order).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJobsByKeywords Choreo.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByKeywords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve jobs matching the specified keyword(s).
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByKeywords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_SearchJobsByKeywords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/SearchJobsByKeywords"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_SearchJobsByKeywords_ResultSet *results = [[[TMBLinkedIn_Jobs_SearchJobsByKeywords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchJobsByKeywords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_SearchJobsByKeywords_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_SearchJobsByKeywords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBookmarkedJobs Choreo.
 */
@implementation TMBLinkedIn_Jobs_GetBookmarkedJobs_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBookmarkedJobs Choreo.
 */
@implementation TMBLinkedIn_Jobs_GetBookmarkedJobs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of bookmarked jobs for the current user.
 */
@implementation TMBLinkedIn_Jobs_GetBookmarkedJobs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_GetBookmarkedJobs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/GetBookmarkedJobs"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_GetBookmarkedJobs_ResultSet *results = [[[TMBLinkedIn_Jobs_GetBookmarkedJobs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBookmarkedJobs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_GetBookmarkedJobs_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_GetBookmarkedJobs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBLinkedIn_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	*(optional, string) Used to specify a list of member permissions that you need. If blank, defaults to r_basicprofile. Specify multiple scopes by adding a space between different parameters. Ex: "r_fullprofile r_network".
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBLinkedIn_OAuth_InitializeOAuth_ResultSet

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

	/*!
	 * Retrieve the value of the "OAuthTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The temporary OAuth Token Secret that can be exchanged for a final token secret using the FinalizeOAuth Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getOAuthTokenSecret {
		return [super getOutputByName:@"OAuthTokenSecret"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBLinkedIn_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/OAuth/InitializeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_OAuth_InitializeOAuth_ResultSet *results = [[[TMBLinkedIn_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBLinkedIn_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetShare Choreo.
 */
@implementation TMBLinkedIn_ShareAndSocialStream_GetShare_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are "xml" (the default) and "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the UpdateKey input for this Choreo.
	*(required, string) The UpdateKey used to retrieve the share. This is returned by the CreateShare Choreo.
	 */
	-(void)setUpdateKey:(NSString*)UpdateKey {
		[super setInput:@"UpdateKey" toValue:UpdateKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShare Choreo.
 */
@implementation TMBLinkedIn_ShareAndSocialStream_GetShare_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from LinkedIn.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a newly created shared item.
 */
@implementation TMBLinkedIn_ShareAndSocialStream_GetShare

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_ShareAndSocialStream_GetShare Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/ShareAndSocialStream/GetShare"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_ShareAndSocialStream_GetShare_ResultSet *results = [[[TMBLinkedIn_ShareAndSocialStream_GetShare_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetShare Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_ShareAndSocialStream_GetShare_Inputs*)newInputSet {
		return [[[TMBLinkedIn_ShareAndSocialStream_GetShare_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserConnections Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetUserConnections_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserConnections Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetUserConnections_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of connections associated with the profile of the current user.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetUserConnections

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_PeopleAndConnections_GetUserConnections Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/PeopleAndConnections/GetUserConnections"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_PeopleAndConnections_GetUserConnections_ResultSet *results = [[[TMBLinkedIn_PeopleAndConnections_GetUserConnections_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserConnections Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_PeopleAndConnections_GetUserConnections_Inputs*)newInputSet {
		return [[[TMBLinkedIn_PeopleAndConnections_GetUserConnections_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SuggestedCompaniesToFollow Choreo.
 */
@implementation TMBLinkedIn_Companies_SuggestedCompaniesToFollow_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SuggestedCompaniesToFollow Choreo.
 */
@implementation TMBLinkedIn_Companies_SuggestedCompaniesToFollow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of suggested companies to be followed by this user.
 */
@implementation TMBLinkedIn_Companies_SuggestedCompaniesToFollow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Companies_SuggestedCompaniesToFollow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Companies/SuggestedCompaniesToFollow"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Companies_SuggestedCompaniesToFollow_ResultSet *results = [[[TMBLinkedIn_Companies_SuggestedCompaniesToFollow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SuggestedCompaniesToFollow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Companies_SuggestedCompaniesToFollow_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Companies_SuggestedCompaniesToFollow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfiles Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfiles_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Companies input for this Choreo.
	*(required, string) A comma separated list of company IDs or universal-name key/value pairs. IDs and names can be mixed also. For example: 812686,universal-name=linkedin,universal-name=apple.
	 */
	-(void)setCompanies:(NSString*)Companies {
		[super setInput:@"Companies" toValue:Companies];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfiles Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve multiple company profiles using a given list of company IDs or names.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Companies_GetCompanyProfiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Companies/GetCompanyProfiles"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Companies_GetCompanyProfiles_ResultSet *results = [[[TMBLinkedIn_Companies_GetCompanyProfiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyProfiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Companies_GetCompanyProfiles_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Companies_GetCompanyProfiles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the BookmarkAJob Choreo.
 */
@implementation TMBLinkedIn_Jobs_BookmarkAJob_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the JobID input for this Choreo.
	*(required, integer) Enter a LinkedIn job ID.
	 */
	-(void)setJobID:(NSString*)JobID {
		[super setInput:@"JobID" toValue:JobID];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BookmarkAJob Choreo.
 */
@implementation TMBLinkedIn_Jobs_BookmarkAJob_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Bookmark a job listed on LinkedIn.
 */
@implementation TMBLinkedIn_Jobs_BookmarkAJob

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_BookmarkAJob Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/BookmarkAJob"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_BookmarkAJob_ResultSet *results = [[[TMBLinkedIn_Jobs_BookmarkAJob_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the BookmarkAJob Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_BookmarkAJob_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_BookmarkAJob_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfileByEmailDomain Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EmailDomain input for this Choreo.
	*(required, string) An email domain used to search for a company (i.e. apple.com).
	 */
	-(void)setEmailDomain:(NSString*)EmailDomain {
		[super setInput:@"EmailDomain" toValue:EmailDomain];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfileByEmailDomain Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a company profile by email domain.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Companies/GetCompanyProfileByEmailDomain"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_ResultSet *results = [[[TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyProfileByEmailDomain Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Companies_GetCompanyProfileByEmailDomain_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetConnectionsByMemberID Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MemberID input for this Choreo.
	*(required, integer) Enter a LinkedIn Member ID.
	 */
	-(void)setMemberID:(NSString*)MemberID {
		[super setInput:@"MemberID" toValue:MemberID];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetConnectionsByMemberID Choreo.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve all connections linked to a  member ID.
 */
@implementation TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/PeopleAndConnections/GetConnectionsByMemberID"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_ResultSet *results = [[[TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetConnectionsByMemberID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_Inputs*)newInputSet {
		return [[[TMBLinkedIn_PeopleAndConnections_GetConnectionsByMemberID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompaniesFollowed Choreo.
 */
@implementation TMBLinkedIn_Companies_CompaniesFollowed_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompaniesFollowed Choreo.
 */
@implementation TMBLinkedIn_Companies_CompaniesFollowed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of companies followed by the current user.
 */
@implementation TMBLinkedIn_Companies_CompaniesFollowed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Companies_CompaniesFollowed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Companies/CompaniesFollowed"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Companies_CompaniesFollowed_ResultSet *results = [[[TMBLinkedIn_Companies_CompaniesFollowed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompaniesFollowed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Companies_CompaniesFollowed_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Companies_CompaniesFollowed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyProfileByName Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByName_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CompanyName input for this Choreo.
	*(required, integer) The unique string identifier for a company.
	 */
	-(void)setCompanyName:(NSString*)CompanyName {
		[super setInput:@"CompanyName" toValue:CompanyName];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyProfileByName Choreo.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a company profile by entering a company's universal-name.
 */
@implementation TMBLinkedIn_Companies_GetCompanyProfileByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Companies_GetCompanyProfileByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Companies/GetCompanyProfileByName"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Companies_GetCompanyProfileByName_ResultSet *results = [[[TMBLinkedIn_Companies_GetCompanyProfileByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyProfileByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Companies_GetCompanyProfileByName_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Companies_GetCompanyProfileByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteJobBookmark Choreo.
 */
@implementation TMBLinkedIn_Jobs_DeleteJobBookmark_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the JobID input for this Choreo.
	*(required, integer) Enter a LinkedIn job ID.
	 */
	-(void)setJobID:(NSString*)JobID {
		[super setInput:@"JobID" toValue:JobID];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteJobBookmark Choreo.
 */
@implementation TMBLinkedIn_Jobs_DeleteJobBookmark_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Stores the response from LinkedIn. Note that for a successful delete operation, no content is a returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a job bookmark by specifying a job ID.
 */
@implementation TMBLinkedIn_Jobs_DeleteJobBookmark

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_DeleteJobBookmark Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/DeleteJobBookmark"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_DeleteJobBookmark_ResultSet *results = [[[TMBLinkedIn_Jobs_DeleteJobBookmark_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteJobBookmark Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_DeleteJobBookmark_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_DeleteJobBookmark_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchJobsByJobTitle Choreo.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByJobTitle_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specify the number of jobs to be returned.  Default is 10.  The maximum is 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the JobTitle input for this Choreo.
	*(required, integer) Search by job title.
	 */
	-(void)setJobTitle:(NSString*)JobTitle {
		[super setInput:@"JobTitle" toValue:JobTitle];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Specify the ordering of results. Enter R (for relationship from job to member); DA (dated posted in ascending order); DO (job posted in descending order).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJobsByJobTitle Choreo.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByJobTitle_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from LinkedIn in XML format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve jobs matching specified job title.
 */
@implementation TMBLinkedIn_Jobs_SearchJobsByJobTitle

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_Jobs_SearchJobsByJobTitle Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/Jobs/SearchJobsByJobTitle"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_Jobs_SearchJobsByJobTitle_ResultSet *results = [[[TMBLinkedIn_Jobs_SearchJobsByJobTitle_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchJobsByJobTitle Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_Jobs_SearchJobsByJobTitle_Inputs*)newInputSet {
		return [[[TMBLinkedIn_Jobs_SearchJobsByJobTitle_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBLinkedIn_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by LinkedIn (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuthTokenSecret returned by the InitializeOAuth Choreo.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by LinkedIn (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
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
@implementation TMBLinkedIn_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token Secret retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessTokenSecret {
		return [super getOutputByName:@"AccessTokenSecret"];
	}

	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time in seconds of the access token retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a LinkedIn access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBLinkedIn_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLinkedIn_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/LinkedIn/OAuth/FinalizeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBLinkedIn_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBLinkedIn_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLinkedIn_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBLinkedIn_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end
	