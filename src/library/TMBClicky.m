/*!
 * @TMBClicky.m
 *
 * Execute Choreographies from the Temboo Clicky bundle.
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

#import "TMBClicky.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetAnalyticsByDate Choreo.
 */
@implementation TMBClicky_GetAnalyticsByDate_Inputs

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The date or date range you want to access. Use YYYY-MM-DD format for date and YYYY-MM-DD,YYYY-MM-DD for a range. See docs for more options for this input. Defaults to 'today'.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The maximum number of results that will be returned. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAnalyticsByDate Choreo.
 */
@implementation TMBClicky_GetAnalyticsByDate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves anlaytics for your website for a particular date or date range.
 */
@implementation TMBClicky_GetAnalyticsByDate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_GetAnalyticsByDate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/GetAnalyticsByDate"] autorelease];
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
		TMBClicky_GetAnalyticsByDate_ResultSet *results = [[[TMBClicky_GetAnalyticsByDate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAnalyticsByDate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_GetAnalyticsByDate_Inputs*)newInputSet {
		return [[[TMBClicky_GetAnalyticsByDate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopStatsLastWeek Choreo.
 */
@implementation TMBClicky_TopStatsLastWeek_Inputs

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of data you want to retrieve. Defaults to "pages,links,searches".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopStatsLastWeek Choreo.
 */
@implementation TMBClicky_TopStatsLastWeek_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves last weeks's top pages, links, and searches.
 */
@implementation TMBClicky_TopStatsLastWeek

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_TopStatsLastWeek Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/TopStatsLastWeek"] autorelease];
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
		TMBClicky_TopStatsLastWeek_ResultSet *results = [[[TMBClicky_TopStatsLastWeek_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopStatsLastWeek Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_TopStatsLastWeek_Inputs*)newInputSet {
		return [[[TMBClicky_TopStatsLastWeek_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopStatsLastWeekByDay Choreo.
 */
@implementation TMBClicky_TopStatsLastWeekByDay_Inputs

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of data you want to retrieve. Defaults to "pages,links,searches".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopStatsLastWeekByDay Choreo.
 */
@implementation TMBClicky_TopStatsLastWeekByDay_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves last weeks's top pages, links, and searches, by day.
 */
@implementation TMBClicky_TopStatsLastWeekByDay

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_TopStatsLastWeekByDay Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/TopStatsLastWeekByDay"] autorelease];
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
		TMBClicky_TopStatsLastWeekByDay_ResultSet *results = [[[TMBClicky_TopStatsLastWeekByDay_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopStatsLastWeekByDay Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_TopStatsLastWeekByDay_Inputs*)newInputSet {
		return [[[TMBClicky_TopStatsLastWeekByDay_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SegmentationForVisitorsTodayViaSearch Choreo.
 */
@implementation TMBClicky_SegmentationForVisitorsTodayViaSearch_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records you want to retrieve. Defaults to 30.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of data you want to retrieve. Defaults to "segmentation".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SegmentationForVisitorsTodayViaSearch Choreo.
 */
@implementation TMBClicky_SegmentationForVisitorsTodayViaSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves segmentation data for visitors today who arrived via a search.
 */
@implementation TMBClicky_SegmentationForVisitorsTodayViaSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_SegmentationForVisitorsTodayViaSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/SegmentationForVisitorsTodayViaSearch"] autorelease];
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
		TMBClicky_SegmentationForVisitorsTodayViaSearch_ResultSet *results = [[[TMBClicky_SegmentationForVisitorsTodayViaSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SegmentationForVisitorsTodayViaSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_SegmentationForVisitorsTodayViaSearch_Inputs*)newInputSet {
		return [[[TMBClicky_SegmentationForVisitorsTodayViaSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HourlyVisitorsLast7Days Choreo.
 */
@implementation TMBClicky_HourlyVisitorsLast7Days_Inputs

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of data you want to retrieve. Defaults to "visitors,actions".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HourlyVisitorsLast7Days Choreo.
 */
@implementation TMBClicky_HourlyVisitorsLast7Days_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves hourly visitor and action tallies for the last 7 days.
 */
@implementation TMBClicky_HourlyVisitorsLast7Days

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_HourlyVisitorsLast7Days Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/HourlyVisitorsLast7Days"] autorelease];
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
		TMBClicky_HourlyVisitorsLast7Days_ResultSet *results = [[[TMBClicky_HourlyVisitorsLast7Days_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HourlyVisitorsLast7Days Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_HourlyVisitorsLast7Days_Inputs*)newInputSet {
		return [[[TMBClicky_HourlyVisitorsLast7Days_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AdvancedFilter Choreo.
 */
@implementation TMBClicky_AdvancedFilter_Inputs

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The date or date range you want to access. Use YYYY-MM-DD format for date and YYYY-MM-DD,YYYY-MM-DD for a range. See docs for more options for this input. Defaults to 'today'.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the FilterName input for this Choreo.
	*(required, string) The name of the data you want to filter by (i.e. ip_address). See docs for a complete list of supported filters.
	 */
	-(void)setFilterName:(NSString*)FilterName {
		[super setInput:@"FilterName" toValue:FilterName];
	}

	/*!
	 * Set the value of the FilterValue input for this Choreo.
	*(required, string) The value of the filter you want to apply to the request. For example, if you're FilterName is "ip_address", you could use "65.0.0.0,85.0.0.0" in the FilterValue.
	 */
	-(void)setFilterValue:(NSString*)FilterValue {
		[super setInput:@"FilterValue" toValue:FilterValue];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The maximum number of results that will be returned. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of data you want to retrieve. Note that not all types are available for this Choreo. Use types: vistors-list, segmentation, or actions-list.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdvancedFilter Choreo.
 */
@implementation TMBClicky_AdvancedFilter_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to retrieve analytics, using more advanced filter options.
 */
@implementation TMBClicky_AdvancedFilter

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_AdvancedFilter Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/AdvancedFilter"] autorelease];
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
		TMBClicky_AdvancedFilter_ResultSet *results = [[[TMBClicky_AdvancedFilter_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AdvancedFilter Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_AdvancedFilter_Inputs*)newInputSet {
		return [[[TMBClicky_AdvancedFilter_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VisitorsToday Choreo.
 */
@implementation TMBClicky_VisitorsToday_Inputs

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of data you want to retrieve. Defaults to "visitors,actions,actions-average,time-average,bounce-rate".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VisitorsToday Choreo.
 */
@implementation TMBClicky_VisitorsToday_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves today's visitors, actions, average actions, average time, and bounce rate.
 */
@implementation TMBClicky_VisitorsToday

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_VisitorsToday Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/VisitorsToday"] autorelease];
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
		TMBClicky_VisitorsToday_ResultSet *results = [[[TMBClicky_VisitorsToday_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VisitorsToday Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_VisitorsToday_Inputs*)newInputSet {
		return [[[TMBClicky_VisitorsToday_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Last30VisitorsTodayViaSearch Choreo.
 */
@implementation TMBClicky_Last30VisitorsTodayViaSearch_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records you want to retrieve. Defaults to 30.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of data you want to retrieve. Defaults to "visitors-list".
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Last30VisitorsTodayViaSearch Choreo.
 */
@implementation TMBClicky_Last30VisitorsTodayViaSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the last 30 visitors today who arrived via a search.
 */
@implementation TMBClicky_Last30VisitorsTodayViaSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_Last30VisitorsTodayViaSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/Last30VisitorsTodayViaSearch"] autorelease];
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
		TMBClicky_Last30VisitorsTodayViaSearch_ResultSet *results = [[[TMBClicky_Last30VisitorsTodayViaSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Last30VisitorsTodayViaSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_Last30VisitorsTodayViaSearch_Inputs*)newInputSet {
		return [[[TMBClicky_Last30VisitorsTodayViaSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterByKeyword Choreo.
 */
@implementation TMBClicky_FilterByKeyword_Inputs

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(required, string) You can use this parameter to filter down to only the results you want.
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The maximum number of results that will be returned. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterByKeyword Choreo.
 */
@implementation TMBClicky_FilterByKeyword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves analytics, filtering down to only the results you specify in a keyword filter.
 */
@implementation TMBClicky_FilterByKeyword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_FilterByKeyword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/FilterByKeyword"] autorelease];
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
		TMBClicky_FilterByKeyword_ResultSet *results = [[[TMBClicky_FilterByKeyword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterByKeyword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_FilterByKeyword_Inputs*)newInputSet {
		return [[[TMBClicky_FilterByKeyword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterByItems Choreo.
 */
@implementation TMBClicky_FilterByItems_Inputs

	/*!
	 * Set the value of the Item input for this Choreo.
	*(required, string) Use this input to get the stats for just a single item for the type you are requesting (i.e. type=links-domains and item=google.com).
	 */
	-(void)setItem:(NSString*)Item {
		[super setInput:@"Item" toValue:Item];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The maximum number of results that will be returned. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterByItems Choreo.
 */
@implementation TMBClicky_FilterByItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the stats for just a single item for the type you are requesting.
 */
@implementation TMBClicky_FilterByItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_FilterByItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/FilterByItems"] autorelease];
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
		TMBClicky_FilterByItems_ResultSet *results = [[[TMBClicky_FilterByItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterByItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_FilterByItems_Inputs*)newInputSet {
		return [[[TMBClicky_FilterByItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAnalyticsByType Choreo.
 */
@implementation TMBClicky_GetAnalyticsByType_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The maximum number of results that will be returned. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Output input for this Choreo.
	*(optional, string) What format you want the returned data to be in. Accepted values: xml, php, json, csv. Defaults to 'xml'.
	 */
	-(void)setOutput:(NSString*)Output {
		[super setInput:@"Output" toValue:Output];
	}

	/*!
	 * Set the value of the SiteID input for this Choreo.
	*(required, integer) Your request must include the site's ID that you want to access data from. Available from your site preferences page.
	 */
	-(void)setSiteID:(NSString*)SiteID {
		[super setInput:@"SiteID" toValue:SiteID];
	}

	/*!
	 * Set the value of the SiteKey input for this Choreo.
	*(required, string) The unique key assigned to you when you first register with Clicky. Available from your site preferences page.
	 */
	-(void)setSiteKey:(NSString*)SiteKey {
		[super setInput:@"SiteKey" toValue:SiteKey];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of data you want to retrieve. Can be a comma-separated list of types (i.e. visitors,countries,searches).
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAnalyticsByType Choreo.
 */
@implementation TMBClicky_GetAnalyticsByType_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Clicky formatted as specified in the Output parameter. Default is XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specified type of anlaytics for your website.
 */
@implementation TMBClicky_GetAnalyticsByType

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBClicky_GetAnalyticsByType Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Clicky/GetAnalyticsByType"] autorelease];
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
		TMBClicky_GetAnalyticsByType_ResultSet *results = [[[TMBClicky_GetAnalyticsByType_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAnalyticsByType Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBClicky_GetAnalyticsByType_Inputs*)newInputSet {
		return [[[TMBClicky_GetAnalyticsByType_Inputs alloc] init] autorelease];
	}
@end
	