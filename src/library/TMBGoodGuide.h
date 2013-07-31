/*!
 * @header Temboo iOS SDK GoodGuide classes
 *
 * Execute Choreographies from the Temboo GoodGuide bundle.
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

/*! group TMBGoodGuide.QueryByUPC Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the QueryByUPC Choreo.
 */
@interface TMBGoodGuide_QueryByUPC_Inputs : TMBChoreographyInputSet
	-(void)setAPIFormat:(NSString*)APIFormat;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setUPC:(NSString*)UPC;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the QueryByUPC Choreo.
 */
@interface TMBGoodGuide_QueryByUPC_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about products based on the product's UPC code.
 */
@interface TMBGoodGuide_QueryByUPC : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoodGuide_QueryByUPC_Inputs*)newInputSet;
@end

/*! group TMBGoodGuide_QueryByUPC Choreo */


/*! group TMBGoodGuide.QueryByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the QueryByID Choreo.
 */
@interface TMBGoodGuide_QueryByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIFormat:(NSString*)APIFormat;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the QueryByID Choreo.
 */
@interface TMBGoodGuide_QueryByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about products based on a GoodGuide product ID.
 */
@interface TMBGoodGuide_QueryByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoodGuide_QueryByID_Inputs*)newInputSet;
@end

/*! group TMBGoodGuide_QueryByID Choreo */


/*! group TMBGoodGuide.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBGoodGuide_Query_Inputs : TMBChoreographyInputSet
	-(void)setAPIFormat:(NSString*)APIFormat;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCount:(NSString*)Count;
	-(void)setQuery:(NSString*)Query;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBGoodGuide_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Queries the GoodGuide API by keyword and retrieves information on GoodGuide products.
 */
@interface TMBGoodGuide_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGoodGuide_Query_Inputs*)newInputSet;
@end

/*! group TMBGoodGuide_Query Choreo */
