/*!
 * @TMBAdMob.m
 *
 * Execute Choreographies from the Temboo AdMob bundle.
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

#import "TMBAdMob.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the AdGroupStats Choreo.
 */
@implementation TMBAdMob_AdGroupStats_Inputs

	/*!
	 * Set the value of the AdGroupID input for this Choreo.
	*(required, string) Search for ad groups using this ID.
	 */
	-(void)setAdGroupID:(NSString*)AdGroupID {
		[super setInput:@"AdGroupID" toValue:AdGroupID];
	}

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) Enter search end date in following format: 2011-09-12
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ObjectDimension input for this Choreo.
	*(optional, string) Specify an Ad group to narrow your search.
	 */
	-(void)setObjectDimension:(NSString*)ObjectDimension {
		[super setInput:@"ObjectDimension" toValue:ObjectDimension];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order by the number of impressions. Example: [impressions]=asc
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) Enter search start date in following format: 2011-09-12
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the TimeDimension input for this Choreo.
	*(optional, string) Specify whether stats should be grouped by day, week, or month.
	 */
	-(void)setTimeDimension:(NSString*)TimeDimension {
		[super setInput:@"TimeDimension" toValue:TimeDimension];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdGroupStats Choreo.
 */
@implementation TMBAdMob_AdGroupStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Search for Ad Group statistics by entering their IDs.
 */
@implementation TMBAdMob_AdGroupStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_AdGroupStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/AdGroupStats"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_AdGroupStats_ResultSet *results = [[[TMBAdMob_AdGroupStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AdGroupStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_AdGroupStats_Inputs*)newInputSet {
		return [[[TMBAdMob_AdGroupStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CampaignStats Choreo.
 */
@implementation TMBAdMob_CampaignStats_Inputs

	/*!
	 * Set the value of the CampaignID input for this Choreo.
	*(required, string) Search for ad campaigns using this ID.
	 */
	-(void)setCampaignID:(NSString*)CampaignID {
		[super setInput:@"CampaignID" toValue:CampaignID];
	}

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) Enter search end date in following format: 2011-09-12
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ObjectDimension input for this Choreo.
	*(optional, string) Specify a campaign to group and narrow your search.
	 */
	-(void)setObjectDimension:(NSString*)ObjectDimension {
		[super setInput:@"ObjectDimension" toValue:ObjectDimension];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order by the number of impressions. Example: [impressions]=asc
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) Enter search start date in following format: 2011-09-12
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the TimeDimension input for this Choreo.
	*(optional, string) Specify whether stats should be grouped by day, week, or month.
	 */
	-(void)setTimeDimension:(NSString*)TimeDimension {
		[super setInput:@"TimeDimension" toValue:TimeDimension];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignStats Choreo.
 */
@implementation TMBAdMob_CampaignStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Retrieve campaign stats by ID.
 */
@implementation TMBAdMob_CampaignStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_CampaignStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/CampaignStats"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_CampaignStats_ResultSet *results = [[[TMBAdMob_CampaignStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CampaignStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_CampaignStats_Inputs*)newInputSet {
		return [[[TMBAdMob_CampaignStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SiteSearch Choreo.
 */
@implementation TMBAdMob_SiteSearch_Inputs

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(optional, string) Search for a site matching this ID.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SiteSearch Choreo.
 */
@implementation TMBAdMob_SiteSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Search for sites by specifying their ID.
 */
@implementation TMBAdMob_SiteSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_SiteSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/SiteSearch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_SiteSearch_ResultSet *results = [[[TMBAdMob_SiteSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SiteSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_SiteSearch_Inputs*)newInputSet {
		return [[[TMBAdMob_SiteSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SiteStats Choreo.
 */
@implementation TMBAdMob_SiteStats_Inputs

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) Enter search end date in following format: 2011-09-12
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ObjectDimension input for this Choreo.
	*(optional, string) Specify a site to group and narrow your search.
	 */
	-(void)setObjectDimension:(NSString*)ObjectDimension {
		[super setInput:@"ObjectDimension" toValue:ObjectDimension];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order by the number of impressions. Example: [impressions]=asc
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(optional, string) Search for a site matching this ID.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) Enter search start date in following format: 2011-09-12
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the TimeDimension input for this Choreo.
	*(optional, string) Specify whether stats should be grouped by day, week, or month.
	 */
	-(void)setTimeDimension:(NSString*)TimeDimension {
		[super setInput:@"TimeDimension" toValue:TimeDimension];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SiteStats Choreo.
 */
@implementation TMBAdMob_SiteStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Retrieve site statistics.
 */
@implementation TMBAdMob_SiteStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_SiteStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/SiteStats"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_SiteStats_ResultSet *results = [[[TMBAdMob_SiteStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SiteStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_SiteStats_Inputs*)newInputSet {
		return [[[TMBAdMob_SiteStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AdStats Choreo.
 */
@implementation TMBAdMob_AdStats_Inputs

	/*!
	 * Set the value of the AdID input for this Choreo.
	*(required, string) Search for ads using this ID.
	 */
	-(void)setAdID:(NSString*)AdID {
		[super setInput:@"AdID" toValue:AdID];
	}

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) Enter search end date in following format: 2011-09-12
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ObjectDimension input for this Choreo.
	*(optional, string) Specify a specific Ad to narrow your search.
	 */
	-(void)setObjectDimension:(NSString*)ObjectDimension {
		[super setInput:@"ObjectDimension" toValue:ObjectDimension];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order by the number of impressions. Example: [impressions]=asc
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) Enter search start date in following format: 2011-09-12
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the TimeDimension input for this Choreo.
	*(optional, string) Specify whether stats should be grouped by day, week, or month.
	 */
	-(void)setTimeDimension:(NSString*)TimeDimension {
		[super setInput:@"TimeDimension" toValue:TimeDimension];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdStats Choreo.
 */
@implementation TMBAdMob_AdStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Retrieve ad statistics by specifying IDs.
 */
@implementation TMBAdMob_AdStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_AdStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/AdStats"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_AdStats_ResultSet *results = [[[TMBAdMob_AdStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AdStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_AdStats_Inputs*)newInputSet {
		return [[[TMBAdMob_AdStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CampaignSearch Choreo.
 */
@implementation TMBAdMob_CampaignSearch_Inputs

	/*!
	 * Set the value of the CampaignID input for this Choreo.
	*(optional, string) Search for ad campaigns using this ID.
	 */
	-(void)setCampaignID:(NSString*)CampaignID {
		[super setInput:@"CampaignID" toValue:CampaignID];
	}

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignSearch Choreo.
 */
@implementation TMBAdMob_CampaignSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Search for ad campaigns using IDs.
 */
@implementation TMBAdMob_CampaignSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_CampaignSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/CampaignSearch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_CampaignSearch_ResultSet *results = [[[TMBAdMob_CampaignSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CampaignSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_CampaignSearch_Inputs*)newInputSet {
		return [[[TMBAdMob_CampaignSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Logout Choreo.
 */
@implementation TMBAdMob_Logout_Inputs

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The security token returned by the Login Choreo.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Logout Choreo.
 */
@implementation TMBAdMob_Logout_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from AdMob in XML format
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Logout from AdMob service.
 */
@implementation TMBAdMob_Logout

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_Logout Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/Logout"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_Logout_ResultSet *results = [[[TMBAdMob_Logout_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Logout Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_Logout_Inputs*)newInputSet {
		return [[[TMBAdMob_Logout_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AdSearch Choreo.
 */
@implementation TMBAdMob_AdSearch_Inputs

	/*!
	 * Set the value of the AdGroupID input for this Choreo.
	*(optional, string) Search for ad groups using this ID.
	 */
	-(void)setAdGroupID:(NSString*)AdGroupID {
		[super setInput:@"AdGroupID" toValue:AdGroupID];
	}

	/*!
	 * Set the value of the AdID input for this Choreo.
	*(optional, string) Search for ads using this ID.
	 */
	-(void)setAdID:(NSString*)AdID {
		[super setInput:@"AdID" toValue:AdID];
	}

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdSearch Choreo.
 */
@implementation TMBAdMob_AdSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Search for ads using IDs.
 */
@implementation TMBAdMob_AdSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_AdSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/AdSearch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_AdSearch_ResultSet *results = [[[TMBAdMob_AdSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AdSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_AdSearch_Inputs*)newInputSet {
		return [[[TMBAdMob_AdSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AdGroupSearch Choreo.
 */
@implementation TMBAdMob_AdGroupSearch_Inputs

	/*!
	 * Set the value of the AdGroupID input for this Choreo.
	*(optional, string) Search for ad groups using this ID.
	 */
	-(void)setAdGroupID:(NSString*)AdGroupID {
		[super setInput:@"AdGroupID" toValue:AdGroupID];
	}

	/*!
	 * Set the value of the CampaignID input for this Choreo.
	*(optional, string) Search for ad groups in this specific campaign.
	 */
	-(void)setCampaignID:(NSString*)CampaignID {
		[super setInput:@"CampaignID" toValue:CampaignID];
	}

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) Your AdMob username. Required unless providing a valid Token input.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the IncludeDeleted input for this Choreo.
	*(optional, boolean) If set to 1, ad groups that have been deleted will be included in the search result.
	 */
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted {
		[super setInput:@"IncludeDeleted" toValue:IncludeDeleted];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your Admob password. Required unless providing a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that your want the response to be in. Accepted values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdGroupSearch Choreo.
 */
@implementation TMBAdMob_AdGroupSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from AdMob. Corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when Email and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Search for Ad Groups using IDs.
 */
@implementation TMBAdMob_AdGroupSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_AdGroupSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/AdGroupSearch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_AdGroupSearch_ResultSet *results = [[[TMBAdMob_AdGroupSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AdGroupSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_AdGroupSearch_Inputs*)newInputSet {
		return [[[TMBAdMob_AdGroupSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Login Choreo.
 */
@implementation TMBAdMob_Login_Inputs

	/*!
	 * Set the value of the ClientKey input for this Choreo.
	*(required, string) The Client Key provided by AdMob.
	 */
	-(void)setClientKey:(NSString*)ClientKey {
		[super setInput:@"ClientKey" toValue:ClientKey];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) Your AdMob username.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Admob password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Login Choreo.
 */
@implementation TMBAdMob_Login_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from AdMob in XML format
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (string) The token obtained by running this choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Log into AdMob service and obtain an authorization token.
 */
@implementation TMBAdMob_Login

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBAdMob_Login Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/AdMob/Login"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBAdMob_Login_ResultSet *results = [[[TMBAdMob_Login_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Login Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBAdMob_Login_Inputs*)newInputSet {
		return [[[TMBAdMob_Login_Inputs alloc] init] autorelease];
	}
@end
	