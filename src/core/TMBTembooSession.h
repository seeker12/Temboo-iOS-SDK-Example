/*!
 * @header Temboo Session management and request processing
 *
 * An authenticated session for executing choreogrphies
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
 * @author     Temboo, Inc.
 * @copyright  2013 Temboo, Inc.
 * @license    http://www.apache.org/licenses/LICENSE-2.0 Apache License 2.0
 * @version    1.7
 */
#import <Foundation/Foundation.h>

@class TMBTembooUri;
@protocol TMBChoreographyDelegate;

@interface TMBTembooSession : NSObject
-(id)initWithAccount:(NSString*)acct appKeyName:(NSString*)key andAppKeyValue:(NSString*)val;
-(void)getContentForUri:(TMBTembooUri*)uri delegate:(id)d;
-(void)getContentForUri:(TMBTembooUri*)uri withParameters:(NSMutableDictionary*)params delegate:(id)d;
-(void)postContentToUri:(TMBTembooUri*)uri delegate:(id)d;
-(void)postContentToUri:(TMBTembooUri*)uri withParameters:(NSMutableDictionary*)params andInputs:(NSDictionary*)inputs delegate:(id)d;
@end
