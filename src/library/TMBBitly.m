/*!
 * @TMBBitly.m
 *
 * Execute Choreographies from the Temboo Bitly bundle.
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

#import "TMBBitly.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ExpandURL Choreo.
 */
@implementation TMBBitly_Links_ExpandURL_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Defaults to simple "txt" format which will just return the expanded URL. "json" and "xml" are also supported.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShortURL input for this Choreo.
	*(required, string) One or more bitly links.
	 */
	-(void)setShortURL:(NSString*)ShortURL {
		[super setInput:@"ShortURL" toValue:ShortURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ExpandURL Choreo.
 */
@implementation TMBBitly_Links_ExpandURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the target (long) URL given a shortened bitly URL.
 */
@implementation TMBBitly_Links_ExpandURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_Links_ExpandURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/Links/ExpandURL"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_Links_ExpandURL_ResultSet *results = [[[TMBBitly_Links_ExpandURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ExpandURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_Links_ExpandURL_Inputs*)newInputSet {
		return [[[TMBBitly_Links_ExpandURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLinkHistory Choreo.
 */
@implementation TMBBitly_UserInfo_GetLinkHistory_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Archived input for this Choreo.
	*(optional, string) Accepted values are: on|off|both.  Whether to include or exclude archived history entries. (on = return only archived history entries). Defaults to "off".
	 */
	-(void)setArchived:(NSString*)Archived {
		[super setInput:@"Archived" toValue:Archived];
	}

	/*!
	 * Set the value of the CreatedAfter input for this Choreo.
	*(optional, date) An epoch timestamp representing a date to filter with.
	 */
	-(void)setCreatedAfter:(NSString*)CreatedAfter {
		[super setInput:@"CreatedAfter" toValue:CreatedAfter];
	}

	/*!
	 * Set the value of the CreatedBefore input for this Choreo.
	*(optional, date) An epoch timestamp representing a date to filter with.
	 */
	-(void)setCreatedBefore:(NSString*)CreatedBefore {
		[super setInput:@"CreatedBefore" toValue:CreatedBefore];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) An integer in the range of 1 to 100, specifying the max number of results to return. Defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(optional, string) The bitly link to return metadata for (when spcified, overrides all other options).
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the ModifiedAfter input for this Choreo.
	*(optional, date) An epoch timestamp representing a date to filter with.
	 */
	-(void)setModifiedAfter:(NSString*)ModifiedAfter {
		[super setInput:@"ModifiedAfter" toValue:ModifiedAfter];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, string) An integer specifying the numbered result at which to start (used for pagination).
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Private input for this Choreo.
	*(optional, string) Accepted values are: on|off|both.  Whether to include or exclude archived history entries. (on = return only archived history entries). Defaults to "both".
	 */
	-(void)setPrivate:(NSString*)Private {
		[super setInput:@"Private" toValue:Private];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(optional, string) The user for whom to retrieve history entries (if different from authenticated user).
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLinkHistory Choreo.
 */
@implementation TMBBitly_UserInfo_GetLinkHistory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns entries from a user's link history in reverse chronological order.
 */
@implementation TMBBitly_UserInfo_GetLinkHistory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_UserInfo_GetLinkHistory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/UserInfo/GetLinkHistory"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_UserInfo_GetLinkHistory_ResultSet *results = [[[TMBBitly_UserInfo_GetLinkHistory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLinkHistory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_UserInfo_GetLinkHistory_Inputs*)newInputSet {
		return [[[TMBBitly_UserInfo_GetLinkHistory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetClicksForLink Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetClicksForLink_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(required, string) A bitly link.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Rollup input for this Choreo.
	*(optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
	 */
	-(void)setRollup:(NSString*)Rollup {
		[super setInput:@"Rollup" toValue:Rollup];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the UnitName input for this Choreo.
	*(optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
	 */
	-(void)setUnitName:(NSString*)UnitName {
		[super setInput:@"UnitName" toValue:UnitName];
	}

	/*!
	 * Set the value of the UnitValue input for this Choreo.
	*(optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
	 */
	-(void)setUnitValue:(NSString*)UnitValue {
		[super setInput:@"UnitValue" toValue:UnitValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetClicksForLink Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetClicksForLink_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the number of clicks on a single bitly link.
 */
@implementation TMBBitly_LinkMetrics_GetClicksForLink

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_LinkMetrics_GetClicksForLink Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/LinkMetrics/GetClicksForLink"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_LinkMetrics_GetClicksForLink_ResultSet *results = [[[TMBBitly_LinkMetrics_GetClicksForLink_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetClicksForLink Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_LinkMetrics_GetClicksForLink_Inputs*)newInputSet {
		return [[[TMBBitly_LinkMetrics_GetClicksForLink_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShortenURL Choreo.
 */
@implementation TMBBitly_Links_ShortenURL_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the LongURL input for this Choreo.
	*(required, string) The long url that you want to shorten.
	 */
	-(void)setLongURL:(NSString*)LongURL {
		[super setInput:@"LongURL" toValue:LongURL];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Defaults to simple "txt" format which will just return the shortened URL. "json" and "xml" are also supported.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShortenURL Choreo.
 */
@implementation TMBBitly_Links_ShortenURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a shortened URL for a long URL that you provide.
 */
@implementation TMBBitly_Links_ShortenURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_Links_ShortenURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/Links/ShortenURL"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_Links_ShortenURL_ResultSet *results = [[[TMBBitly_Links_ShortenURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShortenURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_Links_ShortenURL_Inputs*)newInputSet {
		return [[[TMBBitly_Links_ShortenURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLinkInfo Choreo.
 */
@implementation TMBBitly_Links_GetLinkInfo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShortURL input for this Choreo.
	*(required, string) One or more bitly links.
	 */
	-(void)setShortURL:(NSString*)ShortURL {
		[super setInput:@"ShortURL" toValue:ShortURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLinkInfo Choreo.
 */
@implementation TMBBitly_Links_GetLinkInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the page title for a given bitly link.
 */
@implementation TMBBitly_Links_GetLinkInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_Links_GetLinkInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/Links/GetLinkInfo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_Links_GetLinkInfo_ResultSet *results = [[[TMBBitly_Links_GetLinkInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLinkInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_Links_GetLinkInfo_Inputs*)newInputSet {
		return [[[TMBBitly_Links_GetLinkInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetEncodersCount Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetEncodersCount_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(required, string) A bitly link.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEncodersCount Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetEncodersCount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the count of users who have shortened a specified bitly link.
 */
@implementation TMBBitly_LinkMetrics_GetEncodersCount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_LinkMetrics_GetEncodersCount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/LinkMetrics/GetEncodersCount"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_LinkMetrics_GetEncodersCount_ResultSet *results = [[[TMBBitly_LinkMetrics_GetEncodersCount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetEncodersCount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_LinkMetrics_GetEncodersCount_Inputs*)newInputSet {
		return [[[TMBBitly_LinkMetrics_GetEncodersCount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBBitly_OAuth_FinalizeOAuth_Inputs

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
	*(required, string) The Client ID provided by Bitly after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Bitly after registering your application.
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
@implementation TMBBitly_OAuth_FinalizeOAuth_ResultSet

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
	 * Retrieve the value of the "Login" output from an execution of this Choreo.
	 * @return - NSString* (string) The Bitly username associated with the AccessToken.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLogin {
		return [super getOutputByName:@"Login"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Bitly access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBBitly_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/OAuth/FinalizeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBBitly_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBBitly_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCountryMetricsForLink Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetCountryMetricsForLink_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(required, string) A bitly link.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Rollup input for this Choreo.
	*(optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
	 */
	-(void)setRollup:(NSString*)Rollup {
		[super setInput:@"Rollup" toValue:Rollup];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the UnitName input for this Choreo.
	*(optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
	 */
	-(void)setUnitName:(NSString*)UnitName {
		[super setInput:@"UnitName" toValue:UnitName];
	}

	/*!
	 * Set the value of the UnitValue input for this Choreo.
	*(optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
	 */
	-(void)setUnitValue:(NSString*)UnitValue {
		[super setInput:@"UnitValue" toValue:UnitValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCountryMetricsForLink Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetCountryMetricsForLink_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns metrics about the countries referring click traffic to a single bitly link.
 */
@implementation TMBBitly_LinkMetrics_GetCountryMetricsForLink

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_LinkMetrics_GetCountryMetricsForLink Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/LinkMetrics/GetCountryMetricsForLink"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_LinkMetrics_GetCountryMetricsForLink_ResultSet *results = [[[TMBBitly_LinkMetrics_GetCountryMetricsForLink_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCountryMetricsForLink Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_LinkMetrics_GetCountryMetricsForLink_Inputs*)newInputSet {
		return [[[TMBBitly_LinkMetrics_GetCountryMetricsForLink_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReferringDomains Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetReferringDomains_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(required, string) A bitly link.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Rollup input for this Choreo.
	*(optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
	 */
	-(void)setRollup:(NSString*)Rollup {
		[super setInput:@"Rollup" toValue:Rollup];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the UnitName input for this Choreo.
	*(optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
	 */
	-(void)setUnitName:(NSString*)UnitName {
		[super setInput:@"UnitName" toValue:UnitName];
	}

	/*!
	 * Set the value of the UnitValue input for this Choreo.
	*(optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
	 */
	-(void)setUnitValue:(NSString*)UnitValue {
		[super setInput:@"UnitValue" toValue:UnitValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferringDomains Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetReferringDomains_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns metrics about the domains referring click traffic to a single bitly link.
 */
@implementation TMBBitly_LinkMetrics_GetReferringDomains

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_LinkMetrics_GetReferringDomains Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/LinkMetrics/GetReferringDomains"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_LinkMetrics_GetReferringDomains_ResultSet *results = [[[TMBBitly_LinkMetrics_GetReferringDomains_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReferringDomains Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_LinkMetrics_GetReferringDomains_Inputs*)newInputSet {
		return [[[TMBBitly_LinkMetrics_GetReferringDomains_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBBitly_OAuth_InitializeOAuth_Inputs

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
	*(required, string) The Client ID provided by Bitly after registering your application.
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

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBBitly_OAuth_InitializeOAuth_ResultSet

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
@implementation TMBBitly_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/OAuth/InitializeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_OAuth_InitializeOAuth_ResultSet *results = [[[TMBBitly_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBBitly_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LinkLookup Choreo.
 */
@implementation TMBBitly_Links_LinkLookup_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) One or more long URLs to lookup.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LinkLookup Choreo.
 */
@implementation TMBBitly_Links_LinkLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Used to lookup a bitly link with a given long URL.
 */
@implementation TMBBitly_Links_LinkLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_Links_LinkLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/Links/LinkLookup"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_Links_LinkLookup_ResultSet *results = [[[TMBBitly_Links_LinkLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LinkLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_Links_LinkLookup_Inputs*)newInputSet {
		return [[[TMBBitly_Links_LinkLookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReferrers Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetReferrers_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The result limit. Defaults to 100. Range is 1 to 1000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(required, string) A bitly link.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Rollup input for this Choreo.
	*(optional, boolean) Accepted values are true or false. When set to true, this returns data for multiple units rolled up to a single result instead of a separate value for each period of time.
	 */
	-(void)setRollup:(NSString*)Rollup {
		[super setInput:@"Rollup" toValue:Rollup];
	}

	/*!
	 * Set the value of the Timestamp input for this Choreo.
	*(optional, date) An epoch timestamp, indicating the most recent time for which to pull metrics.
	 */
	-(void)setTimestamp:(NSString*)Timestamp {
		[super setInput:@"Timestamp" toValue:Timestamp];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) An integer hour offset from UTC (-12..12), or a timezone string. Defaults to "America/New_York".
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the UnitName input for this Choreo.
	*(optional, string) The unit of time that corresponds to query you want to run. Accepted values are: minute, hour, day, week, month, and day. Defaults to "day".
	 */
	-(void)setUnitName:(NSString*)UnitName {
		[super setInput:@"UnitName" toValue:UnitName];
	}

	/*!
	 * Set the value of the UnitValue input for this Choreo.
	*(optional, integer) An integer representing the amount of time to query for. Corresponds to the UnitName input. Defaults to -1 indicating to return all units of time.
	 */
	-(void)setUnitValue:(NSString*)UnitValue {
		[super setInput:@"UnitValue" toValue:UnitValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferrers Choreo.
 */
@implementation TMBBitly_LinkMetrics_GetReferrers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns metrics about the pages referring click traffic to a single bitly link.
 */
@implementation TMBBitly_LinkMetrics_GetReferrers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_LinkMetrics_GetReferrers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/LinkMetrics/GetReferrers"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_LinkMetrics_GetReferrers_ResultSet *results = [[[TMBBitly_LinkMetrics_GetReferrers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReferrers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_LinkMetrics_GetReferrers_Inputs*)newInputSet {
		return [[[TMBBitly_LinkMetrics_GetReferrers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInfo Choreo.
 */
@implementation TMBBitly_UserInfo_GetUserInfo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The oAuth access token provided by Bitly.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FullName input for this Choreo.
	*(optional, string) The users full name value (only available for the authenticated user).
	 */
	-(void)setFullName:(NSString*)FullName {
		[super setInput:@"FullName" toValue:FullName];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(optional, string) The bitly login of the user whose info to look up. If not given, the authenticated user will be used.
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in. Accepted values are "json" or "xml". Defaults to "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInfo Choreo.
 */
@implementation TMBBitly_UserInfo_GetUserInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Bitly.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about a specified user.
 */
@implementation TMBBitly_UserInfo_GetUserInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBitly_UserInfo_GetUserInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Bitly/UserInfo/GetUserInfo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBBitly_UserInfo_GetUserInfo_ResultSet *results = [[[TMBBitly_UserInfo_GetUserInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBitly_UserInfo_GetUserInfo_Inputs*)newInputSet {
		return [[[TMBBitly_UserInfo_GetUserInfo_Inputs alloc] init] autorelease];
	}
@end
	