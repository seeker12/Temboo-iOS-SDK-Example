/*!
 * @header Temboo Resource
 *
 * Parent class for all RESTful resources associated with a TMBTembooSession.
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
@class TMBTembooSession;

@interface TMBTembooResource : NSObject

@property (readonly, nonatomic, retain) TMBTembooSession* session;
@property (readonly, nonatomic, retain) TMBTembooUri* uri;

-(NSString*)description;

@end
