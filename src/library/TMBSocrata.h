/*!
 * @header Temboo iOS SDK Socrata classes
 *
 * Execute Choreographies from the Temboo Socrata bundle.
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

/*! group TMBSocrata.SODA.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBSocrata_SODA_Query_Inputs : TMBChoreographyInputSet
	-(void)setAppToken:(NSString*)AppToken;
	-(void)setDomain:(NSString*)Domain;
	-(void)setGroup:(NSString*)Group;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setOrder:(NSString*)Order;
	-(void)setResource:(NSString*)Resource;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSearch:(NSString*)Search;
	-(void)setSelect:(NSString*)Select;
	-(void)setWhere:(NSString*)Where;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBSocrata_SODA_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getFields;
	-(NSString*)getResponse;
	-(NSString*)getTypes;	
@end

/*!
 * Performs queries against data on the Socrata Platform.
 */
@interface TMBSocrata_SODA_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBSocrata_SODA_Query_Inputs*)newInputSet;
@end

/*! group TMBSocrata.SODA_Query Choreo */
