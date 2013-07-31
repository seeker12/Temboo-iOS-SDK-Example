/*!
 * @header Temboo iOS SDK DuckDuckGo classes
 *
 * Execute Choreographies from the Temboo DuckDuckGo bundle.
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

/*! group TMBDuckDuckGo.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBDuckDuckGo_Query_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setNoHTML:(NSString*)NoHTML;
	-(void)setNoRedirect:(NSString*)NoRedirect;
	-(void)setPrettyPrint:(NSString*)PrettyPrint;
	-(void)setQuery:(NSString*)Query;
	-(void)setSkipDisambiguation:(NSString*)SkipDisambiguation;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBDuckDuckGo_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Access DuckDuckGo web search functionality.  
 */
@interface TMBDuckDuckGo_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDuckDuckGo_Query_Inputs*)newInputSet;
@end

/*! group TMBDuckDuckGo_Query Choreo */
