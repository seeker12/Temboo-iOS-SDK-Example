/*!
 * @header Temboo iOS SDK Instapaper classes
 *
 * Execute Choreographies from the Temboo Instapaper bundle.
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

/*! group TMBInstapaper.Authenticate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Authenticate Choreo.
 */
@interface TMBInstapaper_Authenticate_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Authenticate Choreo.
 */
@interface TMBInstapaper_Authenticate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Validate an Instapaper account.
 */
@interface TMBInstapaper_Authenticate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstapaper_Authenticate_Inputs*)newInputSet;
@end

/*! group TMBInstapaper_Authenticate Choreo */


/*! group TMBInstapaper.AddURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddURL Choreo.
 */
@interface TMBInstapaper_AddURL_Inputs : TMBChoreographyInputSet
	-(void)setPassword:(NSString*)Password;
	-(void)setSelection:(NSString*)Selection;
	-(void)setTitle:(NSString*)Title;
	-(void)setURL:(NSString*)URL;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddURL Choreo.
 */
@interface TMBInstapaper_AddURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add a document to an Instapaper account.
 */
@interface TMBInstapaper_AddURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstapaper_AddURL_Inputs*)newInputSet;
@end

/*! group TMBInstapaper_AddURL Choreo */
