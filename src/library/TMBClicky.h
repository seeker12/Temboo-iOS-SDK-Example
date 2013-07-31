/*!
 * @header Temboo iOS SDK Clicky classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBClicky.GetAnalyticsByDate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAnalyticsByDate Choreo.
 */
@interface TMBClicky_GetAnalyticsByDate_Inputs : TMBChoreographyInputSet
	-(void)setDate:(NSString*)Date;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAnalyticsByDate Choreo.
 */
@interface TMBClicky_GetAnalyticsByDate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves anlaytics for your website for a particular date or date range.
 */
@interface TMBClicky_GetAnalyticsByDate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_GetAnalyticsByDate_Inputs*)newInputSet;
@end

/*! group TMBClicky_GetAnalyticsByDate Choreo */


/*! group TMBClicky.TopStatsLastWeek Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopStatsLastWeek Choreo.
 */
@interface TMBClicky_TopStatsLastWeek_Inputs : TMBChoreographyInputSet
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopStatsLastWeek Choreo.
 */
@interface TMBClicky_TopStatsLastWeek_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves last weeks's top pages, links, and searches.
 */
@interface TMBClicky_TopStatsLastWeek : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_TopStatsLastWeek_Inputs*)newInputSet;
@end

/*! group TMBClicky_TopStatsLastWeek Choreo */


/*! group TMBClicky.TopStatsLastWeekByDay Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopStatsLastWeekByDay Choreo.
 */
@interface TMBClicky_TopStatsLastWeekByDay_Inputs : TMBChoreographyInputSet
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopStatsLastWeekByDay Choreo.
 */
@interface TMBClicky_TopStatsLastWeekByDay_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves last weeks's top pages, links, and searches, by day.
 */
@interface TMBClicky_TopStatsLastWeekByDay : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_TopStatsLastWeekByDay_Inputs*)newInputSet;
@end

/*! group TMBClicky_TopStatsLastWeekByDay Choreo */


/*! group TMBClicky.SegmentationForVisitorsTodayViaSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SegmentationForVisitorsTodayViaSearch Choreo.
 */
@interface TMBClicky_SegmentationForVisitorsTodayViaSearch_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SegmentationForVisitorsTodayViaSearch Choreo.
 */
@interface TMBClicky_SegmentationForVisitorsTodayViaSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves segmentation data for visitors today who arrived via a search.
 */
@interface TMBClicky_SegmentationForVisitorsTodayViaSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_SegmentationForVisitorsTodayViaSearch_Inputs*)newInputSet;
@end

/*! group TMBClicky_SegmentationForVisitorsTodayViaSearch Choreo */


/*! group TMBClicky.HourlyVisitorsLast7Days Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HourlyVisitorsLast7Days Choreo.
 */
@interface TMBClicky_HourlyVisitorsLast7Days_Inputs : TMBChoreographyInputSet
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HourlyVisitorsLast7Days Choreo.
 */
@interface TMBClicky_HourlyVisitorsLast7Days_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves hourly visitor and action tallies for the last 7 days.
 */
@interface TMBClicky_HourlyVisitorsLast7Days : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_HourlyVisitorsLast7Days_Inputs*)newInputSet;
@end

/*! group TMBClicky_HourlyVisitorsLast7Days Choreo */


/*! group TMBClicky.AdvancedFilter Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AdvancedFilter Choreo.
 */
@interface TMBClicky_AdvancedFilter_Inputs : TMBChoreographyInputSet
	-(void)setDate:(NSString*)Date;
	-(void)setFilterName:(NSString*)FilterName;
	-(void)setFilterValue:(NSString*)FilterValue;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdvancedFilter Choreo.
 */
@interface TMBClicky_AdvancedFilter_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to retrieve analytics, using more advanced filter options.
 */
@interface TMBClicky_AdvancedFilter : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_AdvancedFilter_Inputs*)newInputSet;
@end

/*! group TMBClicky_AdvancedFilter Choreo */


/*! group TMBClicky.VisitorsToday Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VisitorsToday Choreo.
 */
@interface TMBClicky_VisitorsToday_Inputs : TMBChoreographyInputSet
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VisitorsToday Choreo.
 */
@interface TMBClicky_VisitorsToday_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves today's visitors, actions, average actions, average time, and bounce rate.
 */
@interface TMBClicky_VisitorsToday : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_VisitorsToday_Inputs*)newInputSet;
@end

/*! group TMBClicky_VisitorsToday Choreo */


/*! group TMBClicky.Last30VisitorsTodayViaSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Last30VisitorsTodayViaSearch Choreo.
 */
@interface TMBClicky_Last30VisitorsTodayViaSearch_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Last30VisitorsTodayViaSearch Choreo.
 */
@interface TMBClicky_Last30VisitorsTodayViaSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the last 30 visitors today who arrived via a search.
 */
@interface TMBClicky_Last30VisitorsTodayViaSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_Last30VisitorsTodayViaSearch_Inputs*)newInputSet;
@end

/*! group TMBClicky_Last30VisitorsTodayViaSearch Choreo */


/*! group TMBClicky.FilterByKeyword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterByKeyword Choreo.
 */
@interface TMBClicky_FilterByKeyword_Inputs : TMBChoreographyInputSet
	-(void)setFilter:(NSString*)Filter;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterByKeyword Choreo.
 */
@interface TMBClicky_FilterByKeyword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves analytics, filtering down to only the results you specify in a keyword filter.
 */
@interface TMBClicky_FilterByKeyword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_FilterByKeyword_Inputs*)newInputSet;
@end

/*! group TMBClicky_FilterByKeyword Choreo */


/*! group TMBClicky.FilterByItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterByItems Choreo.
 */
@interface TMBClicky_FilterByItems_Inputs : TMBChoreographyInputSet
	-(void)setItem:(NSString*)Item;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterByItems Choreo.
 */
@interface TMBClicky_FilterByItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the stats for just a single item for the type you are requesting.
 */
@interface TMBClicky_FilterByItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_FilterByItems_Inputs*)newInputSet;
@end

/*! group TMBClicky_FilterByItems Choreo */


/*! group TMBClicky.GetAnalyticsByType Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAnalyticsByType Choreo.
 */
@interface TMBClicky_GetAnalyticsByType_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setOutput:(NSString*)Output;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setSiteKey:(NSString*)SiteKey;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAnalyticsByType Choreo.
 */
@interface TMBClicky_GetAnalyticsByType_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specified type of anlaytics for your website.
 */
@interface TMBClicky_GetAnalyticsByType : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBClicky_GetAnalyticsByType_Inputs*)newInputSet;
@end

/*! group TMBClicky_GetAnalyticsByType Choreo */
